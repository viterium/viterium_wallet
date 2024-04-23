// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinGeckoRateImpl _$$CoinGeckoRateImplFromJson(Map json) =>
    _$CoinGeckoRateImpl(
      name: json['name'] as String,
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$CoinGeckoRateImplToJson(_$CoinGeckoRateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unit': instance.unit,
      'value': instance.value,
      'type': instance.type,
    };

_$CoinGeckoRatesImpl _$$CoinGeckoRatesImplFromJson(Map json) =>
    _$CoinGeckoRatesImpl(
      rates: (json['rates'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                CoinGeckoRate.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
    );

Map<String, dynamic> _$$CoinGeckoRatesImplToJson(
        _$CoinGeckoRatesImpl instance) =>
    <String, dynamic>{
      'rates': instance.rates.map((k, e) => MapEntry(k, e.toJson())),
    };
