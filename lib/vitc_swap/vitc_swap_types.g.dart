// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitc_swap_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VitcSwapSettings _$$_VitcSwapSettingsFromJson(Map json) =>
    _$_VitcSwapSettings(
      tradingTokens: json['tradingTokens'] == null
          ? const IListConst([])
          : IList<String>.fromJson(
              json['tradingTokens'], (value) => value as String),
      fromToken: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['fromToken'] as Map)),
      toToken:
          TokenInfo.fromJson(Map<String, dynamic>.from(json['toToken'] as Map)),
      slippage: (json['slippage'] as num?)?.toDouble() ?? 0.005,
    );

Map<String, dynamic> _$$_VitcSwapSettingsToJson(_$_VitcSwapSettings instance) =>
    <String, dynamic>{
      'tradingTokens': instance.tradingTokens.toJson(
        (value) => value,
      ),
      'fromToken': instance.fromToken.toJson(),
      'toToken': instance.toToken.toJson(),
      'slippage': instance.slippage,
    };
