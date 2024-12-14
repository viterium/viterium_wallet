import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/viva_staking_v4_contract.dart';
import '../contracts/viva_staking_v5_contract.dart';
import '../core/generic_state_notifier.dart';
import '../settings/available_currency.dart';
import 'viva_pools_notifier.dart';
import 'viva_staking_service.dart';
import 'viva_staking_types.dart';
import 'viva_staking_v5_service.dart';
import 'viva_user_info_notifier.dart';

enum VivaStakingVersion {
  v4,
  v5;
}

final vivaStakingVersionProvider =
    StateProvider((ref) => VivaStakingVersion.v4);

final vivaStakingServiceProvider = Provider<VivaStakingService>((ref) {
  final client = ref.watch(viteClientProvider);
  final version = ref.watch(vivaStakingVersionProvider);

  return switch (version) {
    VivaStakingVersion.v4 => VivaStakingService(
        client: client,
        contract: vivaStakingV4Contract,
      ),
    VivaStakingVersion.v5 => VivaStakingV5Service(
        client: client,
        contract: vivaStakingV5Contract,
      ),
  };
});

final vivaPoolsNotifierProvider =
    StateNotifierProvider.autoDispose<VivaPoolsNotifier, VivaPoolsState>((ref) {
  final notifier = VivaPoolsNotifier(ref: ref);

  ref.listen(vivaStakingServiceProvider, (_, service) {
    notifier.service = service;
  }, fireImmediately: true);

  ref.listen(vivaLastEventProvider, (_, next) {
    if (next != null) {
      notifier.onEvent(next);
    }
  });

  return notifier;
});

final vivaPoolsFilterProvider = StateProvider((ref) => PoolFilter());

final filteredVivaPoolsProvider = Provider.autoDispose<VivaPoolsState>((ref) {
  final (vivaPools, loading) = ref.watch(vivaPoolsNotifierProvider);
  final userInfoState = ref.watch(vivaUserInfoCacheProvider);
  final userInfo = userInfoState.userInfo;

  final filter = ref.watch(vivaPoolsFilterProvider);
  final height = ref.read(lastKnownSnapshotHeightProvider);

  IMap<BigInt, VivaPoolInfoAll> pools;
  if (filter.ended) {
    pools = vivaPools.removeWhere((poolId, pool) => pool.endBlock > height);
  } else {
    pools = vivaPools.removeWhere((poolId, pool) => pool.endBlock <= height);
  }

  if (!filter.stakedOnly) {
    return (pools, loading);
  }

  final notifier = ref.read(vivaUserInfoCacheProvider.notifier);
  notifier.cache(
    pools.values.map((pool) => pool.poolId).toList(),
    includeLastInteractionBlock: !filter.ended,
  );

  pools = pools.removeWhere((poolId, pool) {
    final info = userInfo[pool.poolId];
    return info == null || info.stakingBalance == BigInt.zero;
  });

  return (pools, loading || userInfoState.loading);
});

final vivaPoolInfoForPoolIdProvider =
    Provider.autoDispose.family<VivaPoolInfoAll?, BigInt>((ref, poolId) {
  final (pools, _) = ref.watch(vivaPoolsNotifierProvider);

  return pools[poolId];
});

// VivaStakingUserInfo providers

final vivaUserInfoCacheProvider =
    StateNotifierProvider.autoDispose<VivaUserInfoNotifier, VivaUserInfoState>(
        (ref) {
  final address = ref.watch(selectedAddressProvider);

  final notifier = VivaUserInfoNotifier(address: address);

  ref.listen(vivaStakingServiceProvider, (_, service) {
    notifier.service = service;
  }, fireImmediately: true);

  ref.listen(vivaLastEventProvider, (_, event) {
    if (event == null) {
      return;
    }

    final userEvent = event.mapOrNull(
      withdraw: (event) => event.address == address ? event : null,
      deposit: (event) => event.address == address ? event : null,
      emergencyWithdraw: (event) => event.address == address ? event : null,
    );

    if (userEvent != null) {
      notifier.updatePoolId(userEvent.poolId);
    }
  });

  return notifier;
});

