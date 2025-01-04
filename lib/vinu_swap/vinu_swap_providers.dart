import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/vinu_swap_contract.dart';
import '../tokens/token_info_provider.dart';
import 'vinu_swap_liquidity_notifier.dart';
import 'vinu_swap_service.dart';
import 'vinu_swap_settings_notifier.dart';
import 'vinu_swap_state_notifier.dart';
import 'vinu_swap_types.dart';

final vinuSwapServiceProvider = Provider((ref) {
  final client = ref.watch(viteClientProvider);

  final service = VinuSwapService(
    client: client,
    contract: vinuSwapContract,
  );

  return service;
});

final vinuSwapSettingsProvider =
    StateNotifierProvider<VinuSwapSettingsNotifier, VinuSwapSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final service = ref.watch(vinuSwapServiceProvider);

  final notifier = VinuSwapSettingsNotifier(
    repository: repository,
    service: service,
  );

  return notifier;
});

final vinuSwapTradingBalancesProvider =
    Provider.autoDispose<AsyncValue<IList<BalanceInfo>>>((ref) {
  final accountInfo = ref.watch(selectedAccountInfoProvider);

  final allTokens = ref.watch(tokenInfoMapProvider);

  final tradingTokens = ref.watch(
    vinuSwapSettingsProvider
        .select((settings) => settings.tokenCache.tradingTokens),
  );

  return allTokens.when(
    data: (tokens) {
      final tradingBalances = tradingTokens.map((tokenId) {
        final tokenInfo = tokens[tokenId] ??
            TokenInfo.unknownToken(
              Token.parse(tokenId),
            );
        final balance = accountInfo.balances[tokenId] ??
            BalanceInfo(
              tokenInfo: tokenInfo,
              balance: BigInt.zero,
            );
        return balance;
      });
      return AsyncValue.data(tradingBalances.toIList());
    },
    error: (e, st) => AsyncValue.error(e, st),
    loading: () => AsyncValue.loading(),
  );
});

final vinuSwapStateProvider =
    StateNotifierProvider.autoDispose<VinuSwapStateNotifier, VinuSwapState>(
        (ref) {
  final service = ref.watch(vinuSwapServiceProvider);
  final settings = ref.read(vinuSwapSettingsProvider);

  final state = VinuSwapState.initial(
    fromToken: settings.fromToken,
    toToken: settings.toToken,
    slippage: settings.slippage,
  );

  final notifier = VinuSwapStateNotifier(service: service, state: state);

  ref.listen<double>(
    vinuSwapSettingsProvider.select((value) => value.slippage),
    (_, slippage) => notifier.updateSlippage(slippage),
  );

  return notifier;
});

final vinuSwapLiquidityProvider = StateNotifierProvider<
    VinuSwapLiquidityNotifier, IMap<Token, LiquidityPool>>((ref) {
  final service = ref.read(vinuSwapServiceProvider);

  final notifier = VinuSwapLiquidityNotifier(service: service);

  ref.listen(vinuSwapServiceProvider, (_, service) {
    notifier.service = service;
  });

  return notifier;
});

final vinuSwapLiquidityForTokenProvider =
    FutureProvider.family<LiquidityPool, Token>((ref, token) async {
  final service = ref.watch(vinuSwapServiceProvider);
  final liquidity = await service.getLiquidityPool(token);
  return liquidity;
});
