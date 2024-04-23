// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pow_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowConfigSettingsImpl _$$PowConfigSettingsImplFromJson(Map json) =>
    _$PowConfigSettingsImpl(
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

Map<String, dynamic> _$$PowConfigSettingsImplToJson(
        _$PowConfigSettingsImpl instance) =>
    <String, dynamic>{
      'options': instance.options.toJson(
        (value) => value.toJson(),
      ),
      'selected': instance.selected.toJson(),
    };

_$PowConfigDefaultImpl _$$PowConfigDefaultImplFromJson(Map json) =>
    _$PowConfigDefaultImpl(
      name: json['name'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PowConfigDefaultImplToJson(
        _$PowConfigDefaultImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$PowConfigCustomImpl _$$PowConfigCustomImplFromJson(Map json) =>
    _$PowConfigCustomImpl(
      name: json['name'] as String,
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PowConfigCustomImplToJson(
        _$PowConfigCustomImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'runtimeType': instance.$type,
    };
