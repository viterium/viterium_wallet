import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'viva_staking_service.dart';
import 'viva_staking_types.dart';

class VivaUserInfoNotifier extends StateNotifier<VivaUserInfoState> {
  final Address address;
  late VivaStakingService service;

  VivaUserInfoNotifier({required this.address}) : super(VivaUserInfoState());

  Future<void> cache(
    Iterable<BigInt> poolIds, {
    bool includeLastInteractionBlock = true,
  }) async {
    await Future.delayed(Duration.zero);
    if (!mounted) {
      return;
    }
    final userInfo = state.userInfo;
    if (poolIds.map((poolId) => userInfo[poolId]).anyIs(null) == false) {
      return;
    }

    final pendingPoolIds = IList(poolIds.where((id) => userInfo[id] == null));

    final emptyUserInfo = IMap.fromEntries(
      pendingPoolIds.map(
        (poolId) => MapEntry(poolId, VivaUserInfo.empty),
      ),
    );

    state = state.copyWith(
      userInfo: state.userInfo.addAll(emptyUserInfo),
      pendingPoolIds: state.pendingPoolIds.addAll(pendingPoolIds),
    );

    for (final pendingId in pendingPoolIds) {
      await updatePoolId(
        pendingId,
        includeLastInteractionBlock: includeLastInteractionBlock,
      );
    }
  }

  Future<void> updatePoolId(
    BigInt poolId, {
    bool includeLastInteractionBlock = true,
  }) async {
    final userInfo = await service.getUserInfo(
      poolId: poolId,
      address: address,
      includeLastInteractionBlock: includeLastInteractionBlock,
    );

    state = state.copyWith(
      userInfo: state.userInfo.add(poolId, userInfo),
      pendingPoolIds: state.pendingPoolIds.remove(poolId),
    );
  }
}
