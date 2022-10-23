// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitex_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeRateVitex _$$_ExchangeRateVitexFromJson(Map json) =>
    _$_ExchangeRateVitex(
      VitexExchangeRate.fromJson(
          Map<String, dynamic>.from(json['exchangeRate'] as Map)),
    );

Map<String, dynamic> _$$_ExchangeRateVitexToJson(
        _$_ExchangeRateVitex instance) =>
    <String, dynamic>{
      'exchangeRate': instance.exchangeRate.toJson(),
    };

_$_VitexExchangeRate _$$_VitexExchangeRateFromJson(Map json) =>
    _$_VitexExchangeRate(
      tokenId: json['tokenId'] as String,
      tokenSymbol: json['tokenSymbol'] as String?,
      usdRate: (json['usdRate'] as num).toDouble(),
      cnyRate: (json['cnyRate'] as num).toDouble(),
      rubRate: json['rubRate'] == null
          ? null
          : Decimal.fromJson(json['rubRate'] as String),
      krwRate: json['krwRate'] == null
          ? null
          : Decimal.fromJson(json['krwRate'] as String),
      tryRate: json['tryRate'] == null
          ? null
          : Decimal.fromJson(json['tryRate'] as String),
      vndRate: json['vndRate'] == null
          ? null
          : Decimal.fromJson(json['vndRate'] as String),
      eurRate: json['eurRate'] == null
          ? null
          : Decimal.fromJson(json['eurRate'] as String),
      gbpRate: json['gbpRate'] == null
          ? null
          : Decimal.fromJson(json['gbpRate'] as String),
      inrRate: json['inrRate'] == null
          ? null
          : Decimal.fromJson(json['inrRate'] as String),
      uahRate: json['uahRate'] == null
          ? null
          : Decimal.fromJson(json['uahRate'] as String),
      btcRate: (json['btcRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_VitexExchangeRateToJson(
    _$_VitexExchangeRate instance) {
  final val = <String, dynamic>{
    'tokenId': instance.tokenId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tokenSymbol', instance.tokenSymbol);
  val['usdRate'] = instance.usdRate;
  val['cnyRate'] = instance.cnyRate;
  writeNotNull('rubRate', instance.rubRate?.toJson());
  writeNotNull('krwRate', instance.krwRate?.toJson());
  writeNotNull('tryRate', instance.tryRate?.toJson());
  writeNotNull('vndRate', instance.vndRate?.toJson());
  writeNotNull('eurRate', instance.eurRate?.toJson());
  writeNotNull('gbpRate', instance.gbpRate?.toJson());
  writeNotNull('inrRate', instance.inrRate?.toJson());
  writeNotNull('uahRate', instance.uahRate?.toJson());
  val['btcRate'] = instance.btcRate;
  return val;
}
