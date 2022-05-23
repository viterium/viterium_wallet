import 'package:freezed_annotation/freezed_annotation.dart';

import 'token_constants.dart';

part 'token_types.freezed.dart';
part 'token_types.g.dart';

@freezed
class CachedTokenIcon with _$CachedTokenIcon {
  const factory CachedTokenIcon({
    required TokenIcon icon,
    required DateTime cacheDate,
  }) = _CachedTokenIcon;

  factory CachedTokenIcon.fromJson(Map<String, dynamic> json) =>
      _$CachedTokenIconFromJson(json);
}

@freezed
class TokenIcon with _$TokenIcon {
  static const defaultIcon = TokenIcon.asset(path: defaultTokenIconPath);
  const factory TokenIcon.asset({
    required String path,
  }) = _TokenIconAsset;

  const factory TokenIcon.url({
    required String url,
  }) = _TokenIconUrl;

  factory TokenIcon.fromJson(Map<String, dynamic> json) =>
      _$TokenIconFromJson(json);
}
