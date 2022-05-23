import 'dart:async';
import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'quota_types.dart';

// This is temporary until fix lands in vite_dart
extension QuotaFixExtension on RpcContract {
  Future<StakeListInfo> getQuotaStakeList(ViteAddress address,
      [int pageIndex = 0, int pageSize = 10]) {
    typeMapping.addAll({StakeListInfo: StakeListInfo.fromJson});
    return api.getStakeList(address, pageIndex, pageSize);
  }
}

final _quotaTimerProvider =
    StateProvider.autoDispose.family<Timer?, Address>((ref, address) {
  return null;
});

final quotaCacheProvider =
    StateProvider.family<RpcQuotaInfo, Address>((ref, address) {
  return RpcQuotaInfo(
    currentQuota: '0',
    maxQuota: '0',
    stakeAmount: '0',
  );
});

void refreshQuota(Ref ref, Address address) {
  final account = ref.read(selectedAccountProvider);
  if (account.address == address) {
    ref.refresh(quotaRemoteProvider(address));
  }
}

final quotaRefreshProvider =
    FutureProvider.autoDispose.family<void, Address>((ref, address) async {
  await Future.delayed(const Duration(seconds: 2));
  ref.refresh(quotaRemoteProvider(address));
  final notifier = ref.read(quotaStakeListProvider.notifier);
  notifier.refresh();
});

final quotaRemoteProvider = FutureProvider.autoDispose
    .family<RpcQuotaInfo, Address>((ref, address) async {
  // update on new account block
  ref.watch(newAccountBlockProvider(address));

  final client = ref.watch(viteClientProvider);
  final timer = ref.watch(_quotaTimerProvider(address).notifier);

  final quota = await client.getQuotaForAddress(address);

  final current = int.tryParse(quota.currentQuota);
  final maxQuota = int.tryParse(quota.maxQuota);

  if (current != null &&
      maxQuota != null &&
      current < maxQuota &&
      timer.state == null) {
    final nextRefresh = max(75 * 21000 ~/ maxQuota, 10);

    final log = ref.read(loggerProvider);
    log.d('Next quota refresh in $nextRefresh seconds');

    timer.state = Timer(
      Duration(seconds: nextRefresh),
      () => refreshQuota(ref, address),
    );
  }

  ref.onDispose(() {
    timer.update((state) {
      state?.cancel();
      return null;
    });
  });

  return quota;
});

final quotaProvider =
    Provider.autoDispose.family<RpcQuotaInfo, Address>((ref, address) {
  final cache = ref.watch(quotaCacheProvider(address).notifier);
  final remote = ref.watch(quotaRemoteProvider(address));

  return remote.maybeWhen(
    data: (quota) {
      cache.state = quota;
      return quota;
    },
    orElse: () => cache.state,
  );
});

final currentQuotaLabelProvider = Provider.autoDispose((ref) {
  final address = ref.watch(selectedAddressProvider);
  final quota = ref.watch(quotaProvider(address));

  final ut = Decimal.fromInt(21000);
  final current = (Decimal.parse(quota.currentQuota) / ut)
      .toDecimal(scaleOnInfinitePrecision: 2);
  final max = (Decimal.parse(quota.maxQuota) / ut).toDecimal();
  if (max == Decimal.zero) {
    return 'PoW only';
  }
  final digits = current.isInteger ? 0 : 2;
  final currentLabel = current.toStringAsFixed(digits);
  return '$currentLabel / ${max} UT';
});

final quotaStakeListProvider = ChangeNotifierProvider.autoDispose((ref) {
  final address = ref.watch(selectedAddressProvider);
  final client = ref.watch(rpcClientProvider);
  final log = ref.watch(loggerProvider);

  return QuotaStakeListNotifier(
    address: address.viteAddress,
    client: client,
    log: log,
  );
});

class QuotaStakeListNotifier extends ChangeNotifier {
  final ViteAddress address;
  final RpcClient client;
  final Logger log;
  final stakeList = <RpcStakeInfo>[];

  bool _loading = false;
  bool get loading => _loading;
  int? totalStakeCount;
  BigInt? totalStakeAmount;

  bool get hasMore =>
      totalStakeCount == null || totalStakeCount! > stakeList.length;

  QuotaStakeListNotifier({
    required this.address,
    required this.client,
    required this.log,
  }) {
    loadMore();
  }

  Future<void> loadMore([int count = 10]) async {
    if (_loading) {
      return;
    }
    _loading = true;

    try {
      final pageIndex = stakeList.length ~/ count;
      final stakeListInfo =
          await client.getQuotaStakeList(address, pageIndex, count);
      totalStakeCount = stakeListInfo.totalStakeCount;
      totalStakeAmount = stakeListInfo.totalStakeAmount;
      stakeList.addAll(stakeListInfo.stakeList);
    } catch (e, st) {
      log.e('Failed to fetch stake records', e, st);
    }

    _loading = false;

    notifyListeners();
  }

  Future<void> refresh([int count = 10]) async {
    if (_loading) {
      return;
    }
    _loading = true;

    try {
      final stakeListInfo = await client.getQuotaStakeList(address, 0, count);
      totalStakeCount = stakeListInfo.totalStakeCount;
      totalStakeAmount = stakeListInfo.totalStakeAmount;
      stakeList.clear();
      stakeList.addAll(stakeListInfo.stakeList);
    } catch (e, st) {
      log.e('Failed to refresh stake records', e, st);
    }

    _loading = false;

    notifyListeners();
  }

  void removeRecord(RpcStakeInfo record) {
    stakeList.removeWhere((e) => e.id == record.id);
    totalStakeCount = (totalStakeCount ?? 1) - 1;
    final amount = BigInt.parse(record.stakeAmount);
    totalStakeAmount = (totalStakeAmount ?? amount) - amount;

    notifyListeners();
  }
}
