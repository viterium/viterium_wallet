import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/viva_staking_v4.dart';
import '../settings/available_currency.dart';
import '../tokens/token_info_provider.dart';
import 'viva_staking_service.dart';
import 'viva_staking_types.dart';

final _vivaPoolsCacheProvider = StateProvider<IList<VivaPoolInfoAll>>((ref) {
  return IList();
});

final _vivaPoolsRemoteProvider =
    FutureProvider.autoDispose<IList<VivaPoolInfoAll>>((ref) async {
  // FIXME
  ref.watch(vivaEventProvider);

  final service = ref.watch(vivaStakingServiceV4Provider);

  final allPoolInfo = await service.getAllPoolInfo();
  final allExtra = await service.getAllExtraPoolInfo();

  final poolInfoAllList = <VivaPoolInfoAll>[];
  for (int i = 0; i < allPoolInfo.length; ++i) {
    final poolInfo = allPoolInfo[i];

    final stakingTokenInfo =
        await ref.read(tokenInfoProvider(poolInfo.stakingTokenId).future);
    final rewardsTokenInfo =
        await ref.read(tokenInfoProvider(poolInfo.rewardTokenId).future);

    final poolInfoAll = VivaPoolInfoAll(
      poolInfo: allPoolInfo[i],
      extra: allExtra[i],
      stakingTokenInfo: stakingTokenInfo,
      rewardTokenInfo: rewardsTokenInfo,
    );

    poolInfoAllList.add(poolInfoAll);
  }

  return poolInfoAllList.lock;
});

final vivaPoolsProvider = Provider.autoDispose<IList<VivaPoolInfoAll>>((ref) {
  final notifier = ref.watch(_vivaPoolsCacheProvider.notifier);
  final remote = ref.watch(_vivaPoolsRemoteProvider);

  remote.whenData((value) => notifier.state = value);

  return remote.value ?? notifier.state;
});

final vivaPoolsFilterProvider = StateProvider((ref) => PoolFilter());

final filteredVivaPoolsProvider =
    FutureProvider.autoDispose<IList<VivaPoolInfoAll>>((ref) async {
  final address = ref.watch(selectedAddressProvider);
  final service = ref.watch(vivaStakingServiceV4Provider);
  final vivaPools = ref.watch(vivaPoolsProvider);
  final filter = ref.watch(vivaPoolsFilterProvider);
  final height = ref.read(lastKnownSnapshotHeightProvider);

  IList<VivaPoolInfoAll> pools;
  if (filter.ended) {
    pools = vivaPools.removeWhere((pool) => pool.endBlock > height);
  } else {
    pools = vivaPools.removeWhere((pool) => pool.endBlock <= height);
  }

  if (!filter.stakedOnly) {
    return pools;
  }

  final filtered = await Future.wait(
    pools.map((pool) async {
      final cache = ref.read(_vivaUserInfoCacheProvider);
      var userInfo = cache[pool.poolId];
      if (userInfo == null) {
        final remoteUserInfo = await service.getUserInfo(
          poolId: pool.poolId,
          address: address,
        );
        ref.read(_vivaUserInfoCacheProvider.notifier).update(
              (state) => state.add(pool.poolId, remoteUserInfo),
            );
        userInfo = remoteUserInfo;
      }
      if (userInfo.stakingBalance == BigInt.zero) {
        return null;
      }
      return pool;
    }),
  );
  return filtered.whereType<VivaPoolInfoAll>().toIList();
});

final vivaSelectedPoolIdProvider =
    StateProvider<BigInt>((ref) => throw UnimplementedError());

final vivaPoolInfoForPoolIdProvider =
    Provider.autoDispose.family<VivaPoolInfoAll?, BigInt>((ref, poolId) {
  final pools = ref.watch(vivaPoolsProvider);

  return pools[poolId.toInt()];
});

// VivaUserInfo providers

// Only emits events that change userInfo for selected address and given poolId
final _vivaUserInfoChangedEventProvider =
    StreamProvider.autoDispose.family<VivaEvent, BigInt>((ref, poolId) async* {
  final address = ref.watch(selectedAddressProvider);
  final message = ref.watch(vivaEventProvider);
  final userEvent = message.mapOrNull(data: (data) {
    final service = ref.read(vivaStakingServiceV4Provider);

    final event = service.decodeEvent(data.value.vmLog);
    return event.mapOrNull(
      withdraw: (event) => event.poolId == poolId &&
              event.address == address &&
              event.amount > BigInt.zero
          ? event
          : null,
      deposit: (event) => event.poolId == poolId &&
              event.address == address &&
              event.amount > BigInt.zero
          ? event
          : null,
      emergencyWithdraw: (event) => event.poolId == poolId &&
              event.address == address &&
              event.amount > BigInt.zero
          ? event
          : null,
    );
  });
  if (userEvent != null) {
    yield userEvent;
  }
});

