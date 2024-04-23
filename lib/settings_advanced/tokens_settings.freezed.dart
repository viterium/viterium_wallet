// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokens_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokensSettings _$TokensSettingsFromJson(Map<String, dynamic> json) {
  return _TokenOrderSettings.fromJson(json);
}

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
      _$TokensSettingsCopyWithImpl<$Res, TokensSettings>;
  @useResult
  $Res call({TokenSortOption sortOption});
}

/// @nodoc
class _$TokensSettingsCopyWithImpl<$Res, $Val extends TokensSettings>
    implements $TokensSettingsCopyWith<$Res> {
  _$TokensSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortOption = null,
  }) {
    return _then(_value.copyWith(
      sortOption: null == sortOption
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as TokenSortOption,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenOrderSettingsImplCopyWith<$Res>
    implements $TokensSettingsCopyWith<$Res> {
  factory _$$TokenOrderSettingsImplCopyWith(_$TokenOrderSettingsImpl value,
          $Res Function(_$TokenOrderSettingsImpl) then) =
      __$$TokenOrderSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenSortOption sortOption});
}

/// @nodoc
class __$$TokenOrderSettingsImplCopyWithImpl<$Res>
    extends _$TokensSettingsCopyWithImpl<$Res, _$TokenOrderSettingsImpl>
    implements _$$TokenOrderSettingsImplCopyWith<$Res> {
  __$$TokenOrderSettingsImplCopyWithImpl(_$TokenOrderSettingsImpl _value,
      $Res Function(_$TokenOrderSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortOption = null,
  }) {
    return _then(_$TokenOrderSettingsImpl(
      sortOption: null == sortOption
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as TokenSortOption,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenOrderSettingsImpl implements _TokenOrderSettings {
  const _$TokenOrderSettingsImpl({required this.sortOption});

  factory _$TokenOrderSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenOrderSettingsImplFromJson(json);

  @override
  final TokenSortOption sortOption;

  @override
  String toString() {
    return 'TokensSettings(sortOption: $sortOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenOrderSettingsImpl &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sortOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenOrderSettingsImplCopyWith<_$TokenOrderSettingsImpl> get copyWith =>
      __$$TokenOrderSettingsImplCopyWithImpl<_$TokenOrderSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenOrderSettingsImplToJson(
      this,
    );
  }
}

abstract class _TokenOrderSettings implements TokensSettings {
  const factory _TokenOrderSettings(
      {required final TokenSortOption sortOption}) = _$TokenOrderSettingsImpl;

  factory _TokenOrderSettings.fromJson(Map<String, dynamic> json) =
      _$TokenOrderSettingsImpl.fromJson;

  @override
  TokenSortOption get sortOption;
  @override
  @JsonKey(ignore: true)
  _$$TokenOrderSettingsImplCopyWith<_$TokenOrderSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
