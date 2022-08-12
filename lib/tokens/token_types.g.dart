// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CachedTokenIcon _$$_CachedTokenIconFromJson(Map json) => _$_CachedTokenIcon(
      icon: TokenIcon.fromJson(Map<String, dynamic>.from(json['icon'] as Map)),
      cacheDate: DateTime.parse(json['cacheDate'] as String),
    );

Map<String, dynamic> _$$_CachedTokenIconToJson(_$_CachedTokenIcon instance) =>
    <String, dynamic>{
      'icon': instance.icon.toJson(),
      'cacheDate': instance.cacheDate.toIso8601String(),
    };

_$_TokenIconAsset _$$_TokenIconAssetFromJson(Map json) => _$_TokenIconAsset(
      path: json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TokenIconAssetToJson(_$_TokenIconAsset instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$_TokenIconUrl _$$_TokenIconUrlFromJson(Map json) => _$_TokenIconUrl(
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TokenIconUrlToJson(_$_TokenIconUrl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'runtimeType': instance.$type,
    };

_$_TokenState _$$_TokenStateFromJson(Map json) => _$_TokenState(
      enabled: json['enabled'] as bool? ?? false,
      tokenInfo: json['tokenInfo'] == null
          ? null
          : TokenInfo.fromJson(
              Map<String, dynamic>.from(json['tokenInfo'] as Map)),
    );

Map<String, dynamic> _$$_TokenStateToJson(_$_TokenState instance) {
  final val = <String, dynamic>{
    'enabled': instance.enabled,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tokenInfo', instance.tokenInfo?.toJson());
  return val;
}

_$_TokenStateMapping _$$_TokenStateMappingFromJson(Map json) =>
    _$_TokenStateMapping(
      states: json['states'] == null
          ? const IMapConst({})
          : IMap<String, TokenState>.fromJson(
              Map<String, Object?>.from(json['states'] as Map),
              (value) => value as String,
              (value) =>
                  TokenState.fromJson(Map<String, dynamic>.from(value as Map))),
    );

Map<String, dynamic> _$$_TokenStateMappingToJson(
        _$_TokenStateMapping instance) =>
    <String, dynamic>{
      'states': instance.states.toJson(
        (value) => value,
        (value) => value.toJson(),
      ),
    };
