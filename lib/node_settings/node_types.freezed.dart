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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViteNodeConfigSettings _$ViteNodeConfigSettingsFromJson(
    Map<String, dynamic> json) {
  return _ViteNodeConfigSettings.fromJson(json);
}

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
      _$ViteNodeConfigSettingsCopyWithImpl<$Res, ViteNodeConfigSettings>;
  @useResult
  $Res call({IList<ViteNodeConfig> options, ViteNodeConfig selected});

  $ViteNodeConfigCopyWith<$Res> get selected;
}

/// @nodoc
class _$ViteNodeConfigSettingsCopyWithImpl<$Res,
        $Val extends ViteNodeConfigSettings>
    implements $ViteNodeConfigSettingsCopyWith<$Res> {
  _$ViteNodeConfigSettingsCopyWithImpl(this._value, this._then);

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
              as IList<ViteNodeConfig>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ViteNodeConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViteNodeConfigCopyWith<$Res> get selected {
    return $ViteNodeConfigCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ViteNodeConfigSettingsCopyWith<$Res>
    implements $ViteNodeConfigSettingsCopyWith<$Res> {
  factory _$$_ViteNodeConfigSettingsCopyWith(_$_ViteNodeConfigSettings value,
          $Res Function(_$_ViteNodeConfigSettings) then) =
      __$$_ViteNodeConfigSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<ViteNodeConfig> options, ViteNodeConfig selected});

  @override
  $ViteNodeConfigCopyWith<$Res> get selected;
}

/// @nodoc
class __$$_ViteNodeConfigSettingsCopyWithImpl<$Res>
    extends _$ViteNodeConfigSettingsCopyWithImpl<$Res,
        _$_ViteNodeConfigSettings>
    implements _$$_ViteNodeConfigSettingsCopyWith<$Res> {
  __$$_ViteNodeConfigSettingsCopyWithImpl(_$_ViteNodeConfigSettings _value,
      $Res Function(_$_ViteNodeConfigSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? selected = null,
  }) {
    return _then(_$_ViteNodeConfigSettings(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as IList<ViteNodeConfig>,
      selected: null == selected
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

  @override
  @JsonKey()
  final IList<ViteNodeConfig> options;
  @override
  @JsonKey()
  final ViteNodeConfig selected;

  @override
  String toString() {
    return 'ViteNodeConfigSettings(options: $options, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViteNodeConfigSettings &&
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
  _$$_ViteNodeConfigSettingsCopyWith<_$_ViteNodeConfigSettings> get copyWith =>
      __$$_ViteNodeConfigSettingsCopyWithImpl<_$_ViteNodeConfigSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViteNodeConfigSettingsToJson(
      this,
    );
  }
}

abstract class _ViteNodeConfigSettings implements ViteNodeConfigSettings {
  const factory _ViteNodeConfigSettings(
      {final IList<ViteNodeConfig> options,
      final ViteNodeConfig selected}) = _$_ViteNodeConfigSettings;

  factory _ViteNodeConfigSettings.fromJson(Map<String, dynamic> json) =
      _$_ViteNodeConfigSettings.fromJson;

  @override
  IList<ViteNodeConfig> get options;
  @override
  ViteNodeConfig get selected;
  @override
  @JsonKey(ignore: true)
  _$$_ViteNodeConfigSettingsCopyWith<_$_ViteNodeConfigSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

ViteNodeConfig _$ViteNodeConfigFromJson(Map<String, dynamic> json) {
  return _ViteNodeConfig.fromJson(json);
}

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
      _$ViteNodeConfigCopyWithImpl<$Res, ViteNodeConfig>;
  @useResult
  $Res call(
      {String id, String name, String http, String ws, ViteNetwork network});
}

/// @nodoc
class _$ViteNodeConfigCopyWithImpl<$Res, $Val extends ViteNodeConfig>
    implements $ViteNodeConfigCopyWith<$Res> {
  _$ViteNodeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? http = null,
    Object? ws = null,
    Object? network = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      http: null == http
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as String,
      ws: null == ws
          ? _value.ws
          : ws // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViteNodeConfigCopyWith<$Res>
    implements $ViteNodeConfigCopyWith<$Res> {
  factory _$$_ViteNodeConfigCopyWith(
          _$_ViteNodeConfig value, $Res Function(_$_ViteNodeConfig) then) =
      __$$_ViteNodeConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String http, String ws, ViteNetwork network});
}

/// @nodoc
class __$$_ViteNodeConfigCopyWithImpl<$Res>
    extends _$ViteNodeConfigCopyWithImpl<$Res, _$_ViteNodeConfig>
    implements _$$_ViteNodeConfigCopyWith<$Res> {
  __$$_ViteNodeConfigCopyWithImpl(
      _$_ViteNodeConfig _value, $Res Function(_$_ViteNodeConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? http = null,
    Object? ws = null,
    Object? network = null,
  }) {
    return _then(_$_ViteNodeConfig(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      http: null == http
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as String,
      ws: null == ws
          ? _value.ws
          : ws // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
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
            other is _$_ViteNodeConfig &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.http, http) || other.http == http) &&
            (identical(other.ws, ws) || other.ws == ws) &&
            (identical(other.network, network) || other.network == network));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, http, ws, network);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViteNodeConfigCopyWith<_$_ViteNodeConfig> get copyWith =>
      __$$_ViteNodeConfigCopyWithImpl<_$_ViteNodeConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViteNodeConfigToJson(
      this,
    );
  }
}

