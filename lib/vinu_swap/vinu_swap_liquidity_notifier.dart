import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'vinu_swap_service.dart';
import 'vinu_swap_types.dart';

class VinuSwapLiquidityNotifier
    extends StateNotifier<IMap<Token, LiquidityPool>> {
  VinuSwapService service;

  VinuSwapLiquidityNotifier({
    required this.service,
  }) : super(IMap());

  Future<LiquidityPool> updateLiquidity(Token token) async {
    final liquidity = await service.getLiquidityPool(token);
    state = state.add(token, liquidity);
    return liquidity;
  }

  Future<LiquidityPool> getLiquidity(Token token) async {
    final liquidity = state[token];
    if (liquidity != null) {
      return liquidity;
    }
    return updateLiquidity(token);
  }
}
