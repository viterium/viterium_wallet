import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

import '../settings/available_currency.dart';

part 'vitex_types.freezed.dart';
part 'vitex_types.g.dart';

@freezed
class VitexExchangeRate with _$VitexExchangeRate {
  static VitexExchangeRate zero({TokenId tokenId = viteTokenId}) =>
      VitexExchangeRate(
        tokenId: tokenId,
        usdRate: 0,
        cnyRate: 0,
        rubRate: Decimal.zero,
        krwRate: Decimal.zero,
        tryRate: Decimal.zero,
        vndRate: Decimal.zero,
        eurRate: Decimal.zero,
        gbpRate: Decimal.zero,
        inrRate: Decimal.zero,
        uahRate: Decimal.zero,
        btcRate: 0,
      );

  const VitexExchangeRate._();

  const factory VitexExchangeRate({
    required TokenId tokenId,
    String? tokenSymbol,
    required double usdRate,
    required double cnyRate,
    Decimal? rubRate,
    Decimal? krwRate,
    Decimal? tryRate,
    Decimal? vndRate,
    Decimal? eurRate,
    Decimal? gbpRate,
    Decimal? inrRate,
    Decimal? uahRate,
    required double btcRate,
  }) = _VitexExchangeRate;

  factory VitexExchangeRate.fromJson(Map<String, dynamic> json) =>
      _$VitexExchangeRateFromJson(json);

  Decimal fiatRate(AvailableCurrencies currency) {
    switch (currency) {
      case AvailableCurrencies.USD:
        return Decimal.parse('$usdRate');
      case AvailableCurrencies.EUR:
        return eurRate ?? Decimal.zero;
      case AvailableCurrencies.CNY:
        return Decimal.parse('$cnyRate');
      case AvailableCurrencies.GBP:
        return gbpRate ?? Decimal.zero;
      case AvailableCurrencies.UAH:
        return uahRate ?? Decimal.zero;
      case AvailableCurrencies.TRY:
        return tryRate ?? Decimal.zero;
      case AvailableCurrencies.KRW:
        return krwRate ?? Decimal.zero;
      case AvailableCurrencies.RUB:
        return rubRate ?? Decimal.zero;
      case AvailableCurrencies.INR:
        return inrRate ?? Decimal.zero;
      case AvailableCurrencies.VND:
        return vndRate ?? Decimal.zero;
    }
  }
}
