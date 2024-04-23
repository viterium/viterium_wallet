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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvancedSettings _$AdvancedSettingsFromJson(Map<String, dynamic> json) {
  return _AdvancedSettings.fromJson(json);
}

/// @nodoc
mixin _$AdvancedSettings {
  bool get defiEnabled => throw _privateConstructorUsedError;
  bool get autoReceiveEnabled => throw _privateConstructorUsedError;
  bool get showFiatValue => throw _privateConstructorUsedError;

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
  $Res call({bool defiEnabled, bool autoReceiveEnabled, bool showFiatValue});
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
    Object? showFiatValue = null,
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
      showFiatValue: null == showFiatValue
          ? _value.showFiatValue
          : showFiatValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvancedSettingsImplCopyWith<$Res>
    implements $AdvancedSettingsCopyWith<$Res> {
  factory _$$AdvancedSettingsImplCopyWith(_$AdvancedSettingsImpl value,
          $Res Function(_$AdvancedSettingsImpl) then) =
      __$$AdvancedSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool defiEnabled, bool autoReceiveEnabled, bool showFiatValue});
}

/// @nodoc
class __$$AdvancedSettingsImplCopyWithImpl<$Res>
    extends _$AdvancedSettingsCopyWithImpl<$Res, _$AdvancedSettingsImpl>
    implements _$$AdvancedSettingsImplCopyWith<$Res> {
  __$$AdvancedSettingsImplCopyWithImpl(_$AdvancedSettingsImpl _value,
      $Res Function(_$AdvancedSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defiEnabled = null,
    Object? autoReceiveEnabled = null,
    Object? showFiatValue = null,
  }) {
    return _then(_$AdvancedSettingsImpl(
      defiEnabled: null == defiEnabled
          ? _value.defiEnabled
          : defiEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      autoReceiveEnabled: null == autoReceiveEnabled
          ? _value.autoReceiveEnabled
          : autoReceiveEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      showFiatValue: null == showFiatValue
          ? _value.showFiatValue
          : showFiatValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedSettingsImpl implements _AdvancedSettings {
  const _$AdvancedSettingsImpl(
      {this.defiEnabled = true,
      this.autoReceiveEnabled = true,
      this.showFiatValue = true});

  factory _$AdvancedSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedSettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool defiEnabled;
  @override
  @JsonKey()
  final bool autoReceiveEnabled;
  @override
  @JsonKey()
  final bool showFiatValue;

  @override
  String toString() {
    return 'AdvancedSettings(defiEnabled: $defiEnabled, autoReceiveEnabled: $autoReceiveEnabled, showFiatValue: $showFiatValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedSettingsImpl &&
            (identical(other.defiEnabled, defiEnabled) ||
                other.defiEnabled == defiEnabled) &&
            (identical(other.autoReceiveEnabled, autoReceiveEnabled) ||
                other.autoReceiveEnabled == autoReceiveEnabled) &&
            (identical(other.showFiatValue, showFiatValue) ||
                other.showFiatValue == showFiatValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, defiEnabled, autoReceiveEnabled, showFiatValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedSettingsImplCopyWith<_$AdvancedSettingsImpl> get copyWith =>
      __$$AdvancedSettingsImplCopyWithImpl<_$AdvancedSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedSettingsImplToJson(
      this,
    );
  }
}

abstract class _AdvancedSettings implements AdvancedSettings {
  const factory _AdvancedSettings(
      {final bool defiEnabled,
      final bool autoReceiveEnabled,
      final bool showFiatValue}) = _$AdvancedSettingsImpl;

  factory _AdvancedSettings.fromJson(Map<String, dynamic> json) =
      _$AdvancedSettingsImpl.fromJson;

  @override
  bool get defiEnabled;
  @override
  bool get autoReceiveEnabled;
  @override
  bool get showFiatValue;
  @override
  @JsonKey(ignore: true)
  _$$AdvancedSettingsImplCopyWith<_$AdvancedSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
