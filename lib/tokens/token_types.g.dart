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
