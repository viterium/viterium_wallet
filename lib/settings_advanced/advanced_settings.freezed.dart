// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvancedSettings _$AdvancedSettingsFromJson(Map<String, dynamic> json) {
  return _AdvancedSettings.fromJson(json);
}

/// @nodoc
mixin _$AdvancedSettings {
  bool get defiEnabled => throw _privateConstructorUsedError;
  bool get autoReceiveEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedSettingsCopyWith<AdvancedSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedSettingsCopyWith<$Res> {
  factory $AdvancedSettingsCopyWith(
          AdvancedSettings value, $Res Function(AdvancedSettings) then) =
      _$AdvancedSettingsCopyWithImpl<$Res, AdvancedSettings>;
  @useResult
  $Res call({bool defiEnabled, bool autoReceiveEnabled});
}

/// @nodoc
class _$AdvancedSettingsCopyWithImpl<$Res, $Val extends AdvancedSettings>
    implements $AdvancedSettingsCopyWith<$Res> {
  _$AdvancedSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defiEnabled = null,
    Object? autoReceiveEnabled = null,
  }) {
    return _then(_value.copyWith(
      defiEnabled: null == defiEnabled
          ? _value.defiEnabled
          : defiEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      autoReceiveEnabled: null == autoReceiveEnabled
          ? _value.autoReceiveEnabled
          : autoReceiveEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdvancedSettingsCopyWith<$Res>
    implements $AdvancedSettingsCopyWith<$Res> {
  factory _$$_AdvancedSettingsCopyWith(
          _$_AdvancedSettings value, $Res Function(_$_AdvancedSettings) then) =
      __$$_AdvancedSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool defiEnabled, bool autoReceiveEnabled});
}

/// @nodoc
class __$$_AdvancedSettingsCopyWithImpl<$Res>
    extends _$AdvancedSettingsCopyWithImpl<$Res, _$_AdvancedSettings>
    implements _$$_AdvancedSettingsCopyWith<$Res> {
  __$$_AdvancedSettingsCopyWithImpl(
      _$_AdvancedSettings _value, $Res Function(_$_AdvancedSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defiEnabled = null,
    Object? autoReceiveEnabled = null,
  }) {
    return _then(_$_AdvancedSettings(
      defiEnabled: null == defiEnabled
          ? _value.defiEnabled
          : defiEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      autoReceiveEnabled: null == autoReceiveEnabled
          ? _value.autoReceiveEnabled
          : autoReceiveEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdvancedSettings implements _AdvancedSettings {
  const _$_AdvancedSettings(
      {this.defiEnabled = true, this.autoReceiveEnabled = true});

  factory _$_AdvancedSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AdvancedSettingsFromJson(json);

  @override
  @JsonKey()
  final bool defiEnabled;
  @override
  @JsonKey()
  final bool autoReceiveEnabled;

  @override
  String toString() {
    return 'AdvancedSettings(defiEnabled: $defiEnabled, autoReceiveEnabled: $autoReceiveEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdvancedSettings &&
            (identical(other.defiEnabled, defiEnabled) ||
                other.defiEnabled == defiEnabled) &&
            (identical(other.autoReceiveEnabled, autoReceiveEnabled) ||
                other.autoReceiveEnabled == autoReceiveEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, defiEnabled, autoReceiveEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvancedSettingsCopyWith<_$_AdvancedSettings> get copyWith =>
      __$$_AdvancedSettingsCopyWithImpl<_$_AdvancedSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvancedSettingsToJson(
      this,
    );
  }
}

abstract class _AdvancedSettings implements AdvancedSettings {
  const factory _AdvancedSettings(
      {final bool defiEnabled,
      final bool autoReceiveEnabled}) = _$_AdvancedSettings;

  factory _AdvancedSettings.fromJson(Map<String, dynamic> json) =
      _$_AdvancedSettings.fromJson;

  @override
  bool get defiEnabled;
  @override
  bool get autoReceiveEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_AdvancedSettingsCopyWith<_$_AdvancedSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
