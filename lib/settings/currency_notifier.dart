import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:viterium_wallet/util/sharedprefsutil.dart';

import '../settings/available_currency.dart';

class CurrencyNotifier extends StateNotifier<AvailableCurrency> {
  final SharedPrefsUtil sharedPrefsUtil;
  CurrencyNotifier(
    AvailableCurrency currency,
    this.sharedPrefsUtil,
  ) : super(currency);

  Future<void> updateCurrency(AvailableCurrency currency) {
    state = currency;
    return sharedPrefsUtil.setCurrency(currency);
  }
}
