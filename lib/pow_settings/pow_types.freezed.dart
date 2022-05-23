// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pow_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PowConfigSettings _$PowConfigSettingsFromJson(Map<String, dynamic> json) {
  return _PowConfigSettings.fromJson(json);
}

/// @nodoc
class _$PowConfigSettingsTearOff {
  const _$PowConfigSettingsTearOff();

  _PowConfigSettings call(
      {IList<PowConfig> options = const IListConst([PowConfig.defaultNode()]),
      PowConfig selected = const PowConfig.defaultNode()}) {
    return _PowConfigSettings(
      options: options,
      selected: selected,
    );
  }

  PowConfigSettings fromJson(Map<String, Object?> json) {
    return PowConfigSettings.fromJson(json);
  }
}

/// @nodoc
const $PowConfigSettings = _$PowConfigSettingsTearOff();

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
      _$PowConfigSettingsCopyWithImpl<$Res>;
  $Res call({IList<PowConfig> options, PowConfig selected});

  $PowConfigCopyWith<$Res> get selected;
}

/// @nodoc
class _$PowConfigSettingsCopyWithImpl<$Res>
    implements $PowConfigSettingsCopyWith<$Res> {
  _$PowConfigSettingsCopyWithImpl(this._value, this._then);

  final PowConfigSettings _value;
  // ignore: unused_field
  final $Res Function(PowConfigSettings) _then;

  @override
  $Res call({
    Object? options = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<PowConfig>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as PowConfig,
    ));
  }

  @override
  $PowConfigCopyWith<$Res> get selected {
    return $PowConfigCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc
abstract class _$PowConfigSettingsCopyWith<$Res>
    implements $PowConfigSettingsCopyWith<$Res> {
  factory _$PowConfigSettingsCopyWith(
          _PowConfigSettings value, $Res Function(_PowConfigSettings) then) =
      __$PowConfigSettingsCopyWithImpl<$Res>;
  @override
  $Res call({IList<PowConfig> options, PowConfig selected});

  @override
  $PowConfigCopyWith<$Res> get selected;
}

/// @nodoc
class __$PowConfigSettingsCopyWithImpl<$Res>
    extends _$PowConfigSettingsCopyWithImpl<$Res>
    implements _$PowConfigSettingsCopyWith<$Res> {
  __$PowConfigSettingsCopyWithImpl(
      _PowConfigSettings _value, $Res Function(_PowConfigSettings) _then)
      : super(_value, (v) => _then(v as _PowConfigSettings));

  @override
  _PowConfigSettings get _value => super._value as _PowConfigSettings;

  @override
  $Res call({
    Object? options = freezed,
    Object? selected = freezed,
  }) {
    return _then(_PowConfigSettings(
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<PowConfig>,
      selected: selected == freezed
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

  @JsonKey()
  @override
  final IList<PowConfig> options;
  @JsonKey()
  @override
  final PowConfig selected;

  @override
  String toString() {
    return 'PowConfigSettings(options: $options, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PowConfigSettings &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$PowConfigSettingsCopyWith<_PowConfigSettings> get copyWith =>
      __$PowConfigSettingsCopyWithImpl<_PowConfigSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowConfigSettingsToJson(this);
  }
}

abstract class _PowConfigSettings implements PowConfigSettings {
  const factory _PowConfigSettings(
      {IList<PowConfig> options, PowConfig selected}) = _$_PowConfigSettings;

  factory _PowConfigSettings.fromJson(Map<String, dynamic> json) =
      _$_PowConfigSettings.fromJson;

  @override
  IList<PowConfig> get options;
  @override
  PowConfig get selected;
  @override
  @JsonKey(ignore: true)
  _$PowConfigSettingsCopyWith<_PowConfigSettings> get copyWith =>
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
class _$PowConfigTearOff {
  const _$PowConfigTearOff();

  _PowConfigDefault defaultNode({String name = ''}) {
    return _PowConfigDefault(
      name: name,
    );
  }

  _PowConfigCustom custom({required String name, required String url}) {
    return _PowConfigCustom(
      name: name,
      url: url,
    );
  }

  PowConfig fromJson(Map<String, Object?> json) {
    return PowConfig.fromJson(json);
  }
}

/// @nodoc
const $PowConfig = _$PowConfigTearOff();

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
    TResult Function(String name)? defaultNode,
    TResult Function(String name, String url)? custom,
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
    TResult Function(_PowConfigDefault value)? defaultNode,
    TResult Function(_PowConfigCustom value)? custom,
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
      _$PowConfigCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PowConfigCopyWithImpl<$Res> implements $PowConfigCopyWith<$Res> {
  _$PowConfigCopyWithImpl(this._value, this._then);

  final PowConfig _value;
  // ignore: unused_field
  final $Res Function(PowConfig) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PowConfigDefaultCopyWith<$Res>
    implements $PowConfigCopyWith<$Res> {
  factory _$PowConfigDefaultCopyWith(
          _PowConfigDefault value, $Res Function(_PowConfigDefault) then) =
      __$PowConfigDefaultCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$PowConfigDefaultCopyWithImpl<$Res>
    extends _$PowConfigCopyWithImpl<$Res>
    implements _$PowConfigDefaultCopyWith<$Res> {
  __$PowConfigDefaultCopyWithImpl(
      _PowConfigDefault _value, $Res Function(_PowConfigDefault) _then)
      : super(_value, (v) => _then(v as _PowConfigDefault));

  @override
  _PowConfigDefault get _value => super._value as _PowConfigDefault;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PowConfigDefault(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PowConfigDefault implements _PowConfigDefault {
  const _$_PowConfigDefault({this.name = '', String? $type})
      : $type = $type ?? 'defaultNode';

  factory _$_PowConfigDefault.fromJson(Map<String, dynamic> json) =>
      _$$_PowConfigDefaultFromJson(json);

  @JsonKey()
  @override
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
            other is _PowConfigDefault &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PowConfigDefaultCopyWith<_PowConfigDefault> get copyWith =>
      __$PowConfigDefaultCopyWithImpl<_PowConfigDefault>(this, _$identity);

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
    TResult Function(String name)? defaultNode,
    TResult Function(String name, String url)? custom,
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
    TResult Function(_PowConfigDefault value)? defaultNode,
    TResult Function(_PowConfigCustom value)? custom,
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
    return _$$_PowConfigDefaultToJson(this);
  }
}

abstract class _PowConfigDefault implements PowConfig {
  const factory _PowConfigDefault({String name}) = _$_PowConfigDefault;

  factory _PowConfigDefault.fromJson(Map<String, dynamic> json) =
      _$_PowConfigDefault.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PowConfigDefaultCopyWith<_PowConfigDefault> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PowConfigCustomCopyWith<$Res>
    implements $PowConfigCopyWith<$Res> {
  factory _$PowConfigCustomCopyWith(
          _PowConfigCustom value, $Res Function(_PowConfigCustom) then) =
      __$PowConfigCustomCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$PowConfigCustomCopyWithImpl<$Res> extends _$PowConfigCopyWithImpl<$Res>
    implements _$PowConfigCustomCopyWith<$Res> {
  __$PowConfigCustomCopyWithImpl(
      _PowConfigCustom _value, $Res Function(_PowConfigCustom) _then)
      : super(_value, (v) => _then(v as _PowConfigCustom));

  @override
  _PowConfigCustom get _value => super._value as _PowConfigCustom;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_PowConfigCustom(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
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
      {required this.name, required this.url, String? $type})
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
            other is _PowConfigCustom &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$PowConfigCustomCopyWith<_PowConfigCustom> get copyWith =>
      __$PowConfigCustomCopyWithImpl<_PowConfigCustom>(this, _$identity);

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
    TResult Function(String name)? defaultNode,
    TResult Function(String name, String url)? custom,
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
    TResult Function(_PowConfigDefault value)? defaultNode,
    TResult Function(_PowConfigCustom value)? custom,
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
    return _$$_PowConfigCustomToJson(this);
  }
}

abstract class _PowConfigCustom implements PowConfig {
  const factory _PowConfigCustom({required String name, required String url}) =
      _$_PowConfigCustom;

  factory _PowConfigCustom.fromJson(Map<String, dynamic> json) =
      _$_PowConfigCustom.fromJson;

  @override
  String get name;
  String get url;
  @override
  @JsonKey(ignore: true)
  _$PowConfigCustomCopyWith<_PowConfigCustom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PowAddSheetStateTearOff {
  const _$PowAddSheetStateTearOff();

  _PowAddSheetState call(
      {bool showNameHint = true,
      bool showUrlHint = true,
      String nameValidationText = '',
      String urlValidationText = ''}) {
    return _PowAddSheetState(
      showNameHint: showNameHint,
      showUrlHint: showUrlHint,
      nameValidationText: nameValidationText,
      urlValidationText: urlValidationText,
    );
  }
}

/// @nodoc
const $PowAddSheetState = _$PowAddSheetStateTearOff();

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
      _$PowAddSheetStateCopyWithImpl<$Res>;
  $Res call(
      {bool showNameHint,
      bool showUrlHint,
      String nameValidationText,
      String urlValidationText});
}

/// @nodoc
class _$PowAddSheetStateCopyWithImpl<$Res>
    implements $PowAddSheetStateCopyWith<$Res> {
  _$PowAddSheetStateCopyWithImpl(this._value, this._then);

  final PowAddSheetState _value;
  // ignore: unused_field
  final $Res Function(PowAddSheetState) _then;

  @override
  $Res call({
    Object? showNameHint = freezed,
    Object? showUrlHint = freezed,
    Object? nameValidationText = freezed,
    Object? urlValidationText = freezed,
  }) {
    return _then(_value.copyWith(
      showNameHint: showNameHint == freezed
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showUrlHint: showUrlHint == freezed
          ? _value.showUrlHint
          : showUrlHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: nameValidationText == freezed
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      urlValidationText: urlValidationText == freezed
          ? _value.urlValidationText
          : urlValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PowAddSheetStateCopyWith<$Res>
    implements $PowAddSheetStateCopyWith<$Res> {
  factory _$PowAddSheetStateCopyWith(
          _PowAddSheetState value, $Res Function(_PowAddSheetState) then) =
      __$PowAddSheetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showNameHint,
      bool showUrlHint,
      String nameValidationText,
      String urlValidationText});
}

/// @nodoc
class __$PowAddSheetStateCopyWithImpl<$Res>
    extends _$PowAddSheetStateCopyWithImpl<$Res>
    implements _$PowAddSheetStateCopyWith<$Res> {
  __$PowAddSheetStateCopyWithImpl(
      _PowAddSheetState _value, $Res Function(_PowAddSheetState) _then)
      : super(_value, (v) => _then(v as _PowAddSheetState));

  @override
  _PowAddSheetState get _value => super._value as _PowAddSheetState;

  @override
  $Res call({
    Object? showNameHint = freezed,
    Object? showUrlHint = freezed,
    Object? nameValidationText = freezed,
    Object? urlValidationText = freezed,
  }) {
    return _then(_PowAddSheetState(
      showNameHint: showNameHint == freezed
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showUrlHint: showUrlHint == freezed
          ? _value.showUrlHint
          : showUrlHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: nameValidationText == freezed
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      urlValidationText: urlValidationText == freezed
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

  @JsonKey()
  @override
  final bool showNameHint;
  @JsonKey()
  @override
  final bool showUrlHint;
  @JsonKey()
  @override
  final String nameValidationText;
  @JsonKey()
  @override
  final String urlValidationText;

  @override
  String toString() {
    return 'PowAddSheetState(showNameHint: $showNameHint, showUrlHint: $showUrlHint, nameValidationText: $nameValidationText, urlValidationText: $urlValidationText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PowAddSheetState &&
            const DeepCollectionEquality()
                .equals(other.showNameHint, showNameHint) &&
            const DeepCollectionEquality()
                .equals(other.showUrlHint, showUrlHint) &&
            const DeepCollectionEquality()
                .equals(other.nameValidationText, nameValidationText) &&
            const DeepCollectionEquality()
                .equals(other.urlValidationText, urlValidationText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showNameHint),
      const DeepCollectionEquality().hash(showUrlHint),
      const DeepCollectionEquality().hash(nameValidationText),
      const DeepCollectionEquality().hash(urlValidationText));

  @JsonKey(ignore: true)
  @override
  _$PowAddSheetStateCopyWith<_PowAddSheetState> get copyWith =>
      __$PowAddSheetStateCopyWithImpl<_PowAddSheetState>(this, _$identity);
}

abstract class _PowAddSheetState implements PowAddSheetState {
  const factory _PowAddSheetState(
      {bool showNameHint,
      bool showUrlHint,
      String nameValidationText,
      String urlValidationText}) = _$_PowAddSheetState;

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
  _$PowAddSheetStateCopyWith<_PowAddSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}
