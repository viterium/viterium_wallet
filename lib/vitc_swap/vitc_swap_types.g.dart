// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitc_swap_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VitcSwapTokenCache _$$_VitcSwapTokenCacheFromJson(Map json) =>
    _$_VitcSwapTokenCache(
      tradingTokens: json['tradingTokens'] == null
          ? const IListConst(kVitcSwapTokenIdList)
          : IList<String>.fromJson(
              json['tradingTokens'], (value) => value as String),
      lastHeight: json['lastHeight'] as int? ?? kVitcSwapLastHeight,
    );

Map<String, dynamic> _$$_VitcSwapTokenCacheToJson(
        _$_VitcSwapTokenCache instance) =>
    <String, dynamic>{
      'tradingTokens': instance.tradingTokens.toJson(
        (value) => value,
      ),
      'lastHeight': instance.lastHeight,
    };

_$_VitcSwapSettings _$$_VitcSwapSettingsFromJson(Map json) =>
    _$_VitcSwapSettings(
      tokenCache: json['tokenCache'] == null
          ? const VitcSwapTokenCache()
          : VitcSwapTokenCache.fromJson(
              Map<String, dynamic>.from(json['tokenCache'] as Map)),
      fromToken: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['fromToken'] as Map)),
      toToken:
          TokenInfo.fromJson(Map<String, dynamic>.from(json['toToken'] as Map)),
      slippage: (json['slippage'] as num?)?.toDouble() ?? 0.005,
    );

Map<String, dynamic> _$$_VitcSwapSettingsToJson(_$_VitcSwapSettings instance) =>
    <String, dynamic>{
      'tokenCache': instance.tokenCache.toJson(),
      'fromToken': instance.fromToken.toJson(),
      'toToken': instance.toToken.toJson(),
      'slippage': instance.slippage,
    };
