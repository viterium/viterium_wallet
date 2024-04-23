import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/vitc_stake_v2_contract.dart';
import '../core/generic_state_notifier.dart';
import '../settings/available_currency.dart';
import '../viva_staking/viva_staking_types.dart';
import 'vitc_pools_notifier.dart';
import 'vitc_stake_service.dart';
import 'vitc_stake_types.dart';
import 'vitc_user_info_notifier.dart';

final vitcPoolsNotifierProvider =
    StateNotifierProvider.autoDispose<VitcPoolsNotifier, AsyncVitcPoolsInfo>(
        (ref) {
  final notifier = VitcPoolsNotifier(ref: ref);

  ref.listen(vitcStakeServiceV2Provider, (_, service) {
    notifier.service = service;
  }, fireImmediately: true);

  ref.listen(vitcStakeLastEventProvider, (_, next) {
    if (next != null) {
      notifier.onEvent(next);
    }
  });

  return notifier;
});

final vitcPoolsInfoProvider =
    Provider.autoDispose<IList<VitcPoolInfoAll>?>((ref) {
  final pools = ref.watch(vitcPoolsNotifierProvider);

  if (pools.isLoading) {
    return null;
  }

  return IList(pools.valueOrNull?.values);
});

final vitcPoolsFilterProvider = StateProvider((ref) => PoolFilter());

final filteredVitcPoolsProvider =
    Provider.autoDispose<AsyncValue<IList<VitcPoolInfoAll>>>((ref) {
  final vitcPools = ref.watch(vitcPoolsInfoProvider);
  final userInfo = ref.watch(vitcStakeUserInfoCacheProvider);

  final filter = ref.watch(vitcPoolsFilterProvider);
  final height = ref.read(lastKnownSnapshotHeightProvider);

  if (vitcPools == null) {
    return const AsyncValue.loading();
  }

  IList<VitcPoolInfoAll> pools;
  if (filter.ended) {
    pools = vitcPools.removeWhere((pool) => pool.endBlock > height);
  } else {
    pools = vitcPools.removeWhere((pool) => pool.endBlock <= height);
  }

  if (!filter.stakedOnly) {
    return AsyncValue.data(pools);
  }

  final notifier = ref.watch(vitcStakeUserInfoCacheProvider.notifier);
  notifier.cache(pools.map((pool) => pool.poolId));

  pools = pools.removeWhere((pool) {
    final info = userInfo[pool.poolId];
    return info == null || info.stakingBalance == BigInt.zero;
  });

  if (pools.isEmpty && notifier.loading) {
    return const AsyncValue.loading();
  }

  return AsyncValue.data(pools);
});

final vitcPoolInfoForPoolIdProvider =
    Provider.autoDispose.family<VitcPoolInfoAll?, BigInt>((ref, poolId) {
  final pools = ref.watch(vitcPoolsInfoProvider);

  return pools?[poolId.toInt()];
});

// VitcStakeUserInfo providers

final vitcStakeUserInfoCacheProvider =
    StateNotifierProvider.autoDispose<VitcUserInfoNotifier, VitcUserInfoCache>(
        (ref) {
  final address = ref.watch(selectedAddressProvider);

  final notifier = VitcUserInfoNotifier(address: address);

  ref.listen(vitcStakeServiceV2Provider, (_, service) {
    notifier.service = service;
  }, fireImmediately: true);

  ref.listen(vitcStakeLastEventProvider, (_, event) {
    if (event == null) {
      return;
    }

    final userEvent = event.mapOrNull(
      claim: (event) => event.address == address ? event : null,
      withdraw: (event) => event.address == address ? event : null,
      deposit: (event) => event.address == address ? event : null,
    );

    if (userEvent != null) {
      notifier.updatePoolId(userEvent.poolId);
    }
  });

  return notifier;
});

