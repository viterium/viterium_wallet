// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'advanced_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvancedSettings _$AdvancedSettingsFromJson(Map<String, dynamic> json) {
  return _AdvancedSettings.fromJson(json);
}

/// @nodoc
class _$AdvancedSettingsTearOff {
  const _$AdvancedSettingsTearOff();

  _AdvancedSettings call({bool defiEnabled = true}) {
    return _AdvancedSettings(
      defiEnabled: defiEnabled,
    );
  }

  AdvancedSettings fromJson(Map<String, Object?> json) {
    return AdvancedSettings.fromJson(json);
  }
}

/// @nodoc
const $AdvancedSettings = _$AdvancedSettingsTearOff();

/// @nodoc
mixin _$AdvancedSettings {
  bool get defiEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedSettingsCopyWith<AdvancedSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedSettingsCopyWith<$Res> {
  factory $AdvancedSettingsCopyWith(
          AdvancedSettings value, $Res Function(AdvancedSettings) then) =
      _$AdvancedSettingsCopyWithImpl<$Res>;
  $Res call({bool defiEnabled});
}

/// @nodoc
class _$AdvancedSettingsCopyWithImpl<$Res>
    implements $AdvancedSettingsCopyWith<$Res> {
  _$AdvancedSettingsCopyWithImpl(this._value, this._then);

  final AdvancedSettings _value;
  // ignore: unused_field
  final $Res Function(AdvancedSettings) _then;

  @override
  $Res call({
    Object? defiEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      defiEnabled: defiEnabled == freezed
          ? _value.defiEnabled
          : defiEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AdvancedSettingsCopyWith<$Res>
    implements $AdvancedSettingsCopyWith<$Res> {
  factory _$AdvancedSettingsCopyWith(
          _AdvancedSettings value, $Res Function(_AdvancedSettings) then) =
      __$AdvancedSettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool defiEnabled});
}

/// @nodoc
class __$AdvancedSettingsCopyWithImpl<$Res>
    extends _$AdvancedSettingsCopyWithImpl<$Res>
    implements _$AdvancedSettingsCopyWith<$Res> {
  __$AdvancedSettingsCopyWithImpl(
      _AdvancedSettings _value, $Res Function(_AdvancedSettings) _then)
      : super(_value, (v) => _then(v as _AdvancedSettings));

  @override
  _AdvancedSettings get _value => super._value as _AdvancedSettings;

  @override
  $Res call({
    Object? defiEnabled = freezed,
  }) {
    return _then(_AdvancedSettings(
      defiEnabled: defiEnabled == freezed
          ? _value.defiEnabled
          : defiEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdvancedSettings implements _AdvancedSettings {
  const _$_AdvancedSettings({this.defiEnabled = true});

  factory _$_AdvancedSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AdvancedSettingsFromJson(json);

  @JsonKey()
  @override
  final bool defiEnabled;

  @override
  String toString() {
    return 'AdvancedSettings(defiEnabled: $defiEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSettings &&
            const DeepCollectionEquality()
                .equals(other.defiEnabled, defiEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(defiEnabled));

  @JsonKey(ignore: true)
  @override
  _$AdvancedSettingsCopyWith<_AdvancedSettings> get copyWith =>
      __$AdvancedSettingsCopyWithImpl<_AdvancedSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvancedSettingsToJson(this);
  }
}

abstract class _AdvancedSettings implements AdvancedSettings {
  const factory _AdvancedSettings({bool defiEnabled}) = _$_AdvancedSettings;

  factory _AdvancedSettings.fromJson(Map<String, dynamic> json) =
      _$_AdvancedSettings.fromJson;

  @override
  bool get defiEnabled;
  @override
  @JsonKey(ignore: true)
  _$AdvancedSettingsCopyWith<_AdvancedSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
