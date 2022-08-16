// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tokens_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokensSettings _$TokensSettingsFromJson(Map<String, dynamic> json) {
  return _TokenOrderSettings.fromJson(json);
}

/// @nodoc
class _$TokensSettingsTearOff {
  const _$TokensSettingsTearOff();

  _TokenOrderSettings call({required TokenSortOption sortOption}) {
    return _TokenOrderSettings(
      sortOption: sortOption,
    );
  }

  TokensSettings fromJson(Map<String, Object?> json) {
    return TokensSettings.fromJson(json);
  }
}

/// @nodoc
const $TokensSettings = _$TokensSettingsTearOff();

/// @nodoc
mixin _$TokensSettings {
  TokenSortOption get sortOption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensSettingsCopyWith<TokensSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensSettingsCopyWith<$Res> {
  factory $TokensSettingsCopyWith(
          TokensSettings value, $Res Function(TokensSettings) then) =
      _$TokensSettingsCopyWithImpl<$Res>;
  $Res call({TokenSortOption sortOption});
}

/// @nodoc
class _$TokensSettingsCopyWithImpl<$Res>
    implements $TokensSettingsCopyWith<$Res> {
  _$TokensSettingsCopyWithImpl(this._value, this._then);

  final TokensSettings _value;
  // ignore: unused_field
  final $Res Function(TokensSettings) _then;

  @override
  $Res call({
    Object? sortOption = freezed,
  }) {
    return _then(_value.copyWith(
      sortOption: sortOption == freezed
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as TokenSortOption,
    ));
  }
}

/// @nodoc
abstract class _$TokenOrderSettingsCopyWith<$Res>
    implements $TokensSettingsCopyWith<$Res> {
  factory _$TokenOrderSettingsCopyWith(
          _TokenOrderSettings value, $Res Function(_TokenOrderSettings) then) =
      __$TokenOrderSettingsCopyWithImpl<$Res>;
  @override
  $Res call({TokenSortOption sortOption});
}

/// @nodoc
class __$TokenOrderSettingsCopyWithImpl<$Res>
    extends _$TokensSettingsCopyWithImpl<$Res>
    implements _$TokenOrderSettingsCopyWith<$Res> {
  __$TokenOrderSettingsCopyWithImpl(
      _TokenOrderSettings _value, $Res Function(_TokenOrderSettings) _then)
      : super(_value, (v) => _then(v as _TokenOrderSettings));

  @override
  _TokenOrderSettings get _value => super._value as _TokenOrderSettings;

  @override
  $Res call({
    Object? sortOption = freezed,
  }) {
    return _then(_TokenOrderSettings(
      sortOption: sortOption == freezed
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as TokenSortOption,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenOrderSettings implements _TokenOrderSettings {
  const _$_TokenOrderSettings({required this.sortOption});

  factory _$_TokenOrderSettings.fromJson(Map<String, dynamic> json) =>
      _$$_TokenOrderSettingsFromJson(json);

  @override
  final TokenSortOption sortOption;

  @override
  String toString() {
    return 'TokensSettings(sortOption: $sortOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenOrderSettings &&
            const DeepCollectionEquality()
                .equals(other.sortOption, sortOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sortOption));

  @JsonKey(ignore: true)
  @override
  _$TokenOrderSettingsCopyWith<_TokenOrderSettings> get copyWith =>
      __$TokenOrderSettingsCopyWithImpl<_TokenOrderSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenOrderSettingsToJson(this);
  }
}

abstract class _TokenOrderSettings implements TokensSettings {
  const factory _TokenOrderSettings({required TokenSortOption sortOption}) =
      _$_TokenOrderSettings;

  factory _TokenOrderSettings.fromJson(Map<String, dynamic> json) =
      _$_TokenOrderSettings.fromJson;

  @override
  TokenSortOption get sortOption;
  @override
  @JsonKey(ignore: true)
  _$TokenOrderSettingsCopyWith<_TokenOrderSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
