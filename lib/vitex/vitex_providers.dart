import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'vitex_types.dart';

final _vitexExchangeRatesCacheProvider =
    StateProvider<IMap<TokenId, VitexExchangeRate>>((ref) {
  return <TokenId, VitexExchangeRate>{}.lock;
});

final _vitexExchangeRatesRemoteProvider =
    FutureProvider.family<IMap<TokenId, VitexExchangeRate>, IList<TokenId>>(
        (ref, tokens) async {
  ref.watch(remoteRefreshProvider);

  final log = ref.read(loggerProvider);
  log.d('Fetching vitex rates');

  final response = await http.get(Uri.parse(
      'https://api.vitex.net/api/v2/exchange-rate?tokenIds=${tokens.join(",")}'));

  if (response.statusCode != 200) {
    return <TokenId, VitexExchangeRate>{}.lock;
  }

  try {
    final jsonPayload = json.decode(response.body);
    final data = jsonPayload['data'];
    if (data == null) {
      throw Exception('Data field is null');
    }
    if (data is! List) {
      throw Exception('Returned data is not a List');
    }
    return IMap.fromEntries(
      data.map((e) {
        final rate = VitexExchangeRate.fromJson(e);
        return MapEntry(rate.tokenId, rate);
      }),
    );
  } catch (e, st) {
    log.e('Failed to fetch Vitex exchange rates', e, st);
    return <TokenId, VitexExchangeRate>{}.lock;
  }
});

final exchangeRatesRemoteProvider = Provider.autoDispose((ref) {
  final accountInfo = ref.watch(selectedAccountInfoProvider);
  final tokenIds = IList(accountInfo.balances.keys);
  final rates = ref.watch(_vitexExchangeRatesRemoteProvider(tokenIds));
  return rates;
});

final exchangeRatesProvider = Provider.autoDispose((ref) {
  final notifier = ref.watch(_vitexExchangeRatesCacheProvider.notifier);
  final remote = ref.watch(exchangeRatesRemoteProvider);

  remote.whenOrNull(data: (data) {
    notifier.update((state) => state.addAll(data));
  });

  return remote.asData?.value ?? notifier.state;
});

final exchangeRateForTokenIdProvider =
    Provider.autoDispose.family<VitexExchangeRate, TokenId>((ref, tokenId) {
  final exchangeRates = ref.watch(exchangeRatesProvider);
  return exchangeRates[tokenId] ?? VitexExchangeRate.zero(tokenId: tokenId);
});

// TODO - move to own file

final totalBtcValueProvider = Provider.autoDispose((ref) {
  final accountInfo = ref.watch(selectedAccountInfoProvider);
  final exchangeRates = ref.watch(exchangeRatesProvider);

  final value = accountInfo.balances.entries.fold<Decimal>(
    Decimal.zero,
    (previousValue, element) =>
        previousValue +
        element.value.value *
            Decimal.parse('${exchangeRates[element.key]?.btcRate ?? 0}'),
  );
  return value;
});

final totalFiatValueForAccountInfoProvider =
    Provider.autoDispose.family<Decimal, AccountInfo>((ref, accountInfo) {
  final exchangeRates = ref.watch(exchangeRatesProvider);
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

final totalFiatValueProvider = Provider.autoDispose((ref) {
  final accountInfo = ref.watch(selectedAccountInfoProvider);
  final value = ref.watch(totalFiatValueForAccountInfoProvider(accountInfo));
  return value;
});

final fiatValueForTokenProvider =
    Provider.autoDispose.family<Decimal, TokenId>((ref, tokenId) {
  final balance = ref.watch(balanceInfoForTokenProvider(tokenId));
  final exchangeRate = ref.watch(exchangeRateForTokenIdProvider(tokenId));
  final currency = ref.watch(currencyProvider);
  final fiatRate = exchangeRate.fiatRate(currency.currency);
  if (balance == null) return Decimal.zero;
  return balance.value * fiatRate;
});

final formatedFiatValueForTokenProvider =
    Provider.autoDispose.family<String, TokenId>((ref, tokenId) {
  final balance = ref.watch(fiatValueForTokenProvider(tokenId));
  final currency = ref.watch(currencyProvider);

  return NumberFormat.currency(
    symbol: currency.getCurrencySymbol(),
    name: currency.getIso4217Code(),
  ).format(DecimalIntl(balance));
});

final totalBtcFormatedProvider = Provider.autoDispose((ref) {
  final btcBalance = ref.watch(totalBtcValueProvider);
  final decimals = btcBalance >= Decimal.parse('0.001') ? 4 : 6;
  return NumberFormat.currency(
    name: '',
    symbol: '',
    decimalDigits: decimals,
  ).format(DecimalIntl(btcBalance));
});

final fiatFormatedForTotalValueProvider =
    Provider.autoDispose.family<String, AccountInfo>((ref, accountInfo) {
  final balance = ref.watch(totalFiatValueForAccountInfoProvider(accountInfo));
  final currency = ref.watch(currencyProvider);

  return NumberFormat.currency(
    symbol: currency.getCurrencySymbol(),
    name: currency.getIso4217Code(),
  ).format(DecimalIntl(balance));
});

final totalFiatFormatedProvider = Provider.autoDispose((ref) {
  final balance = ref.watch(totalFiatValueProvider);
  final currency = ref.watch(currencyProvider);

  return NumberFormat.currency(
    symbol: currency.getCurrencySymbol(),
    name: currency.getIso4217Code(),
  ).format(DecimalIntl(balance));
});
