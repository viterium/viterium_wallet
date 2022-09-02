import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/vitc_swap.dart';
import '../tokens/token_info_provider.dart';
import 'vitc_swap_notifier.dart';
import 'vitc_swap_service.dart';
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
    StateNotifierProvider<VitcSwapNotifier, VitcSwapSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final service = ref.watch(vitcSwapServiceProvider);

  final notifier = VitcSwapNotifier(
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

  return allTokens.map(
    data: (tokens) {
      final tradingBalances = tradingTokens.map((tokenId) {
        final tokenInfo = tokens.value[tokenId] ??
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
    error: (e) => AsyncValue.error(e.error),
    loading: (_) => AsyncValue.loading(),
  );
});
