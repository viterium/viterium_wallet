import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/vitc_stake_v2.dart';
import '../core/generic_state_notifier.dart';
import '../settings/available_currency.dart';
import '../tokens/token_info_provider.dart';
import '../viva_staking/viva_staking_types.dart';
import 'vitc_stake_service.dart';
import 'vitc_stake_types.dart';

final _vitcPoolsCacheProvider = StateProvider<IList<VitcPoolInfoAll>>((ref) {
  return IList();
});

final _vitcPoolsRemoteProvider =
    FutureProvider.autoDispose<IList<VitcPoolInfoAll>>((ref) async {
  // update on new events (except Claim)
  ref.watch(vitcStakeLastEventProvider);

  final service = ref.watch(vitcStakeServiceV2Provider);

  final allPoolInfo = await service.getAllPoolInfo();

  final poolInfoAllList = <VitcPoolInfoAll>[];
  for (int i = 0; i < allPoolInfo.length; ++i) {
    final poolInfo = allPoolInfo[i];

    final stakingTokenInfo =
        await ref.read(tokenInfoProvider(poolInfo.stakingTokenId).future);
    final rewardsTokenInfo =
        await ref.read(tokenInfoProvider(poolInfo.rewardTokenId).future);

    final poolInfoAll = VitcPoolInfoAll(
      poolInfo: allPoolInfo[i],
      stakingTokenInfo: stakingTokenInfo,
      rewardTokenInfo: rewardsTokenInfo,
    );

    poolInfoAllList.add(poolInfoAll);
  }

  return poolInfoAllList.lock;
});

final vitcPoolsProvider = Provider.autoDispose<IList<VitcPoolInfoAll>>((ref) {
  final notifier = ref.watch(_vitcPoolsCacheProvider.notifier);
  final remote = ref.watch(_vitcPoolsRemoteProvider);

  remote.whenData((value) => notifier.state = value);

  return remote.asData?.value ?? notifier.state;
});

final vitcPoolsFilterProvider = StateProvider((ref) => PoolFilter());

final filteredVitcPoolsProvider =
    FutureProvider.autoDispose<IList<VitcPoolInfoAll>>((ref) async {
  final address = ref.watch(selectedAddressProvider);
  final service = ref.watch(vitcStakeServiceV2Provider);
  final vitcPools = ref.watch(vitcPoolsProvider);
  final filter = ref.watch(vitcPoolsFilterProvider);
  final height = ref.read(lastKnownSnapshotHeightProvider);

  IList<VitcPoolInfoAll> pools;
  if (filter.ended) {
    pools = vitcPools.removeWhere((pool) => pool.endBlock > height);
  } else {
    pools = vitcPools.removeWhere((pool) => pool.endBlock <= height);
  }

  if (!filter.stakedOnly) {
    return pools;
  }

  final filtered = await Future.wait(
    pools.map((pool) async {
      final cache = ref.read(_vitcUserInfoCacheProvider);
      var userInfo = cache[pool.poolId];
      if (userInfo == null) {
        final remoteUserInfo = await service.getUserInfo(
          poolId: pool.poolId,
          address: address,
        );
        ref.read(_vitcUserInfoCacheProvider.notifier).update(
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
  return filtered.whereType<VitcPoolInfoAll>().toIList();
});

final vitcSelectedPoolIdProvider =
    StateProvider<BigInt>((ref) => throw UnimplementedError());

final vitcPoolInfoForPoolIdProvider =
    Provider.autoDispose.family<VitcPoolInfoAll?, BigInt>((ref, poolId) {
  final pools = ref.watch(vitcPoolsProvider);

  return pools[poolId.toInt()];
});

// VitcStakeUserInfo providers

// Only emits events that change userInfo for selected address and given poolId
final _vivaUserInfoChangedEventProvider = StreamProvider.autoDispose
    .family<VitcStakeEvent, BigInt>((ref, poolId) async* {
  final address = ref.watch(selectedAddressProvider);
  final event = ref.watch(vitcStakeLastEventProvider);

  if (event == null) {
    return;
  }

  final userEvent = event.mapOrNull(
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
  );

  if (userEvent != null) {
    yield userEvent;
  }
});

final _vitcUserInfoCacheProvider =
    StateProvider<IMap<BigInt, VitcStakeUserInfo>>((ref) {
  return IMap();
});

final _vitcUserInfoRemoteProvider = FutureProvider.autoDispose
    .family<VitcStakeUserInfo, BigInt>((ref, poolId) async {
  final address = ref.watch(selectedAddressProvider);
  final service = ref.watch(vitcStakeServiceV2Provider);

  // refresh on new event
  ref.watch(_vivaUserInfoChangedEventProvider(poolId));

  final userInfo = await service.getUserInfo(
    poolId: poolId,
    address: address,
  );

  return userInfo;
});

final vitcStakeUserInfoProvider =
    Provider.autoDispose.family<VitcStakeUserInfo?, BigInt>((ref, poolId) {
  final cache = ref.watch(_vitcUserInfoCacheProvider);
  final remote = ref.watch(_vitcUserInfoRemoteProvider(poolId));

  remote.whenData((value) {
    Future.delayed(Duration.zero, () {
      final notifier = ref.read(_vitcUserInfoCacheProvider.notifier);
      notifier.state = cache.add(poolId, value);
    });
  });

  return remote.asData?.value ?? cache[poolId];
});

// VitcStakeEvent

final vitcStakeEventProvider =
    StreamProvider.autoDispose<VmLogMessage>((ref) async* {
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
    vitcStakeV2Contract.contractAddress: HeightRange.latest,
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
      log.e('Dispose vitc stake event provider', e, st);
    }
  });

  yield* controller.stream;
});

// does not update on Claim events
final vitcStakeLastEventProvider = StateNotifierProvider.autoDispose<
    GenericStateNotifier<VitcStakeEvent?>, VitcStakeEvent?>((ref) {
  final notifier = GenericStateNotifier<VitcStakeEvent?>(null);

  ref.listen<AsyncValue<VmLogMessage>>(vitcStakeEventProvider, (_, event) {
    event.mapOrNull(data: (data) {
      final service = ref.read(vitcStakeServiceV2Provider);
      final event = service.decodeEvent(data.value.vmLog);
      // ignore claim events
      event.maybeMap(
        claim: (_) {},
        orElse: () => notifier.updateState(event),
      );
    });
  });

  return notifier;
});

final vitcStakeServiceProvider =
    Provider.family<VitcStakeService, Contract>((ref, contract) {
  final client = ref.watch(viteClientProvider);

  return VitcStakeService(
    client: client,
    contract: contract,
  );
});

final vitcStakeServiceV2Provider = Provider((ref) {
  final service = ref.watch(vitcStakeServiceProvider(vitcStakeV2Contract));
  return service;
});

final vitcStakeAprForPoolInfoProvider =
    FutureProvider.autoDispose.family<String, VitcPoolInfoAll>((ref, poolInfo) {
  final height = ref.read(lastKnownSnapshotHeightProvider);
  if (poolInfo.endBlock <= height ||
      poolInfo.latestRewardBlock == poolInfo.endBlock) {
    return '';
  }

  final rewardTokenPrice =
      ref.watch(exchangeRateForTokenIdProvider(poolInfo.rewardTokenId));
  final stakingTokenPrice =
      ref.watch(exchangeRateForTokenIdProvider(poolInfo.stakingTokenId));

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