final vitcStakeUserInfoProvider =
    Provider.autoDispose.family<VitcStakeUserInfo, BigInt>((ref, poolId) {
  final cache = ref.watch(vitcStakeUserInfoCacheProvider);
  final userInfo = cache[poolId];

  if (userInfo == null) {
    final notifier = ref.watch(vitcStakeUserInfoCacheProvider.notifier);
    notifier.cachePoolId(poolId);
  }

  return userInfo ?? VitcStakeUserInfo.empty;
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

final vitcStakeLastEventProvider = StateNotifierProvider.autoDispose<
    GenericStateNotifier<VitcStakeEvent?>, VitcStakeEvent?>((ref) {
  final notifier = GenericStateNotifier<VitcStakeEvent?>(null);

  ref.listen<AsyncValue<VmLogMessage>>(vitcStakeEventProvider, (_, event) {
    event.mapOrNull(data: (data) {
      final service = ref.read(vitcStakeServiceV2Provider);
      final vmLogEvent = service.decodeVmLog(data.value.vmLog);

      vmLogEvent.whenOrNull(
        decoded: (_, event) => notifier.updateState(event),
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

  // Don't show APR if pool is not active
  if (poolInfo.startBlock >= height ||
      poolInfo.endBlock <= height ||
      poolInfo.latestRewardBlock == poolInfo.endBlock) {
    return '';
  }

  final totalTime = poolInfo.endBlock - poolInfo.startBlock;
  final secondsInYear = BigInt.from(Duration(days: 365).inSeconds);

  // Check if same token pool
  if (poolInfo.rewardTokenId == poolInfo.stakingTokenId) {
    final rewardAmount =
        (poolInfo.totalRewardBalance * poolInfo.removedDecimals).toDecimal();
    final stakingAmount = poolInfo.totalStakingBalance.toDecimal();

    final aprValue = (rewardAmount *
            Decimal.fromBigInt(secondsInYear) *
            Decimal.fromInt(100) /
            (stakingAmount * Decimal.fromBigInt(totalTime)))
        .toDecimal(scaleOnInfinitePrecision: 2);

    if (aprValue == Decimal.zero) {
      return '';
    }

    return '${aprValue.toStringAsFixed(2)}%';
  }

  final rewardTokenPrice =
      ref.watch(aprExchangeRateForTokenIdProvider(poolInfo.rewardTokenId));
  final stakingTokenPrice =
      ref.watch(aprExchangeRateForTokenIdProvider(poolInfo.stakingTokenId));

  final rewardAmount = Amount(
    raw: poolInfo.totalRewardBalance * poolInfo.removedDecimals,
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

final vitcPoolUnlockInRawProvider =
    Provider.autoDispose.family<BigInt, VitcPoolInfoAll>((ref, poolInfo) {
  final userInfo = ref.watch(vitcStakeUserInfoProvider(poolInfo.poolId));
  final lastSnapshotHeight = ref.watch(lastKnownSnapshotHeightProvider);

  var height = lastSnapshotHeight;

  final started = poolInfo.startBlock < height;
  final ended = poolInfo.endBlock < height;

  if (height > poolInfo.endBlock) {
    height = poolInfo.endBlock;
  }

  final end = poolInfo.endBlock - height;

  var unlocksInRaw = (ended || !started
      ? BigInt.zero
      : userInfo.depositBlock + poolInfo.timelock - lastSnapshotHeight);

  if (unlocksInRaw > end) {
    unlocksInRaw = end;
  }

  return unlocksInRaw;
});

final vitcPoolIsLockedProvider =
    Provider.autoDispose.family<bool, VitcPoolInfoAll>((ref, poolInfo) {
  final unlocksInRaw = ref.watch(vitcPoolUnlockInRawProvider(poolInfo));
  final userInfo = ref.watch(vitcStakeUserInfoProvider(poolInfo.poolId));

  final isLocked =
      unlocksInRaw.sign > 0 && userInfo.stakingBalance > BigInt.zero;

  return isLocked;
});
