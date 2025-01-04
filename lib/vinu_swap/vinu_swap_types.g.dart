// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vinu_swap_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VinuSwapTokenCacheImpl _$$VinuSwapTokenCacheImplFromJson(Map json) =>
    _$VinuSwapTokenCacheImpl(
      tradingTokens: json['tradingTokens'] == null
          ? const IListConst(kVinuSwapTokenIdList)
          : IList<String>.fromJson(
              json['tradingTokens'], (value) => value as String),
      lastHeight: json['lastHeight'] as int? ?? kVinuSwapLastHeight,
    );

Map<String, dynamic> _$$VinuSwapTokenCacheImplToJson(
        _$VinuSwapTokenCacheImpl instance) =>
    <String, dynamic>{
      'tradingTokens': instance.tradingTokens.toJson(
        (value) => value,
      ),
      'lastHeight': instance.lastHeight,
    };

_$VinuSwapSettingsImpl _$$VinuSwapSettingsImplFromJson(Map json) =>
    _$VinuSwapSettingsImpl(
      tokenCache: json['tokenCache'] == null
          ? const VinuSwapTokenCache()
          : VinuSwapTokenCache.fromJson(
              Map<String, dynamic>.from(json['tokenCache'] as Map)),
      fromToken: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['fromToken'] as Map)),
      toToken:
          TokenInfo.fromJson(Map<String, dynamic>.from(json['toToken'] as Map)),
      slippage: (json['slippage'] as num?)?.toDouble() ?? 0.005,
    );

Map<String, dynamic> _$$VinuSwapSettingsImplToJson(
        _$VinuSwapSettingsImpl instance) =>
    <String, dynamic>{
      'tokenCache': instance.tokenCache.toJson(),
      'fromToken': instance.fromToken.toJson(),
      'toToken': instance.toToken.toJson(),
      'slippage': instance.slippage,
    };
