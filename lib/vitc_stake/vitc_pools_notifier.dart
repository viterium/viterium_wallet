import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../tokens/token_info_provider.dart';
import 'vitc_stake_service.dart';
import 'vitc_stake_types.dart';

typedef AsyncVitcPoolsInfo = AsyncValue<IMap<BigInt, VitcPoolInfoAll>>;

class VitcPoolsNotifier extends StateNotifier<AsyncVitcPoolsInfo> {
  final Ref ref;
  late VitcStakeService service;
  VitcPoolsNotifier({
    required this.ref,
  }) : super(const AsyncValue.loading()) {
    Future.microtask(refreshPoolsInfo);
  }

  Future<void> refreshPoolsInfo() async {
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

    if (!mounted) {
      return;
    }
    state = AsyncValue.data(
      IMap.fromEntries(
        poolInfoAllList.map((poolInfo) => MapEntry(poolInfo.poolId, poolInfo)),
      ),
    );
  }

  Future<void> onEvent(VitcStakeEvent event) async {
    final poolId = event.poolId;

    final pools = state.valueOrNull;
    if (pools == null) {
      return;
    }

    final poolInfo = await service.getPoolInfo(poolId: poolId);

    final oldInfo = pools[poolId];

    final TokenInfo stakingTokenInfo = oldInfo?.stakingTokenInfo ??
        await ref.read(tokenInfoProvider(poolInfo.stakingTokenId).future);
    final TokenInfo rewardsTokenInfo = oldInfo?.rewardTokenInfo ??
        await ref.read(tokenInfoProvider(poolInfo.rewardTokenId).future);

    if (!mounted) {
      return;
    }

    final newInfo = VitcPoolInfoAll(
      poolInfo: poolInfo,
      stakingTokenInfo: stakingTokenInfo,
      rewardTokenInfo: rewardsTokenInfo,
    );

    state = AsyncValue.data(pools.add(poolId, newInfo));
  }
}
