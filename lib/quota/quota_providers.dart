import 'dart:async';
import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'quota_stake_list_notifier.dart';

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
    ref.invalidate(quotaRemoteProvider(address));
  }
}

final quotaRefreshProvider =
    FutureProvider.autoDispose.family<void, Address>((ref, address) async {
  await Future.delayed(const Duration(seconds: 2));
  ref.invalidate(quotaRemoteProvider(address));
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
      Future.microtask(() => cache.state = quota);
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
  final max = (Decimal.parse(quota.maxQuota) / ut)
      .toDecimal(scaleOnInfinitePrecision: 2);
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

  final notifier = QuotaStakeListNotifier(
    address: address.viteAddress,
    client: client,
    log: log,
  );

  ref.onDispose(() {
    notifier.disposed = true;
  });

  return notifier;
});
