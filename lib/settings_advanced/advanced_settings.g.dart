// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdvancedSettings _$$_AdvancedSettingsFromJson(Map json) =>
    _$_AdvancedSettings(
      defiEnabled: json['defiEnabled'] as bool? ?? true,
      autoReceiveEnabled: json['autoReceiveEnabled'] as bool? ?? true,
      showFiatValue: json['showFiatValue'] as bool? ?? true,
    );

Map<String, dynamic> _$$_AdvancedSettingsToJson(_$_AdvancedSettings instance) =>
    <String, dynamic>{
      'defiEnabled': instance.defiEnabled,
      'autoReceiveEnabled': instance.autoReceiveEnabled,
      'showFiatValue': instance.showFiatValue,
    };
