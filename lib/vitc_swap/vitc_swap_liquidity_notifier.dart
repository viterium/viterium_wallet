import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'vitc_swap_service.dart';
import 'vitc_swap_types.dart';

class VitcSwapLiquidityNotifier
    extends StateNotifier<IMap<Token, TokenLiquidity>> {
  VitcSwapService service;

  VitcSwapLiquidityNotifier({
    required this.service,
  }) : super(IMap());

  Future<TokenLiquidity> updateLiquidity(Token token) async {
    final liquidity = await service.getTokenLiquidity(token);
    state = state.add(token, liquidity);
    return liquidity;
  }

  Future<TokenLiquidity> getLiquidity(Token token) async {
    final liquidity = state[token];
    if (liquidity != null) {
      return liquidity;
    }
    return updateLiquidity(token);
  }
}