final vivaUserInfoProvider =
    Provider.autoDispose.family<VivaUserInfo, BigInt>((ref, poolId) {
  final userInfoState = ref.watch(vivaUserInfoCacheProvider);
  final userInfo = userInfoState.userInfo[poolId];

  if (userInfo == null) {
    final notifier = ref.watch(vivaUserInfoCacheProvider.notifier);
    notifier.cache([poolId]);
  }

  return userInfo ?? VivaUserInfo.empty;
});

// VivaStakingEvent

final vivaEventProvider =
    StreamProvider.autoDispose<VmLogMessage>((ref) async* {
  final client = ref.watch(wsViteClientProvider);
  final version = ref.watch(vivaStakingVersionProvider);
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

  final contractAddress = switch (version) {
    VivaStakingVersion.v4 => vivaStakingV4Contract.contractAddress,
    VivaStakingVersion.v5 => vivaStakingV5Contract.contractAddress
  };
  final params = VmLogFilter(addressHeightRange: {
    contractAddress: HeightRange.latest,
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
      log.e('Dispose viva staking event provider', e, st);
    }
  });

  yield* controller.stream;
});

final vivaLastEventProvider = StateNotifierProvider.autoDispose<
    GenericStateNotifier<VivaEvent?>, VivaEvent?>((ref) {
  final notifier = GenericStateNotifier<VivaEvent?>(null);

  ref.listen<AsyncValue<VmLogMessage>>(vivaEventProvider, (_, event) {
    event.mapOrNull(data: (data) {
      final service = ref.read(vivaStakingServiceProvider);
      final event = service.decodeVmLogMessage(data.value);

      // ignore unknown events
      event.whenOrNull(
        decoded: (_, event) => event.maybeMap(
          claim: (_) {/* Do nothing on claim */},
          orElse: () => notifier.updateState(event),
        ),
      );
    });
  });

  return notifier;
});

final vivaAprForPoolInfoProvider =
    FutureProvider.autoDispose.family<String, VivaPoolInfoAll>((ref, poolInfo) {
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
    final rewardAmount = poolInfo.totalRewardBalance.toDecimal();
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

final vivaPoolUnlockInRawProvider =
    Provider.autoDispose.family<BigInt, VivaPoolInfoAll>((ref, poolInfo) {
  final userInfo = ref.watch(vivaUserInfoProvider(poolInfo.poolId));
  final lastSnapshotHeight = ref.watch(lastKnownSnapshotHeightProvider);

  var height = lastSnapshotHeight;

  final ended = poolInfo.endBlock < height;

  if (height > poolInfo.endBlock) {
    height = poolInfo.endBlock;
  }

  final end = poolInfo.endBlock - height;

  var unlocksInRaw = (ended ? BigInt.from(100) : poolInfo.lockTime) +
      userInfo.lastInteractionBlock -
      lastSnapshotHeight;

  if (unlocksInRaw > end) {
    unlocksInRaw = end;
  }

  return unlocksInRaw;
});

final vivaPoolIsLockedProvider =
    Provider.autoDispose.family<bool, VivaPoolInfoAll>((ref, poolInfo) {
  final unlocksInRaw = ref.watch(vivaPoolUnlockInRawProvider(poolInfo));
  final userInfo = ref.watch(vivaUserInfoProvider(poolInfo.poolId));

  final isLocked =
      unlocksInRaw.sign > 0 && userInfo.stakingBalance > BigInt.zero;

  return isLocked;
});

final vivaPoolIsClaimLockedProvider =
    Provider.autoDispose.family<bool, VivaPoolInfoAll>((ref, poolInfo) {
  final isLocked = ref.watch(vivaPoolIsLockedProvider(poolInfo));

  return isLocked && poolInfo.minimumDeposit > BigInt.zero;
});
