import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/viva_staking_v4.dart';
import '../core/generic_state_notifier.dart';
import '../settings/available_currency.dart';
import 'viva_pools_notifier.dart';
import 'viva_staking_service.dart';
import 'viva_staking_types.dart';
import 'viva_user_info_notifier.dart';

final vivaPoolsNotifierProvider =
    StateNotifierProvider.autoDispose<VivaPoolsNotifier, AsyncVivaPoolsInfo>(
        (ref) {
  final notifier = VivaPoolsNotifier(ref: ref);

  ref.listen(vivaStakingServiceV4Provider, (_, service) {
    notifier.service = service;
  }, fireImmediately: true);

  ref.listen(vivaLastEventProvider, (_, next) {
    if (next != null) {
      notifier.onEvent(next);
    }
  });

  return notifier;
});

final vivaPoolsInfoProvider =
    Provider.autoDispose<IList<VivaPoolInfoAll>?>((ref) {
  final pools = ref.watch(vivaPoolsNotifierProvider);

  if (pools.isLoading) {
    return null;
  }

  return IList(pools.valueOrNull?.values);
});

final vivaPoolsFilterProvider = StateProvider((ref) => PoolFilter());

final filteredVivaPoolsProvider =
    Provider.autoDispose<AsyncValue<IList<VivaPoolInfoAll>>>((ref) {
  final vivaPools = ref.watch(vivaPoolsInfoProvider);
  final userInfo = ref.watch(vivaUserInfoCacheProvider);

  final filter = ref.watch(vivaPoolsFilterProvider);
  final height = ref.read(lastKnownSnapshotHeightProvider);

  if (vivaPools == null) {
    return const AsyncValue.loading();
  }

  IList<VivaPoolInfoAll> pools;
  if (filter.ended) {
    pools = vivaPools.removeWhere((pool) => pool.endBlock > height);
  } else {
    pools = vivaPools.removeWhere((pool) => pool.endBlock <= height);
  }

  if (!filter.stakedOnly) {
    return AsyncValue.data(pools);
  }

  final notifier = ref.watch(vivaUserInfoCacheProvider.notifier);
  notifier.cache(
    pools.map((pool) => pool.poolId),
    includeLastInteractionBlock: !filter.ended,
  );

  pools = pools.removeWhere((pool) {
    final info = userInfo[pool.poolId];
    return info == null || info.stakingBalance == BigInt.zero;
  });

  if (pools.isEmpty && notifier.loading) {
    return const AsyncValue.loading();
  }

  return AsyncValue.data(pools);
});

final vivaPoolInfoForPoolIdProvider =
    Provider.autoDispose.family<VivaPoolInfoAll?, BigInt>((ref, poolId) {
  final pools = ref.watch(vivaPoolsInfoProvider);

  return pools?[poolId.toInt()];
});

// VivaStakingUserInfo providers

final vivaUserInfoCacheProvider =
    StateNotifierProvider.autoDispose<VivaUserInfoNotifier, VivaUserInfoCache>(
        (ref) {
  final address = ref.watch(selectedAddressProvider);

  final notifier = VivaUserInfoNotifier(address: address);

  ref.listen(vivaStakingServiceV4Provider, (_, service) {
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
  final cache = ref.watch(vivaUserInfoCacheProvider);
  final userInfo = cache[poolId];

  if (userInfo == null) {
    final notifier = ref.watch(vivaUserInfoCacheProvider.notifier);
    notifier.cachePoolId(poolId);
  }

  return userInfo ?? VivaUserInfo.empty;
});

// VivaStakingEvent

final vivaEventProvider =
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
      final service = ref.read(vivaStakingServiceV4Provider);
      final event = service.decodeVmLogEvent(data.value.vmLog);

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