abstract class _ViteNodeConfig implements ViteNodeConfig {
  const factory _ViteNodeConfig(
      {required final String id,
      required final String name,
      required final String http,
      required final String ws,
      required final ViteNetwork network}) = _$_ViteNodeConfig;

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
  _$$_ViteNodeConfigCopyWith<_$_ViteNodeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$AddNodeSheetStateCopyWithImpl<$Res, AddNodeSheetState>;
  @useResult
  $Res call(
      {bool showNameHint,
      bool showHttpHint,
      bool showWsHint,
      String nameValidationText,
      String httpValidationText,
      String wsValidationText});
}

/// @nodoc
class _$AddNodeSheetStateCopyWithImpl<$Res, $Val extends AddNodeSheetState>
    implements $AddNodeSheetStateCopyWith<$Res> {
  _$AddNodeSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNameHint = null,
    Object? showHttpHint = null,
    Object? showWsHint = null,
    Object? nameValidationText = null,
    Object? httpValidationText = null,
    Object? wsValidationText = null,
  }) {
    return _then(_value.copyWith(
      showNameHint: null == showNameHint
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showHttpHint: null == showHttpHint
          ? _value.showHttpHint
          : showHttpHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showWsHint: null == showWsHint
          ? _value.showWsHint
          : showWsHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: null == nameValidationText
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      httpValidationText: null == httpValidationText
          ? _value.httpValidationText
          : httpValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      wsValidationText: null == wsValidationText
          ? _value.wsValidationText
          : wsValidationText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddNodeSheetStateCopyWith<$Res>
    implements $AddNodeSheetStateCopyWith<$Res> {
  factory _$$_AddNodeSheetStateCopyWith(_$_AddNodeSheetState value,
          $Res Function(_$_AddNodeSheetState) then) =
      __$$_AddNodeSheetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showNameHint,
      bool showHttpHint,
      bool showWsHint,
      String nameValidationText,
      String httpValidationText,
      String wsValidationText});
}

/// @nodoc
class __$$_AddNodeSheetStateCopyWithImpl<$Res>
    extends _$AddNodeSheetStateCopyWithImpl<$Res, _$_AddNodeSheetState>
    implements _$$_AddNodeSheetStateCopyWith<$Res> {
  __$$_AddNodeSheetStateCopyWithImpl(
      _$_AddNodeSheetState _value, $Res Function(_$_AddNodeSheetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNameHint = null,
    Object? showHttpHint = null,
    Object? showWsHint = null,
    Object? nameValidationText = null,
    Object? httpValidationText = null,
    Object? wsValidationText = null,
  }) {
    return _then(_$_AddNodeSheetState(
      showNameHint: null == showNameHint
          ? _value.showNameHint
          : showNameHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showHttpHint: null == showHttpHint
          ? _value.showHttpHint
          : showHttpHint // ignore: cast_nullable_to_non_nullable
              as bool,
      showWsHint: null == showWsHint
          ? _value.showWsHint
          : showWsHint // ignore: cast_nullable_to_non_nullable
              as bool,
      nameValidationText: null == nameValidationText
          ? _value.nameValidationText
          : nameValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      httpValidationText: null == httpValidationText
          ? _value.httpValidationText
          : httpValidationText // ignore: cast_nullable_to_non_nullable
              as String,
      wsValidationText: null == wsValidationText
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

  @override
  @JsonKey()
  final bool showNameHint;
  @override
  @JsonKey()
  final bool showHttpHint;
  @override
  @JsonKey()
  final bool showWsHint;
  @override
  @JsonKey()
  final String nameValidationText;
  @override
  @JsonKey()
  final String httpValidationText;
  @override
  @JsonKey()
  final String wsValidationText;

  @override
  String toString() {
    return 'AddNodeSheetState(showNameHint: $showNameHint, showHttpHint: $showHttpHint, showWsHint: $showWsHint, nameValidationText: $nameValidationText, httpValidationText: $httpValidationText, wsValidationText: $wsValidationText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNodeSheetState &&
            (identical(other.showNameHint, showNameHint) ||
                other.showNameHint == showNameHint) &&
            (identical(other.showHttpHint, showHttpHint) ||
                other.showHttpHint == showHttpHint) &&
            (identical(other.showWsHint, showWsHint) ||
                other.showWsHint == showWsHint) &&
            (identical(other.nameValidationText, nameValidationText) ||
                other.nameValidationText == nameValidationText) &&
            (identical(other.httpValidationText, httpValidationText) ||
                other.httpValidationText == httpValidationText) &&
            (identical(other.wsValidationText, wsValidationText) ||
                other.wsValidationText == wsValidationText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showNameHint, showHttpHint,
      showWsHint, nameValidationText, httpValidationText, wsValidationText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNodeSheetStateCopyWith<_$_AddNodeSheetState> get copyWith =>
      __$$_AddNodeSheetStateCopyWithImpl<_$_AddNodeSheetState>(
          this, _$identity);
}

abstract class _AddNodeSheetState implements AddNodeSheetState {
  const factory _AddNodeSheetState(
      {final bool showNameHint,
      final bool showHttpHint,
      final bool showWsHint,
      final String nameValidationText,
      final String httpValidationText,
      final String wsValidationText}) = _$_AddNodeSheetState;

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
  _$$_AddNodeSheetStateCopyWith<_$_AddNodeSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}
