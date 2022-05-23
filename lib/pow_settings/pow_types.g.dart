// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pow_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PowConfigSettings _$$_PowConfigSettingsFromJson(Map json) =>
    _$_PowConfigSettings(
      options: json['options'] == null
          ? const IListConst([PowConfig.defaultNode()])
          : IList<PowConfig>.fromJson(
              json['options'],
              (value) =>
                  PowConfig.fromJson(Map<String, dynamic>.from(value as Map))),
      selected: json['selected'] == null
          ? const PowConfig.defaultNode()
          : PowConfig.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map)),
    );

Map<String, dynamic> _$$_PowConfigSettingsToJson(
        _$_PowConfigSettings instance) =>
    <String, dynamic>{
      'options': instance.options.toJson(
        (value) => value.toJson(),
      ),
      'selected': instance.selected.toJson(),
    };

_$_PowConfigDefault _$$_PowConfigDefaultFromJson(Map json) =>
    _$_PowConfigDefault(
      name: json['name'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PowConfigDefaultToJson(_$_PowConfigDefault instance) =>
    <String, dynamic>{
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$_PowConfigCustom _$$_PowConfigCustomFromJson(Map json) => _$_PowConfigCustom(
      name: json['name'] as String,
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PowConfigCustomToJson(_$_PowConfigCustom instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'runtimeType': instance.$type,
    };
