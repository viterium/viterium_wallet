// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvancedSettingsImpl _$$AdvancedSettingsImplFromJson(Map json) =>
    _$AdvancedSettingsImpl(
      defiEnabled: json['defiEnabled'] as bool? ?? true,
      autoReceiveEnabled: json['autoReceiveEnabled'] as bool? ?? true,
      showFiatValue: json['showFiatValue'] as bool? ?? true,
    );

Map<String, dynamic> _$$AdvancedSettingsImplToJson(
        _$AdvancedSettingsImpl instance) =>
    <String, dynamic>{
      'defiEnabled': instance.defiEnabled,
      'autoReceiveEnabled': instance.autoReceiveEnabled,
      'showFiatValue': instance.showFiatValue,
    };
