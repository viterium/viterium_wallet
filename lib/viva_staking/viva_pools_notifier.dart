import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../tokens/token_info_provider.dart';
import 'viva_staking_service.dart';
import 'viva_staking_types.dart';

const _kVivaStakingCacheKey = '_kVivaStakingCacheKey';

extension VivaStakingCacheExtension on CacheRepository {
  Future<VivaStakingCache> getVivaStakingCache() async {
    final state = await box.tryGet(
          _kVivaStakingCacheKey,
          typeFactory: VivaStakingCache.fromJson,
        ) ??
        const VivaStakingCache();

    return state;
  }

  Future<void> setVivaStakingCache(VivaStakingCache cache) async {
    await box.set(_kVivaStakingCacheKey, cache);
  }

  Future<void> updateVivaStakingCacheWithPoolInfo(
      VivaPoolInfoAll poolInfo) async {
    final state = await getVivaStakingCache();
    final pools = state.pools.add(poolInfo.poolId, poolInfo);
    return setVivaStakingCache(state.copyWith(pools: pools));
  }
}

class VivaPoolsNotifier extends StateNotifier<VivaPoolsState> {
  final Ref ref;
  late VivaStakingService service;

  VivaPoolsNotifier({required this.ref}) : super((IMap(), true)) {
    final cache = ref.read(cacheRepositoryProvider);
    cache.getVivaStakingCache().then((cache) {
      state = (cache.pools, state.$2);
      refreshPoolsInfo();
    }).catchError((_) {});
  }

  Future<void> refreshPoolsInfo() async {
    final noPools = await service.getPoolCount();
    if (!mounted) {
      return;
    }
    for (BigInt poolId = noPools - BigInt.one;
        poolId >= BigInt.zero;
        poolId -= BigInt.one) {
      final lastSnapshotHeight = ref.read(lastKnownSnapshotHeightProvider);
      final cachedInfo = state.$1.get(poolId);
      // Skip refreshing ended pools
      if (cachedInfo != null && cachedInfo.endBlock <= lastSnapshotHeight) {
        continue;
      }

      await refreshPoolWithId(poolId);
    }

    state = (state.$1, false);
  }

  Future<void> onEvent(VivaEvent event) => refreshPoolWithId(event.poolId);

  Future<void> refreshPoolWithId(BigInt poolId) async {
    final pools = state.$1;
    final oldInfo = pools[poolId];

    final poolInfo = await service.getPoolInfo(poolId: poolId);
    final extra = await service.getExtraPoolInfo(poolId: poolId);

    if (!mounted) {
      return;
    }

    final TokenInfo stakingTokenInfo = oldInfo?.stakingTokenInfo ??
        await ref.read(tokenInfoProvider(poolInfo.stakingTokenId).future);
    final TokenInfo rewardsTokenInfo = oldInfo?.rewardTokenInfo ??
        await ref.read(tokenInfoProvider(poolInfo.rewardTokenId).future);

    if (!mounted) {
      return;
    }

    final newInfo = VivaPoolInfoAll(
      poolInfo: poolInfo,
      extra: extra,
      stakingTokenInfo: stakingTokenInfo,
      rewardTokenInfo: rewardsTokenInfo,
    );

    final lastSnapshotHeight = ref.read(lastKnownSnapshotHeightProvider);
    if (newInfo.endBlock <= lastSnapshotHeight) {
      final cache = ref.read(cacheRepositoryProvider);
      cache.updateVivaStakingCacheWithPoolInfo(newInfo);
    }

    state = (pools.add(poolId, newInfo), state.$2);
  }
}
