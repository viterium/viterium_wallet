// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'node_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViteNodeConfigSettings _$ViteNodeConfigSettingsFromJson(
    Map<String, dynamic> json) {
  return _ViteNodeConfigSettings.fromJson(json);
}

/// @nodoc
class _$ViteNodeConfigSettingsTearOff {
  const _$ViteNodeConfigSettingsTearOff();

  _ViteNodeConfigSettings call(
      {IList<ViteNodeConfig> options =
          const IListConst([mainnetViteNodeConfig, testnetViteNodeConfig]),
      ViteNodeConfig selected = mainnetViteNodeConfig}) {
    return _ViteNodeConfigSettings(
      options: options,
      selected: selected,
    );
  }

  ViteNodeConfigSettings fromJson(Map<String, Object?> json) {
    return ViteNodeConfigSettings.fromJson(json);
  }
}

/// @nodoc
const $ViteNodeConfigSettings = _$ViteNodeConfigSettingsTearOff();

/// @nodoc
mixin _$ViteNodeConfigSettings {
  IList<ViteNodeConfig> get options => throw _privateConstructorUsedError;
  ViteNodeConfig get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViteNodeConfigSettingsCopyWith<ViteNodeConfigSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViteNodeConfigSettingsCopyWith<$Res> {
  factory $ViteNodeConfigSettingsCopyWith(ViteNodeConfigSettings value,
          $Res Function(ViteNodeConfigSettings) then) =
      _$ViteNodeConfigSettingsCopyWithImpl<$Res>;
  $Res call({IList<ViteNodeConfig> options, ViteNodeConfig selected});

  $ViteNodeConfigCopyWith<$Res> get selected;
}

/// @nodoc
class _$ViteNodeConfigSettingsCopyWithImpl<$Res>
    implements $ViteNodeConfigSettingsCopyWith<$Res> {
  _$ViteNodeConfigSettingsCopyWithImpl(this._value, this._then);

  final ViteNodeConfigSettings _value;
  // ignore: unused_field
  final $Res Function(ViteNodeConfigSettings) _then;

  @override
  $Res call({
    Object? options = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<ViteNodeConfig>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ViteNodeConfig,
    ));
  }

  @override
  $ViteNodeConfigCopyWith<$Res> get selected {
    return $ViteNodeConfigCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc
abstract class _$ViteNodeConfigSettingsCopyWith<$Res>
    implements $ViteNodeConfigSettingsCopyWith<$Res> {
  factory _$ViteNodeConfigSettingsCopyWith(_ViteNodeConfigSettings value,
          $Res Function(_ViteNodeConfigSettings) then) =
      __$ViteNodeConfigSettingsCopyWithImpl<$Res>;
  @override
  $Res call({IList<ViteNodeConfig> options, ViteNodeConfig selected});

  @override
  $ViteNodeConfigCopyWith<$Res> get selected;
}

/// @nodoc
class __$ViteNodeConfigSettingsCopyWithImpl<$Res>
    extends _$ViteNodeConfigSettingsCopyWithImpl<$Res>
    implements _$ViteNodeConfigSettingsCopyWith<$Res> {
  __$ViteNodeConfigSettingsCopyWithImpl(_ViteNodeConfigSettings _value,
      $Res Function(_ViteNodeConfigSettings) _then)
      : super(_value, (v) => _then(v as _ViteNodeConfigSettings));

  @override
  _ViteNodeConfigSettings get _value => super._value as _ViteNodeConfigSettings;

  @override
  $Res call({
    Object? options = freezed,
    Object? selected = freezed,
  }) {
    return _then(_ViteNodeConfigSettings(
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<ViteNodeConfig>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ViteNodeConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViteNodeConfigSettings implements _ViteNodeConfigSettings {
  const _$_ViteNodeConfigSettings(
      {this.options =
          const IListConst([mainnetViteNodeConfig, testnetViteNodeConfig]),
      this.selected = mainnetViteNodeConfig});

  factory _$_ViteNodeConfigSettings.fromJson(Map<String, dynamic> json) =>
      _$$_ViteNodeConfigSettingsFromJson(json);

  @JsonKey()
  @override
  final IList<ViteNodeConfig> options;
  @JsonKey()
  @override
  final ViteNodeConfig selected;

  @override
  String toString() {
    return 'ViteNodeConfigSettings(options: $options, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ViteNodeConfigSettings &&
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
  _$ViteNodeConfigSettingsCopyWith<_ViteNodeConfigSettings> get copyWith =>
      __$ViteNodeConfigSettingsCopyWithImpl<_ViteNodeConfigSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViteNodeConfigSettingsToJson(this);
  }
}

abstract class _ViteNodeConfigSettings implements ViteNodeConfigSettings {
  const factory _ViteNodeConfigSettings(
      {IList<ViteNodeConfig> options,
      ViteNodeConfig selected}) = _$_ViteNodeConfigSettings;

  factory _ViteNodeConfigSettings.fromJson(Map<String, dynamic> json) =
      _$_ViteNodeConfigSettings.fromJson;

  @override
  IList<ViteNodeConfig> get options;
  @override
  ViteNodeConfig get selected;
  @override
  @JsonKey(ignore: true)
  _$ViteNodeConfigSettingsCopyWith<_ViteNodeConfigSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

ViteNodeConfig _$ViteNodeConfigFromJson(Map<String, dynamic> json) {
  return _ViteNodeConfig.fromJson(json);
}

/// @nodoc
class _$ViteNodeConfigTearOff {
  const _$ViteNodeConfigTearOff();

  _ViteNodeConfig call(
      {required String id,
      required String name,
      required String http,
      required String ws,
      required ViteNetwork network}) {
    return _ViteNodeConfig(
      id: id,
      name: name,
      http: http,
      ws: ws,
      network: network,
    );
  }

  ViteNodeConfig fromJson(Map<String, Object?> json) {
    return ViteNodeConfig.fromJson(json);
  }
}

/// @nodoc
const $ViteNodeConfig = _$ViteNodeConfigTearOff();

/// @nodoc
mixin _$ViteNodeConfig {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get http => throw _privateConstructorUsedError;
  String get ws => throw _privateConstructorUsedError;
  ViteNetwork get network => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViteNodeConfigCopyWith<ViteNodeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViteNodeConfigCopyWith<$Res> {
  factory $ViteNodeConfigCopyWith(
          ViteNodeConfig value, $Res Function(ViteNodeConfig) then) =
      _$ViteNodeConfigCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, String http, String ws, ViteNetwork network});
}

/// @nodoc
class _$ViteNodeConfigCopyWithImpl<$Res>
    implements $ViteNodeConfigCopyWith<$Res> {
  _$ViteNodeConfigCopyWithImpl(this._value, this._then);

  final ViteNodeConfig _value;
  // ignore: unused_field
  final $Res Function(ViteNodeConfig) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? http = freezed,
    Object? ws = freezed,
    Object? network = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      http: http == freezed
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as String,
      ws: ws == freezed
          ? _value.ws
          : ws // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
    ));
  }
}

/// @nodoc
abstract class _$ViteNodeConfigCopyWith<$Res>
    implements $ViteNodeConfigCopyWith<$Res> {
  factory _$ViteNodeConfigCopyWith(
          _ViteNodeConfig value, $Res Function(_ViteNodeConfig) then) =
      __$ViteNodeConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, String http, String ws, ViteNetwork network});
}

/// @nodoc
class __$ViteNodeConfigCopyWithImpl<$Res>
    extends _$ViteNodeConfigCopyWithImpl<$Res>
    implements _$ViteNodeConfigCopyWith<$Res> {
  __$ViteNodeConfigCopyWithImpl(
      _ViteNodeConfig _value, $Res Function(_ViteNodeConfig) _then)
      : super(_value, (v) => _then(v as _ViteNodeConfig));

  @override
  _ViteNodeConfig get _value => super._value as _ViteNodeConfig;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? http = freezed,
    Object? ws = freezed,
    Object? network = freezed,
  }) {
    return _then(_ViteNodeConfig(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      http: http == freezed
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as String,
      ws: ws == freezed
          ? _value.ws
          : ws // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViteNodeConfig implements _ViteNodeConfig {
  const _$_ViteNodeConfig(
      {required this.id,
      required this.name,
      required this.http,
      required this.ws,
      required this.network});

  factory _$_ViteNodeConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ViteNodeConfigFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String http;
  @override
  final String ws;
  @override
  final ViteNetwork network;

  @override
  String toString() {
    return 'ViteNodeConfig(id: $id, name: $name, http: $http, ws: $ws, network: $network)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ViteNodeConfig &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.http, http) &&
            const DeepCollectionEquality().equals(other.ws, ws) &&
            const DeepCollectionEquality().equals(other.network, network));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(http),
      const DeepCollectionEquality().hash(ws),
      const DeepCollectionEquality().hash(network));

  @JsonKey(ignore: true)
  @override
  _$ViteNodeConfigCopyWith<_ViteNodeConfig> get copyWith =>
      __$ViteNodeConfigCopyWithImpl<_ViteNodeConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViteNodeConfigToJson(this);
  }
}

