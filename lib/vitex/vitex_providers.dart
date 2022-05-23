import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'vitex_types.dart';

final _vitexExchangeRateProvider =
    StateProvider<IMap<TokenId, VitexExchangeRate>>((ref) {
  return <TokenId, VitexExchangeRate>{}.lock;
});

final remoteRefreshProvider = StateProvider((ref) => 0);

final remoteVitexExchangeRatesProvider =
    FutureProvider.family<IMap<TokenId, VitexExchangeRate>, IList<TokenId>>(
        (ref, tokens) async {
  ref.watch(remoteRefreshProvider);
  ref.read(loggerProvider).d('Fetching vitex rates');
  final response = await http.get(Uri.parse(
      'https://api.vitex.net/api/v2/exchange-rate?tokenIds=${tokens.join(",")}'));
  if (response.statusCode != 200) {
    return <TokenId, VitexExchangeRate>{}.lock;
  }
  try {
    final jsonPayload = json.decode(response.body);
    final data = jsonPayload['data'];
    if (data == null) {
      throw Exception('data field is null');
    }
    if (data is! List) {
      throw Exception('returned data is not a List');
    }
    return IMap.fromEntries(
      data.map((e) => VitexExchangeRate.fromJson(e)).map(
            (e) => MapEntry(e.tokenId, e),
          ),
    );
  } catch (e, st) {
    ref.read(loggerProvider).e('Failed to fetch Vitex exchange rates', e, st);
    return <TokenId, VitexExchangeRate>{}.lock;
  }
});

final remoteExchangeRatesProvider = Provider.autoDispose((ref) {
  final accountInfo = ref.watch(selectedAccountBalanceProvider);
  return ref.watch(
      remoteVitexExchangeRatesProvider(IList(accountInfo.balances.keys)));
});

final vitexExchangeRatesProvider = Provider.autoDispose((ref) {
  final notifier = ref.watch(_vitexExchangeRateProvider.notifier);
  final remote = ref.watch(remoteExchangeRatesProvider);

  remote.whenOrNull(data: (data) {
    notifier.update((state) => state.addAll(data));
  });

  return remote.asData?.value ?? notifier.state;
});

final vitexExchangeRateForTokenIdProvider =
    Provider.autoDispose.family<VitexExchangeRate, TokenId>((ref, tokenId) {
  final exchangeRates = ref.watch(vitexExchangeRatesProvider);
  return exchangeRates[tokenId] ?? VitexExchangeRate.zero(tokenId: tokenId);
});

final totalBtcValueProvider = Provider.autoDispose((ref) {
  final accountInfo = ref.watch(selectedAccountBalanceProvider);
  final exchangeRates = ref.watch(vitexExchangeRatesProvider);

  final value = accountInfo.balances.entries.fold<Decimal>(
    Decimal.zero,
    (previousValue, element) =>
        previousValue +
        element.value.value *
            Decimal.parse('${exchangeRates[element.key]?.btcRate ?? 0}'),
  );
  return value;
});

final totalFiatValueProvider = Provider.autoDispose((ref) {
  final accountInfo = ref.watch(selectedAccountBalanceProvider);
  final exchangeRates = ref.watch(vitexExchangeRatesProvider);
  final currency = ref.watch(currencyProvider);

  final value = accountInfo.balances.entries.fold<Decimal>(
    Decimal.zero,
    (total, balances) {
      final entry = exchangeRates[balances.key];
      if (entry == null) {
        return total;
      }
      final fiatRate = entry.fiatRate(currency.currency);
      return total + balances.value.value * fiatRate;
    },
  );
  return value;
});

final fiatValueForTokenProvider =
    Provider.autoDispose.family<Decimal, TokenId>((ref, tokenId) {
  final balance = ref.watch(balanceInfoForTokenProvider(tokenId));
  final exchangeRate = ref.watch(vitexExchangeRateForTokenIdProvider(tokenId));
  final currency = ref.watch(currencyProvider);
  final fiatRate = exchangeRate.fiatRate(currency.currency);
  if (balance == null) return Decimal.zero;
  return balance.value * fiatRate;
});

final formatedFiatValueForTokenProvider =
    Provider.autoDispose.family<String, TokenId>((ref, tokenId) {
  final balance = ref.watch(fiatValueForTokenProvider(tokenId));
  final currency = ref.watch(currencyProvider);
  final locale = ref.watch(currencyLocaleProvider);

  return NumberFormat.currency(
    locale: locale,
    symbol: currency.getCurrencySymbol(),
  ).format(balance.toDouble());
});
