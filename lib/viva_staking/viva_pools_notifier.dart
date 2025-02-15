import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../tokens/token_info_provider.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_service.dart';
import 'viva_staking_types.dart';

const _kVivaStakingV4CacheKey = '_kVivaStakingV4CacheKey';
const _kVivaStakingV5CacheKey = '_kVivaStakingV5CacheKey';

extension VivaStakingCacheExtension on CacheRepository {
  Future<VivaStakingCache> getVivaStakingCache(String key) async {
    final state =
        await box.tryGet(key, typeFactory: VivaStakingCache.fromJson) ??
        const VivaStakingCache();

    return state;
  }

  Future<void> setVivaStakingCache(String key, VivaStakingCache cache) async {
    await box.set(key, cache);
  }

  Future<void> updateVivaStakingCacheWithPoolInfo(
    VivaPoolInfoAll poolInfo,
    String key,
  ) async {
    final state = await getVivaStakingCache(key);
    final pools = state.pools.add(poolInfo.poolId, poolInfo);
    return setVivaStakingCache(key, state.copyWith(pools: pools));
  }
}

class VivaPoolsNotifier extends StateNotifier<VivaPoolsState> {
  final Ref ref;
  late VivaStakingService service;

  VivaPoolsNotifier({required this.ref}) : super((IMap(), true)) {
    final cache = ref.read(cacheRepositoryProvider);
    cache
        .getVivaStakingCache(cacheKey)
        .then((cache) {
          state = (cache.pools, state.$2);
          refreshPoolsInfo();
        })
        .catchError((_) {});
  }

  late final String cacheKey = switch (ref.read(vivaStakingVersionProvider)) {
    VivaStakingVersion.v4 => _kVivaStakingV4CacheKey,
    VivaStakingVersion.v5 => _kVivaStakingV5CacheKey,
  };

  Future<void> refreshPoolsInfo() async {
    final noPools = await service.getPoolCount();

    final stakeVitePoolNo = BigInt.from(20);
    if (noPools > stakeVitePoolNo) {
      if (!mounted) {
        return;
      }
      await refreshPoolWithId(stakeVitePoolNo);
    }

    for (
      BigInt poolId = noPools - BigInt.one;
      poolId >= BigInt.zero;
      poolId -= BigInt.one
    ) {
      if (!mounted) {
        return;
      }
      final lastSnapshotHeight = ref.read(lastKnownSnapshotHeightProvider);
      final cachedInfo = state.$1.get(poolId);
      // Skip refreshing ended pools
      if (cachedInfo != null && cachedInfo.endBlock <= lastSnapshotHeight) {
        continue;
      }

      await refreshPoolWithId(poolId);
    }

    if (!mounted) {
      return;
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

    final TokenInfo stakingTokenInfo =
        oldInfo?.stakingTokenInfo ??
        await ref.read(tokenInfoProvider(poolInfo.stakingTokenId).future);
    final TokenInfo rewardsTokenInfo =
        oldInfo?.rewardTokenInfo ??
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
      cache.updateVivaStakingCacheWithPoolInfo(newInfo, cacheKey);
    }

    state = (pools.add(poolId, newInfo), state.$2);
  }
}