abstract class _ViteNodeConfig implements ViteNodeConfig {
  const factory _ViteNodeConfig(
      {required String id,
      required String name,
      required String http,
      required String ws,
      required ViteNetwork network}) = _$_ViteNodeConfig;

  factory _ViteNodeConfig.fromJson(Map<String, dynamic> json) =
      _$_ViteNodeConfig.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get http;
  @override
  String get ws;
  @override
  ViteNetwork get network;
  @override
  @JsonKey(ignore: true)
  _$ViteNodeConfigCopyWith<_ViteNodeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddNodeSheetStateTearOff {
  const _$AddNodeSheetStateTearOff();

  _AddNodeSheetState call(
      {bool showNameHint = true,
      bool showHttpHint = true,
      bool showWsHint = true,
      String nameValidationText = '',
      String httpValidationText = '',
      String wsValidationText = ''}) {
    return _AddNodeSheetState(
      showNameHint: showNameHint,
      showHttpHint: showHttpHint,
      showWsHint: showWsHint,
      nameValidationText: nameValidationText,
      httpValidationText: httpValidationText,
      wsValidationText: wsValidationText,
    );
  }
}

/// @nodoc
const $AddNodeSheetState = _$AddNodeSheetStateTearOff();

/// @nodoc
mixin _$AddNodeSheetState {
  bool get showNameHint => throw _privateConstructorUsedError;
  bool get showHttpHint => throw _privateConstructorUsedError;
  bool get showWsHint => throw _privateConstructorUsedError;
  String get nameValidationText => throw _privateConstructorUsedError;
  String get httpValidationText => throw _privateConstructorUsedError;
  String get wsValidationText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNodeSheetStateCopyWith<AddNodeSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNodeSheetStateCopyWith<$Res> {
  factory $AddNodeSheetStateCopyWith(
          AddNodeSheetState value, $Res Function(AddNodeSheetState) then) =
      _$AddNodeSheetStateCopyWithImpl<$Res>;
  $Res call(
      {bool showNameHint,
      bool showHttpHint,
      bool showWsHint,
      String nameValidationText,
      String httpValidationText,
      String wsValidationText});
}

/// @nodoc
class _$AddNodeSheetStateCopyWithImpl<$Res>
    implements $AddNodeSheetStateCopyWith<$Res> {
  _$AddNodeSheetStateCopyWithImpl(this._value, this._then);

  final AddNodeSheetState _value;
  // ignore: unused_field
  final $Res Function(AddNodeSheetState) _then;

  @override
  $Res call({
    Object? showNameHint = freezed,
    Object? showHttpHint = freezed,
    Object? showWsHint = freezed,
    Object? nameValidationText = freezed,
    Object? httpValidationText = freezed,
    Object? wsValidationText = freezed,
  }) {
    return _then(_value.copyWith(
      showNameHint: showNameHint == freezed
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showHttpHint: showHttpHint == freezed
          ? _value.showHttpHint
          : showHttpHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showWsHint: showWsHint == freezed
          ? _value.showWsHint
          : showWsHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: nameValidationText == freezed
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      httpValidationText: httpValidationText == freezed
          ? _value.httpValidationText
          : httpValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      wsValidationText: wsValidationText == freezed
          ? _value.wsValidationText
          : wsValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddNodeSheetStateCopyWith<$Res>
    implements $AddNodeSheetStateCopyWith<$Res> {
  factory _$AddNodeSheetStateCopyWith(
          _AddNodeSheetState value, $Res Function(_AddNodeSheetState) then) =
      __$AddNodeSheetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showNameHint,
      bool showHttpHint,
      bool showWsHint,
      String nameValidationText,
      String httpValidationText,
      String wsValidationText});
}

/// @nodoc
class __$AddNodeSheetStateCopyWithImpl<$Res>
    extends _$AddNodeSheetStateCopyWithImpl<$Res>
    implements _$AddNodeSheetStateCopyWith<$Res> {
  __$AddNodeSheetStateCopyWithImpl(
      _AddNodeSheetState _value, $Res Function(_AddNodeSheetState) _then)
      : super(_value, (v) => _then(v as _AddNodeSheetState));

  @override
  _AddNodeSheetState get _value => super._value as _AddNodeSheetState;

  @override
  $Res call({
    Object? showNameHint = freezed,
    Object? showHttpHint = freezed,
    Object? showWsHint = freezed,
    Object? nameValidationText = freezed,
    Object? httpValidationText = freezed,
    Object? wsValidationText = freezed,
  }) {
    return _then(_AddNodeSheetState(
      showNameHint: showNameHint == freezed
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showHttpHint: showHttpHint == freezed
          ? _value.showHttpHint
          : showHttpHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showWsHint: showWsHint == freezed
          ? _value.showWsHint
          : showWsHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: nameValidationText == freezed
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      httpValidationText: httpValidationText == freezed
          ? _value.httpValidationText
          : httpValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      wsValidationText: wsValidationText == freezed
          ? _value.wsValidationText
          : wsValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddNodeSheetState implements _AddNodeSheetState {
  const _$_AddNodeSheetState(
      {this.showNameHint = true,
      this.showHttpHint = true,
      this.showWsHint = true,
      this.nameValidationText = '',
      this.httpValidationText = '',
      this.wsValidationText = ''});

  @JsonKey()
  @override
  final bool showNameHint;
  @JsonKey()
  @override
  final bool showHttpHint;
  @JsonKey()
  @override
  final bool showWsHint;
  @JsonKey()
  @override
  final String nameValidationText;
  @JsonKey()
  @override
  final String httpValidationText;
  @JsonKey()
  @override
  final String wsValidationText;

  @override
  String toString() {
    return 'AddNodeSheetState(showNameHint: $showNameHint, showHttpHint: $showHttpHint, showWsHint: $showWsHint, nameValidationText: $nameValidationText, httpValidationText: $httpValidationText, wsValidationText: $wsValidationText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddNodeSheetState &&
            const DeepCollectionEquality()
                .equals(other.showNameHint, showNameHint) &&
            const DeepCollectionEquality()
                .equals(other.showHttpHint, showHttpHint) &&
            const DeepCollectionEquality()
                .equals(other.showWsHint, showWsHint) &&
            const DeepCollectionEquality()
                .equals(other.nameValidationText, nameValidationText) &&
            const DeepCollectionEquality()
                .equals(other.httpValidationText, httpValidationText) &&
            const DeepCollectionEquality()
                .equals(other.wsValidationText, wsValidationText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showNameHint),
      const DeepCollectionEquality().hash(showHttpHint),
      const DeepCollectionEquality().hash(showWsHint),
      const DeepCollectionEquality().hash(nameValidationText),
      const DeepCollectionEquality().hash(httpValidationText),
      const DeepCollectionEquality().hash(wsValidationText));

  @JsonKey(ignore: true)
  @override
  _$AddNodeSheetStateCopyWith<_AddNodeSheetState> get copyWith =>
      __$AddNodeSheetStateCopyWithImpl<_AddNodeSheetState>(this, _$identity);
}

abstract class _AddNodeSheetState implements AddNodeSheetState {
  const factory _AddNodeSheetState(
      {bool showNameHint,
      bool showHttpHint,
      bool showWsHint,
      String nameValidationText,
      String httpValidationText,
      String wsValidationText}) = _$_AddNodeSheetState;

  @override
  bool get showNameHint;
  @override
  bool get showHttpHint;
  @override
  bool get showWsHint;
  @override
  String get nameValidationText;
  @override
  String get httpValidationText;
  @override
  String get wsValidationText;
  @override
  @JsonKey(ignore: true)
  _$AddNodeSheetStateCopyWith<_AddNodeSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}
