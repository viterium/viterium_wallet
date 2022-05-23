import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pow_types.freezed.dart';
part 'pow_types.g.dart';

@freezed
class PowConfigSettings with _$PowConfigSettings {
  const factory PowConfigSettings({
    @Default(const IListConst([PowConfig.defaultNode()]))
        IList<PowConfig> options,
    @Default(PowConfig.defaultNode()) PowConfig selected,
  }) = _PowConfigSettings;

  factory PowConfigSettings.fromJson(Map<String, dynamic> json) =>
      _$PowConfigSettingsFromJson(json);
}

@freezed
class PowConfig with _$PowConfig {
  const factory PowConfig.defaultNode({
    @Default('') String name,
  }) = _PowConfigDefault;
  const factory PowConfig.custom({
    required String name,
    required String url,
  }) = _PowConfigCustom;

  factory PowConfig.fromJson(Map<String, dynamic> json) =>
      _$PowConfigFromJson(json);
}

@freezed
class PowAddSheetState with _$PowAddSheetState {
  const factory PowAddSheetState({
    @Default(true) bool showNameHint,
    @Default(true) bool showUrlHint,
    @Default('') String nameValidationText,
    @Default('') String urlValidationText,
  }) = _PowAddSheetState;
}
