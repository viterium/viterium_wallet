// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pow_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PowConfigSettings _$PowConfigSettingsFromJson(Map<String, dynamic> json) {
  return _PowConfigSettings.fromJson(json);
}

/// @nodoc
mixin _$PowConfigSettings {
  IList<PowConfig> get options => throw _privateConstructorUsedError;
  PowConfig get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PowConfigSettingsCopyWith<PowConfigSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowConfigSettingsCopyWith<$Res> {
  factory $PowConfigSettingsCopyWith(
          PowConfigSettings value, $Res Function(PowConfigSettings) then) =
      _$PowConfigSettingsCopyWithImpl<$Res, PowConfigSettings>;
  @useResult
  $Res call({IList<PowConfig> options, PowConfig selected});

  $PowConfigCopyWith<$Res> get selected;
}

/// @nodoc
class _$PowConfigSettingsCopyWithImpl<$Res, $Val extends PowConfigSettings>
    implements $PowConfigSettingsCopyWith<$Res> {
  _$PowConfigSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<PowConfig>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as PowConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PowConfigCopyWith<$Res> get selected {
    return $PowConfigCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PowConfigSettingsCopyWith<$Res>
    implements $PowConfigSettingsCopyWith<$Res> {
  factory _$$_PowConfigSettingsCopyWith(_$_PowConfigSettings value,
          $Res Function(_$_PowConfigSettings) then) =
      __$$_PowConfigSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<PowConfig> options, PowConfig selected});

  @override
  $PowConfigCopyWith<$Res> get selected;
}

/// @nodoc
class __$$_PowConfigSettingsCopyWithImpl<$Res>
    extends _$PowConfigSettingsCopyWithImpl<$Res, _$_PowConfigSettings>
    implements _$$_PowConfigSettingsCopyWith<$Res> {
  __$$_PowConfigSettingsCopyWithImpl(
      _$_PowConfigSettings _value, $Res Function(_$_PowConfigSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? selected = null,
  }) {
    return _then(_$_PowConfigSettings(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<PowConfig>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as PowConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PowConfigSettings implements _PowConfigSettings {
  const _$_PowConfigSettings(
      {this.options = const IListConst([PowConfig.defaultNode()]),
      this.selected = const PowConfig.defaultNode()});

  factory _$_PowConfigSettings.fromJson(Map<String, dynamic> json) =>
      _$$_PowConfigSettingsFromJson(json);

  @override
  @JsonKey()
  final IList<PowConfig> options;
  @override
  @JsonKey()
  final PowConfig selected;

  @override
  String toString() {
    return 'PowConfigSettings(options: $options, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PowConfigSettings &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(options), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowConfigSettingsCopyWith<_$_PowConfigSettings> get copyWith =>
      __$$_PowConfigSettingsCopyWithImpl<_$_PowConfigSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowConfigSettingsToJson(
      this,
    );
  }
}

abstract class _PowConfigSettings implements PowConfigSettings {
  const factory _PowConfigSettings(
      {final IList<PowConfig> options,
      final PowConfig selected}) = _$_PowConfigSettings;

  factory _PowConfigSettings.fromJson(Map<String, dynamic> json) =
      _$_PowConfigSettings.fromJson;

  @override
  IList<PowConfig> get options;
  @override
  PowConfig get selected;
  @override
  @JsonKey(ignore: true)
  _$$_PowConfigSettingsCopyWith<_$_PowConfigSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

PowConfig _$PowConfigFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'defaultNode':
      return _PowConfigDefault.fromJson(json);
    case 'custom':
      return _PowConfigCustom.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PowConfig',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PowConfig {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) defaultNode,
    required TResult Function(String name, String url) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? defaultNode,
    TResult? Function(String name, String url)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? defaultNode,
    TResult Function(String name, String url)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PowConfigDefault value) defaultNode,
    required TResult Function(_PowConfigCustom value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PowConfigDefault value)? defaultNode,
    TResult? Function(_PowConfigCustom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PowConfigDefault value)? defaultNode,
    TResult Function(_PowConfigCustom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PowConfigCopyWith<PowConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowConfigCopyWith<$Res> {
  factory $PowConfigCopyWith(PowConfig value, $Res Function(PowConfig) then) =
      _$PowConfigCopyWithImpl<$Res, PowConfig>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PowConfigCopyWithImpl<$Res, $Val extends PowConfig>
    implements $PowConfigCopyWith<$Res> {
  _$PowConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PowConfigDefaultCopyWith<$Res>
    implements $PowConfigCopyWith<$Res> {
  factory _$$_PowConfigDefaultCopyWith(
          _$_PowConfigDefault value, $Res Function(_$_PowConfigDefault) then) =
      __$$_PowConfigDefaultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_PowConfigDefaultCopyWithImpl<$Res>
    extends _$PowConfigCopyWithImpl<$Res, _$_PowConfigDefault>
    implements _$$_PowConfigDefaultCopyWith<$Res> {
  __$$_PowConfigDefaultCopyWithImpl(
      _$_PowConfigDefault _value, $Res Function(_$_PowConfigDefault) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_PowConfigDefault(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PowConfigDefault implements _PowConfigDefault {
  const _$_PowConfigDefault({this.name = '', final String? $type})
      : $type = $type ?? 'defaultNode';

  factory _$_PowConfigDefault.fromJson(Map<String, dynamic> json) =>
      _$$_PowConfigDefaultFromJson(json);

  @override
  @JsonKey()
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PowConfig.defaultNode(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PowConfigDefault &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowConfigDefaultCopyWith<_$_PowConfigDefault> get copyWith =>
      __$$_PowConfigDefaultCopyWithImpl<_$_PowConfigDefault>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) defaultNode,
    required TResult Function(String name, String url) custom,
  }) {
    return defaultNode(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? defaultNode,
    TResult? Function(String name, String url)? custom,
  }) {
    return defaultNode?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? defaultNode,
    TResult Function(String name, String url)? custom,
    required TResult orElse(),
  }) {
    if (defaultNode != null) {
      return defaultNode(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PowConfigDefault value) defaultNode,
    required TResult Function(_PowConfigCustom value) custom,
  }) {
    return defaultNode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PowConfigDefault value)? defaultNode,
    TResult? Function(_PowConfigCustom value)? custom,
  }) {
    return defaultNode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PowConfigDefault value)? defaultNode,
    TResult Function(_PowConfigCustom value)? custom,
    required TResult orElse(),
  }) {
    if (defaultNode != null) {
      return defaultNode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowConfigDefaultToJson(
      this,
    );
  }
}

abstract class _PowConfigDefault implements PowConfig {
  const factory _PowConfigDefault({final String name}) = _$_PowConfigDefault;

  factory _PowConfigDefault.fromJson(Map<String, dynamic> json) =
      _$_PowConfigDefault.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PowConfigDefaultCopyWith<_$_PowConfigDefault> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PowConfigCustomCopyWith<$Res>
    implements $PowConfigCopyWith<$Res> {
  factory _$$_PowConfigCustomCopyWith(
          _$_PowConfigCustom value, $Res Function(_$_PowConfigCustom) then) =
      __$$_PowConfigCustomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PowConfigCustomCopyWithImpl<$Res>
    extends _$PowConfigCopyWithImpl<$Res, _$_PowConfigCustom>
    implements _$$_PowConfigCustomCopyWith<$Res> {
  __$$_PowConfigCustomCopyWithImpl(
      _$_PowConfigCustom _value, $Res Function(_$_PowConfigCustom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_PowConfigCustom(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PowConfigCustom implements _PowConfigCustom {
  const _$_PowConfigCustom(
      {required this.name, required this.url, final String? $type})
      : $type = $type ?? 'custom';

  factory _$_PowConfigCustom.fromJson(Map<String, dynamic> json) =>
      _$$_PowConfigCustomFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PowConfig.custom(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PowConfigCustom &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowConfigCustomCopyWith<_$_PowConfigCustom> get copyWith =>
      __$$_PowConfigCustomCopyWithImpl<_$_PowConfigCustom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) defaultNode,
    required TResult Function(String name, String url) custom,
  }) {
    return custom(name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? defaultNode,
    TResult? Function(String name, String url)? custom,
  }) {
    return custom?.call(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? defaultNode,
    TResult Function(String name, String url)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PowConfigDefault value) defaultNode,
    required TResult Function(_PowConfigCustom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PowConfigDefault value)? defaultNode,
    TResult? Function(_PowConfigCustom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PowConfigDefault value)? defaultNode,
    TResult Function(_PowConfigCustom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowConfigCustomToJson(
      this,
    );
  }
}

abstract class _PowConfigCustom implements PowConfig {
  const factory _PowConfigCustom(
      {required final String name,
      required final String url}) = _$_PowConfigCustom;

  factory _PowConfigCustom.fromJson(Map<String, dynamic> json) =
      _$_PowConfigCustom.fromJson;

  @override
  String get name;
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PowConfigCustomCopyWith<_$_PowConfigCustom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PowAddSheetState {
  bool get showNameHint => throw _privateConstructorUsedError;
  bool get showUrlHint => throw _privateConstructorUsedError;
  String get nameValidationText => throw _privateConstructorUsedError;
  String get urlValidationText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PowAddSheetStateCopyWith<PowAddSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowAddSheetStateCopyWith<$Res> {
  factory $PowAddSheetStateCopyWith(
          PowAddSheetState value, $Res Function(PowAddSheetState) then) =
      _$PowAddSheetStateCopyWithImpl<$Res, PowAddSheetState>;
  @useResult
  $Res call(
      {bool showNameHint,
      bool showUrlHint,
      String nameValidationText,
      String urlValidationText});
}

/// @nodoc
class _$PowAddSheetStateCopyWithImpl<$Res, $Val extends PowAddSheetState>
    implements $PowAddSheetStateCopyWith<$Res> {
  _$PowAddSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNameHint = null,
    Object? showUrlHint = null,
    Object? nameValidationText = null,
    Object? urlValidationText = null,
  }) {
    return _then(_value.copyWith(
      showNameHint: null == showNameHint
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showUrlHint: null == showUrlHint
          ? _value.showUrlHint
          : showUrlHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: null == nameValidationText
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      urlValidationText: null == urlValidationText
          ? _value.urlValidationText
          : urlValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PowAddSheetStateCopyWith<$Res>
    implements $PowAddSheetStateCopyWith<$Res> {
  factory _$$_PowAddSheetStateCopyWith(
          _$_PowAddSheetState value, $Res Function(_$_PowAddSheetState) then) =
      __$$_PowAddSheetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showNameHint,
      bool showUrlHint,
      String nameValidationText,
      String urlValidationText});
}

/// @nodoc
class __$$_PowAddSheetStateCopyWithImpl<$Res>
    extends _$PowAddSheetStateCopyWithImpl<$Res, _$_PowAddSheetState>
    implements _$$_PowAddSheetStateCopyWith<$Res> {
  __$$_PowAddSheetStateCopyWithImpl(
      _$_PowAddSheetState _value, $Res Function(_$_PowAddSheetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNameHint = null,
    Object? showUrlHint = null,
    Object? nameValidationText = null,
    Object? urlValidationText = null,
  }) {
    return _then(_$_PowAddSheetState(
      showNameHint: null == showNameHint
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showUrlHint: null == showUrlHint
          ? _value.showUrlHint
          : showUrlHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: null == nameValidationText
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      urlValidationText: null == urlValidationText
          ? _value.urlValidationText
          : urlValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PowAddSheetState implements _PowAddSheetState {
  const _$_PowAddSheetState(
      {this.showNameHint = true,
      this.showUrlHint = true,
      this.nameValidationText = '',
      this.urlValidationText = ''});

  @override
  @JsonKey()
  final bool showNameHint;
  @override
  @JsonKey()
  final bool showUrlHint;
  @override
  @JsonKey()
  final String nameValidationText;
  @override
  @JsonKey()
  final String urlValidationText;

  @override
  String toString() {
    return 'PowAddSheetState(showNameHint: $showNameHint, showUrlHint: $showUrlHint, nameValidationText: $nameValidationText, urlValidationText: $urlValidationText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PowAddSheetState &&
            (identical(other.showNameHint, showNameHint) ||
                other.showNameHint == showNameHint) &&
            (identical(other.showUrlHint, showUrlHint) ||
                other.showUrlHint == showUrlHint) &&
            (identical(other.nameValidationText, nameValidationText) ||
                other.nameValidationText == nameValidationText) &&
            (identical(other.urlValidationText, urlValidationText) ||
                other.urlValidationText == urlValidationText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showNameHint, showUrlHint,
      nameValidationText, urlValidationText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowAddSheetStateCopyWith<_$_PowAddSheetState> get copyWith =>
      __$$_PowAddSheetStateCopyWithImpl<_$_PowAddSheetState>(this, _$identity);
}

abstract class _PowAddSheetState implements PowAddSheetState {
  const factory _PowAddSheetState(
      {final bool showNameHint,
      final bool showUrlHint,
      final String nameValidationText,
      final String urlValidationText}) = _$_PowAddSheetState;

  @override
  bool get showNameHint;
  @override
  bool get showUrlHint;
  @override
  String get nameValidationText;
  @override
  String get urlValidationText;
  @override
  @JsonKey(ignore: true)
  _$$_PowAddSheetStateCopyWith<_$_PowAddSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}
