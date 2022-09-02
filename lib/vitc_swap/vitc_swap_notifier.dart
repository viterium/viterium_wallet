import 'dart:math';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'vitc_swap_service.dart';
import 'vitc_swap_types.dart';

const _kVitcSwapSettingsKey = '_vitcSwapSettingsKey';

extension VitcSwapSettingsExtension on SettingsRepository {
  VitcSwapSettings getVitcSwapSettings() =>
      box.tryGet<VitcSwapSettings>(
        _kVitcSwapSettingsKey,
        typeFactory: VitcSwapSettings.fromJson,
      ) ??
      VitcSwapSettings(
        fromToken: TokenInfo.vite,
        toToken: TokenInfo(
          tokenName: 'Vitamin Coin',
          tokenSymbol: 'VITC',
          index: 0,
          isOwnerBurnOnly: false,
          isReIssuable: false,
          token: Token.parse('tti_22d0b205bed4d268a05dfc3c'),
          decimals: 18,
          owner: Address.parse(
              'vite_7038a3f5c9b08d33385de84b0c3a61718922b8a2331fa34528'),
          maxSupply: BigInt.from(998119868),
          totalSupply: BigInt.from(998119868),
        ),
      );

  Future<void> setVitcSwapSettings(VitcSwapSettings settings) =>
      box.set(_kVitcSwapSettingsKey, settings);
}

class VitcSwapNotifier extends StateNotifier<VitcSwapSettings> {
  final SettingsRepository repository;
  final VitcSwapService service;
  VitcSwapNotifier({
    required this.repository,
    required this.service,
  }) : super(repository.getVitcSwapSettings()) {
    service.getTradingTokens().then((value) {
      final tradingTokens = value.map((token) => token.tokenId).toIList();
      updateTradingTokens(tradingTokens);
    });
  }

  Future<void> _updateSettings(VitcSwapSettings settings) async {
    await repository.setVitcSwapSettings(settings);
    state = settings;
  }

  Future<void> updateFromToken(TokenInfo token) {
    final toToken = token == state.toToken ? state.fromToken : state.toToken;
    final settings = state.copyWith(fromToken: token, toToken: toToken);
    return _updateSettings(settings);
  }

  Future<void> updateToToken(TokenInfo token) {
    final fromToken =
        token == state.fromToken ? state.toToken : state.fromToken;
    final settings = state.copyWith(fromToken: fromToken, toToken: token);
    return _updateSettings(settings);
  }

  Future<void> updateSlippage(double slippage) {
    slippage = min(1, max(0, slippage));
    final settings = state.copyWith(slippage: slippage);
    return _updateSettings(settings);
  }

  Future<void> updateTradingTokens(IList<TokenId> tradingTokens) {
    final settings = state.copyWith(tradingTokens: tradingTokens);
    return _updateSettings(settings);
  }
}
