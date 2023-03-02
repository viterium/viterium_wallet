import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'coingecko_types.dart';

const _kCoinGeckoRatesKey = '_coingeckoRatesKey';

extension CoinGeckoRatesExtension on SettingsRepository {
  CoinGeckoRates getCoinGeckoRates() {
    return box.tryGet(
          _kCoinGeckoRatesKey,
          typeFactory: CoinGeckoRates.fromJson,
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
