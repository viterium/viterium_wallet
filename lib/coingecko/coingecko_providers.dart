import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../core/core_providers.dart';
import '../settings/settings.dart';
import 'coingecko_types.dart';

const _kCoinGeckoRatesKey = '_coingeckoRatesKey';

extension CoinGeckoRatesExtension on SettingsRepository {
  CoinGeckoRates getCoinGeckoRates() {
    return box.tryGet<CoinGeckoRates>(
          _kCoinGeckoRatesKey,
          typeFactory: <T>(value) => CoinGeckoRates.fromJson(value) as T,
        ) ??
        const CoinGeckoRates();
  }

  Future<void> setCoinGeckoRates(CoinGeckoRates rates) {
    return box.set(_kCoinGeckoRatesKey, rates);
  }
}

class CoinGeckoRatesNotifier extends StateNotifier<CoinGeckoRates> {
  final SettingsRepository repository;

  CoinGeckoRates get rates => state;

  CoinGeckoRatesNotifier(this.repository)
      : super(repository.getCoinGeckoRates());

  Future<void> updateRates(CoinGeckoRates rates) {
    state = rates;
    return repository.setCoinGeckoRates(rates);
  }
}

final _coingeckoRatesCacheProvider =
    StateNotifierProvider<CoinGeckoRatesNotifier, CoinGeckoRates>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return CoinGeckoRatesNotifier(repository);
});

final _coingeckoRatesRemoteProvider =
    FutureProvider<CoinGeckoRates>((ref) async {
  ref.watch(remoteRefreshProvider);

  final log = ref.read(loggerProvider);

  final uri = Uri.parse('https://api.coingecko.com/api/v3/exchange_rates');
  final response = await http.get(uri);

  if (response.statusCode != 200) {
    return CoinGeckoRates();
  }

  try {
    final data = json.decode(response.body);
    if (data is! Map) {
      throw Exception('Retuned data is not a Map');
    }
    final rates = CoinGeckoRates.fromJson(data.cast<String, dynamic>());
    return rates;
  } catch (e, st) {
    log.e('Failed to fetch CoinGecko exchange rates', e, st);
    return CoinGeckoRates();
  }
});

final coingeckoRatesProvider = Provider((ref) {
  final cache = ref.watch(_coingeckoRatesCacheProvider.notifier);
  final remote = ref.watch(_coingeckoRatesRemoteProvider);

  remote.whenOrNull(data: (data) {
    cache.updateRates(data);
  });

  return remote.asData?.value ?? cache.rates;
});
