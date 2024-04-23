// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CachedTokenIconImpl _$$CachedTokenIconImplFromJson(Map json) =>
    _$CachedTokenIconImpl(
      icon: TokenIcon.fromJson(Map<String, dynamic>.from(json['icon'] as Map)),
      cacheDate: DateTime.parse(json['cacheDate'] as String),
    );

Map<String, dynamic> _$$CachedTokenIconImplToJson(
        _$CachedTokenIconImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon.toJson(),
      'cacheDate': instance.cacheDate.toIso8601String(),
    };

_$TokenIconAssetImpl _$$TokenIconAssetImplFromJson(Map json) =>
    _$TokenIconAssetImpl(
      path: json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TokenIconAssetImplToJson(
        _$TokenIconAssetImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$TokenIconUrlImpl _$$TokenIconUrlImplFromJson(Map json) => _$TokenIconUrlImpl(
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TokenIconUrlImplToJson(_$TokenIconUrlImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'runtimeType': instance.$type,
    };

_$TokenStateImpl _$$TokenStateImplFromJson(Map json) => _$TokenStateImpl(
      enabled: json['enabled'] as bool? ?? false,
      tokenInfo: json['tokenInfo'] == null
          ? null
          : TokenInfo.fromJson(
              Map<String, dynamic>.from(json['tokenInfo'] as Map)),
    );

Map<String, dynamic> _$$TokenStateImplToJson(_$TokenStateImpl instance) {
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

_$TokenStateMappingImpl _$$TokenStateMappingImplFromJson(Map json) =>
    _$TokenStateMappingImpl(
      states: json['states'] == null
          ? const IMapConst({})
          : IMap<String, TokenState>.fromJson(
              Map<String, Object?>.from(json['states'] as Map),
              (value) => value as String,
              (value) =>
                  TokenState.fromJson(Map<String, dynamic>.from(value as Map))),
    );

Map<String, dynamic> _$$TokenStateMappingImplToJson(
        _$TokenStateMappingImpl instance) =>
    <String, dynamic>{
      'states': instance.states.toJson(
        (value) => value,
        (value) => value.toJson(),
      ),
    };
