import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../tokens/token_info_provider.dart';
import 'viva_staking_service.dart';
import 'viva_staking_types.dart';

typedef AsyncPoolsInfo = AsyncValue<IMap<BigInt, VivaPoolInfoAll>>;

class VivaPoolsNotifier extends StateNotifier<AsyncPoolsInfo> {
  final Ref ref;
  late VivaStakingService service;

  VivaPoolsNotifier({
    required this.ref,
  }) : super(const AsyncValue.loading()) {
    Future.microtask(() => refreshPoolsInfo());
  }

  Future<void> refreshPoolsInfo() async {
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

    if (!mounted) {
      return;
    }
    state = AsyncValue.data(
      IMap.fromEntries(
        poolInfoAllList.map((poolInfo) => MapEntry(poolInfo.poolId, poolInfo)),
      ),
    );
  }

  Future<void> onEvent(VivaEvent event) async {
    final poolId = event.poolId;

    final pools = state.valueOrNull;
    if (pools == null) {
      return;
    }

    final poolInfo = await service.getPoolInfo(poolId: poolId);
    final extra = await service.getExtraPoolInfo(poolId: poolId);

    final oldInfo = pools[poolId];

    final TokenInfo stakingTokenInfo = oldInfo?.stakingTokenInfo ??
        await ref.read(tokenInfoProvider(poolInfo.stakingTokenId).future);
    final TokenInfo rewardsTokenInfo = oldInfo?.rewardTokenInfo ??
        await ref.read(tokenInfoProvider(poolInfo.rewardTokenId).future);

    final newInfo = VivaPoolInfoAll(
      poolInfo: poolInfo,
      extra: extra,
      stakingTokenInfo: stakingTokenInfo,
      rewardTokenInfo: rewardsTokenInfo,
    );

    state = AsyncValue.data(pools.add(poolId, newInfo));
  }
}
