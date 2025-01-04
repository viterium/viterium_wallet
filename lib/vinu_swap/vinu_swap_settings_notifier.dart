import 'dart:math';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'vinu_swap_service.dart';
import 'vinu_swap_types.dart';

const _kVinuSwapSettingsKey = '_vinu2SwapSettingsKey';

extension VinuSwapSettingsExtension on SettingsRepository {
  VinuSwapSettings getVinuSwapSettings() =>
      box.tryGet<VinuSwapSettings>(
        _kVinuSwapSettingsKey,
        typeFactory: VinuSwapSettings.fromJson,
      ) ??
      VinuSwapSettings(
        fromToken: TokenInfo(
          tokenName: 'VITA INU',
          tokenSymbol: 'VINU',
          index: 1,
          isOwnerBurnOnly: false,
          isReIssuable: false,
          token: kVinuToken,
          decimals: 18,
          owner: Address.parse(
            'vite_1b91ee2619368ee27857c8cc544bc72e92436ba8a029b984e9',
          ),
          maxSupply: BigInt.from(899634297172502),
          totalSupply: BigInt.from(899634297172502),
        ),
        toToken: TokenInfo.vite,
      );

  Future<void> setVinuSwapSettings(VinuSwapSettings settings) =>
      box.set(_kVinuSwapSettingsKey, settings);
}

class VinuSwapSettingsNotifier extends StateNotifier<VinuSwapSettings> {
  final SettingsRepository repository;
  final VinuSwapService service;

  VinuSwapSettingsNotifier({
    required this.repository,
    required this.service,
  }) : super(repository.getVinuSwapSettings()) {
    _updateCachedTokens().then((_) => _refreshTradingTokens());
  }

  Future<void> _updateCachedTokens() async {
    if (state.tokenCache.lastHeight >= kVinuSwapLastHeight) {
      return;
    }

    final cachedTokens = state.tokenCache.tradingTokens.toSet();
    final newTokens = kVinuSwapTokenIdList
        .where((tokenId) => !cachedTokens.contains(tokenId));

    final tradingTokens = state.tokenCache.tradingTokens.addAll(newTokens);
    await _updateTradingTokens(tradingTokens, lastHeight: kVinuSwapLastHeight);
  }

  Future<void> _refreshTradingTokens() async {
    final latestBlockBlock =
        await service.client.getLatestAccountBlock(service.contract.address);
    final accountHeight = latestBlockBlock.height;

    try {
      _fetchNewTradingTokensPaged(accountHeight.toInt());
    } catch (_) {}
  }

  Future<void> _fetchNewTradingTokensPaged(
    int accountHeight, {
    int pageSize = 1000,
  }) async {
    final cachedHeight = state.tokenCache.lastHeight;
    final fromHeight = max(kVinuSwapLastHeight, cachedHeight) + 1;
    final toHeight = min(accountHeight.toInt(), fromHeight + pageSize);
    final heightRange = HeightRange(
      fromHeight: BigInt.from(fromHeight),
      toHeight: BigInt.from(toHeight),
    );

    final cachedTokenIds = state.tokenCache.tradingTokens;
    final newTokens = await service.getTradingTokensForHeightRange(heightRange);
    final newTokenIds = newTokens
        .map((token) => token.tokenId)
        .where((tokenId) => !cachedTokenIds.contains(tokenId));

    final tradingTokens = cachedTokenIds.addAll(newTokenIds);

    await _updateTradingTokens(tradingTokens, lastHeight: toHeight);
    if (toHeight < accountHeight.toInt()) {
      _fetchNewTradingTokensPaged(accountHeight, pageSize: pageSize);
    }
  }

  Future<void> _updateSettings(VinuSwapSettings settings) async {
    await repository.setVinuSwapSettings(settings);
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

  Future<void> _updateTradingTokens(
    IList<TokenId> tradingTokens, {
    required int lastHeight,
  }) {
    final settings = state.copyWith.tokenCache(
      tradingTokens: tradingTokens,
      lastHeight: lastHeight,
    );
    return _updateSettings(settings);
  }
}
