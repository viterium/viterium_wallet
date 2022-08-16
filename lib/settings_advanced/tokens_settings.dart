import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens_settings.freezed.dart';
part 'tokens_settings.g.dart';

enum TokenSortOption {
  custom,
  nameAscending,
  nameDescending,
  valueAscending,
  valueDescending,
}

@freezed
class TokensSettings with _$TokensSettings {
  const factory TokensSettings({
    required TokenSortOption sortOption,
  }) = _TokenOrderSettings;

  factory TokensSettings.fromJson(Map<String, dynamic> json) =>
      _$TokensSettingsFromJson(json);
}