final _vivaUserInfoCacheProvider =
    StateProvider<IMap<BigInt, VivaUserInfo>>((ref) {
  return IMap();
});

final _vivaUserInfoRemoteProvider = FutureProvider.autoDispose
    .family<VivaUserInfo, BigInt>((ref, poolId) async {
  final address = ref.watch(selectedAddressProvider);
  final service = ref.watch(vivaStakingServiceV4Provider);

  // refresh on new event
  ref.watch(_vivaUserInfoChangedEventProvider(poolId));

  final userInfo = await service.getUserInfo(
    poolId: poolId,
    address: address,
  );

  return userInfo;
});

final vivaUserInfoProvider =
    Provider.autoDispose.family<VivaUserInfo?, BigInt>((ref, poolId) {
  final cache = ref.watch(_vivaUserInfoCacheProvider);
  final remote = ref.watch(_vivaUserInfoRemoteProvider(poolId));

  remote.whenData((value) {
    Future.delayed(Duration.zero, () {
      final notifier = ref.read(_vivaUserInfoCacheProvider.notifier);
      notifier.state = cache.add(poolId, value);
    });
  });

  return remote.asData?.value ?? cache[poolId];
});

// VivaEvent

final vivaEventProvider = StreamProvider<VmLogMessage>((ref) async* {
  final client = ref.watch(wsViteClientProvider);
  final controller = StreamController<VmLogMessage>();

  void callback(CallbackParam response) {
    if (controller.isClosed) {
      return;
    }
    final vmlogs = response.typedMessages(VmLogMessage.fromJson);
    for (final vmlog in vmlogs) {
      controller.sink.add(vmlog);
    }
  }

  final params = VmLogFilter(addressHeightRange: {
    vivaStakingV4Contract.contractAddress: HeightRange.latest,
  });
  final subscriptionId = await client.onNewVmLog(params, callback);

  ref.onDispose(() {
    try {
      if (!controller.isClosed) {
        controller.close();
      }
      if (!client.isClosed) {
        client.unsubscribe(subscriptionId);
      }
    } catch (e, st) {
      final log = ref.read(loggerProvider);
      log.e('Dispose viva event provider', e, st);
    }
  });

  yield* controller.stream;
});

final vivaStakingServiceProvider =
    Provider.family<VivaStakingService, Contract>((ref, contract) {
  final client = ref.watch(viteClientProvider);

  return VivaStakingService(
    client: client,
    contract: contract,
  );
});

final vivaStakingServiceV4Provider = Provider((ref) {
  final service = ref.watch(vivaStakingServiceProvider(vivaStakingV4Contract));
  return service;
});

final vivaAprForPoolInfoProvider =
    FutureProvider.autoDispose.family<String, VivaPoolInfoAll>((ref, poolInfo) {
  final height = ref.read(lastKnownSnapshotHeightProvider);
  if (poolInfo.endBlock <= height ||
      poolInfo.latestRewardBlock == poolInfo.endBlock) {
    return '';
  }

  final rewardTokenPrice =
      ref.watch(aprExchangeRateForTokenIdProvider(poolInfo.rewardTokenId));
  final stakingTokenPrice =
      ref.watch(aprExchangeRateForTokenIdProvider(poolInfo.stakingTokenId));

  final totalTime = poolInfo.endBlock - poolInfo.startBlock;
  final secondsInYear = BigInt.from(Duration(days: 365).inSeconds);

  final rewardAmount = Amount(
    raw: poolInfo.totalRewardBalance,
    tokenInfo: poolInfo.rewardTokenInfo,
  );
  final stakingAmount = Amount(
    raw: poolInfo.totalStakingBalance,
    tokenInfo: poolInfo.stakingTokenInfo,
  );

  final rewardFiatRate = rewardTokenPrice.fiatRate(AvailableCurrencies.USD);
  final stakingFiatRate = stakingTokenPrice.fiatRate(AvailableCurrencies.USD);

  final usdRewardAmount = rewardFiatRate * rewardAmount.value;
  final usdStakingAmount = stakingFiatRate * stakingAmount.value;

  final aprValue = (usdRewardAmount *
          Decimal.fromBigInt(secondsInYear) *
          Decimal.fromInt(100) /
          (usdStakingAmount * Decimal.fromBigInt(totalTime)))
      .toDecimal(scaleOnInfinitePrecision: 2);

  if (aprValue == Decimal.zero) {
    return '';
  }

  return '${aprValue.toStringAsFixed(2)}%';
});
