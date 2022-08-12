import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/core.dart';

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

@freezed
class TokenState with _$TokenState {
  const factory TokenState({
    @Default(false) bool enabled,
    required TokenInfo? tokenInfo,
  }) = _TokenState;

  factory TokenState.fromJson(Map<String, dynamic> json) =>
      _$TokenStateFromJson(json);
}

@freezed
class TokenStateMapping with _$TokenStateMapping {
  const factory TokenStateMapping({
    @Default(IMapConst({})) IMap<String, TokenState> states,
  }) = _TokenStateMapping;

  factory TokenStateMapping.fromJson(Map<String, dynamic> json) =>
      _$TokenStateMappingFromJson(json);
}

@freezed
class TokenInfoState with _$TokenInfoState {
  const factory TokenInfoState({
    required TokenInfo info,
    required TokenState state,
  }) = _TokenInfoState;
}
