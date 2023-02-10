import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/vitc_swap.dart';
import '../tokens/token_info_provider.dart';
import 'vitc_swap_service.dart';
import 'vitc_swap_settings_notifier.dart';
import 'vitc_swap_state_notifier.dart';
import 'vitc_swap_types.dart';

final vitcSwapServiceProvider = Provider((ref) {
  final client = ref.watch(viteClientProvider);

  final service = VitcSwapService(
    client: client,
    contract: vitcSwapContract,
  );

  return service;
});

final vitcSwapSettingsProvider =
    StateNotifierProvider<VitcSwapSettingsNotifier, VitcSwapSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final service = ref.watch(vitcSwapServiceProvider);

  final notifier = VitcSwapSettingsNotifier(
    repository: repository,
    service: service,
  );

  return notifier;
});

final vitcSwapTradingBalancesProvider =
    Provider.autoDispose<AsyncValue<IList<BalanceInfo>>>((ref) {
  final accountInfo = ref.watch(selectedAccountInfoProvider);

  final allTokens = ref.watch(tokenInfoMapProvider);

  final tradingTokens = ref.watch(
    vitcSwapSettingsProvider.select((settings) => settings.tradingTokens),
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

final vitcSwapStateProvider =
    StateNotifierProvider<VitcSwapStateNotifier, VitcSwapState>((ref) {
  final service = ref.watch(vitcSwapServiceProvider);
  final settings = ref.read(vitcSwapSettingsProvider);

  final state = VitcSwapState.initial(
    fromToken: settings.fromToken,
    toToken: settings.toToken,
    slippage: settings.slippage,
  );

  final notifier = VitcSwapStateNotifier(service: service, state: state);

  ref.listen<double>(
    vitcSwapSettingsProvider.select((value) => value.slippage),
    (_, slippage) => notifier.updateSlippage(slippage),
  );

  return notifier;
});
