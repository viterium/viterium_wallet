import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'vitc_stake_service.dart';
import 'vitc_stake_types.dart';

typedef VitcUserInfoCache = IMap<BigInt, VitcStakeUserInfo>;

class VitcUserInfoNotifier extends StateNotifier<VitcUserInfoCache> {
  final Address address;
  late VitcStakeService service;

  bool _loading = false;
  bool get loading => _loading;

  VitcUserInfoNotifier({required this.address}) : super(IMap());

  Future<void> cache(Iterable<BigInt> poolIds) async {
    if (poolIds.map((poolId) => state[poolId]).anyIs(null) == false) {
      return;
    }

    _loading = true;
    final changed = await Future.wait(poolIds.map(cachePoolId));
    _loading = false;

    if (changed.everyIs(false)) {
      state = IMap(state.unlock);
    }
  }

  Future<bool> cachePoolId(BigInt poolId) async {
    await Future.delayed(Duration.zero);
    if (state[poolId] != null) {
      return false;
    }
    state = state.add(poolId, VitcStakeUserInfo.empty);
    await updatePoolId(poolId);
    return true;
  }

  Future<void> updatePoolId(BigInt poolId) async {
    final userInfo = await service.getUserInfo(
      poolId: poolId,
      address: address,
    );

    state = state.add(poolId, userInfo);
  }
}
