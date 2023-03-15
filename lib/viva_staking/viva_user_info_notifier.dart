import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'viva_staking_service.dart';
import 'viva_staking_types.dart';

typedef VivaUserInfoCache = IMap<BigInt, VivaUserInfo>;

class VivaUserInfoNotifier extends StateNotifier<VivaUserInfoCache> {
  final Address address;
  late VivaStakingService service;

  bool _loading = false;
  bool get loading => _loading;

  VivaUserInfoNotifier({required this.address}) : super(IMap());

  Future<void> cache(
    Iterable<BigInt> poolIds, {
    bool includeLastInteractionBlock = true,
  }) async {
    if (poolIds.map((poolId) => state[poolId]).anyIs(null) == false) {
      return;
    }

    _loading = true;
    final changed = await Future.wait(
      poolIds.map(
        (poolId) => cachePoolId(
          poolId,
          includeLastInteractionBlock: includeLastInteractionBlock,
        ),
      ),
    );
    _loading = false;

    if (changed.everyIs(false)) {
      state = IMap(state.unlock);
    }
  }

  Future<bool> cachePoolId(
    BigInt poolId, {
    bool includeLastInteractionBlock = true,
  }) async {
    await Future.delayed(Duration.zero);
    if (state[poolId] != null) {
      return false;
    }
    state = state.add(poolId, VivaUserInfo.empty);
    await updatePoolId(
      poolId,
      includeLastInteractionBlock: includeLastInteractionBlock,
    );
    return true;
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

    state = state.add(poolId, userInfo);
  }
}
