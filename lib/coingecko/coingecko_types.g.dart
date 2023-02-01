// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinGeckoRate _$$_CoinGeckoRateFromJson(Map json) => _$_CoinGeckoRate(
      name: json['name'] as String,
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_CoinGeckoRateToJson(_$_CoinGeckoRate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unit': instance.unit,
      'value': instance.value,
      'type': instance.type,
    };

_$_CoinGeckoRates _$$_CoinGeckoRatesFromJson(Map json) => _$_CoinGeckoRates(
      rates: (json['rates'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                CoinGeckoRate.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_CoinGeckoRatesToJson(_$_CoinGeckoRates instance) =>
    <String, dynamic>{
      'rates': instance.rates.map((k, e) => MapEntry(k, e.toJson())),
    };
