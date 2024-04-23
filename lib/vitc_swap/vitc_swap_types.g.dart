// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitc_swap_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VitcSwapTokenCacheImpl _$$VitcSwapTokenCacheImplFromJson(Map json) =>
    _$VitcSwapTokenCacheImpl(
      tradingTokens: json['tradingTokens'] == null
          ? const IListConst(kVitcSwapTokenIdList)
          : IList<String>.fromJson(
              json['tradingTokens'], (value) => value as String),
      lastHeight: json['lastHeight'] as int? ?? kVitcSwapLastHeight,
    );

Map<String, dynamic> _$$VitcSwapTokenCacheImplToJson(
        _$VitcSwapTokenCacheImpl instance) =>
    <String, dynamic>{
      'tradingTokens': instance.tradingTokens.toJson(
        (value) => value,
      ),
      'lastHeight': instance.lastHeight,
    };

_$VitcSwapSettingsImpl _$$VitcSwapSettingsImplFromJson(Map json) =>
    _$VitcSwapSettingsImpl(
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

Map<String, dynamic> _$$VitcSwapSettingsImplToJson(
        _$VitcSwapSettingsImpl instance) =>
    <String, dynamic>{
      'tokenCache': instance.tokenCache.toJson(),
      'fromToken': instance.fromToken.toJson(),
      'toToken': instance.toToken.toJson(),
      'slippage': instance.slippage,
    };
