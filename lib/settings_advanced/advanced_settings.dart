import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_settings.freezed.dart';
part 'advanced_settings.g.dart';

@freezed
class AdvancedSettings with _$AdvancedSettings {
  const factory AdvancedSettings({
    @Default(true) bool defiEnabled,
  }) = _AdvancedSettings;

  factory AdvancedSettings.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSettingsFromJson(json);
}
