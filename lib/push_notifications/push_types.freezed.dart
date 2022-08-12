// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'push_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushTokenPayload _$PushTokenPayloadFromJson(Map<String, dynamic> json) {
  return _PushTokenPayload.fromJson(json);
}

/// @nodoc
class _$PushTokenPayloadTearOff {
  const _$PushTokenPayloadTearOff();

  _PushTokenPayload call({required Hash clientId, required String token}) {
    return _PushTokenPayload(
      clientId: clientId,
      token: token,
    );
  }

  PushTokenPayload fromJson(Map<String, Object?> json) {
    return PushTokenPayload.fromJson(json);
  }
}

/// @nodoc
const $PushTokenPayload = _$PushTokenPayloadTearOff();

/// @nodoc
mixin _$PushTokenPayload {
  Hash get clientId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushTokenPayloadCopyWith<PushTokenPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushTokenPayloadCopyWith<$Res> {
  factory $PushTokenPayloadCopyWith(
          PushTokenPayload value, $Res Function(PushTokenPayload) then) =
      _$PushTokenPayloadCopyWithImpl<$Res>;
  $Res call({Hash clientId, String token});

  $HashCopyWith<$Res> get clientId;
}

/// @nodoc
class _$PushTokenPayloadCopyWithImpl<$Res>
    implements $PushTokenPayloadCopyWith<$Res> {
  _$PushTokenPayloadCopyWithImpl(this._value, this._then);

  final PushTokenPayload _value;
  // ignore: unused_field
  final $Res Function(PushTokenPayload) _then;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $HashCopyWith<$Res> get clientId {
    return $HashCopyWith<$Res>(_value.clientId, (value) {
      return _then(_value.copyWith(clientId: value));
    });
  }
}

/// @nodoc
abstract class _$PushTokenPayloadCopyWith<$Res>
    implements $PushTokenPayloadCopyWith<$Res> {
  factory _$PushTokenPayloadCopyWith(
          _PushTokenPayload value, $Res Function(_PushTokenPayload) then) =
      __$PushTokenPayloadCopyWithImpl<$Res>;
  @override
  $Res call({Hash clientId, String token});

  @override
  $HashCopyWith<$Res> get clientId;
}

/// @nodoc
class __$PushTokenPayloadCopyWithImpl<$Res>
    extends _$PushTokenPayloadCopyWithImpl<$Res>
    implements _$PushTokenPayloadCopyWith<$Res> {
  __$PushTokenPayloadCopyWithImpl(
      _PushTokenPayload _value, $Res Function(_PushTokenPayload) _then)
      : super(_value, (v) => _then(v as _PushTokenPayload));

  @override
  _PushTokenPayload get _value => super._value as _PushTokenPayload;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? token = freezed,
  }) {
    return _then(_PushTokenPayload(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushTokenPayload implements _PushTokenPayload {
  const _$_PushTokenPayload({required this.clientId, required this.token});

  factory _$_PushTokenPayload.fromJson(Map<String, dynamic> json) =>
      _$$_PushTokenPayloadFromJson(json);

  @override
  final Hash clientId;
  @override
  final String token;

  @override
  String toString() {
    return 'PushTokenPayload(clientId: $clientId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushTokenPayload &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$PushTokenPayloadCopyWith<_PushTokenPayload> get copyWith =>
      __$PushTokenPayloadCopyWithImpl<_PushTokenPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushTokenPayloadToJson(this);
  }
}

abstract class _PushTokenPayload implements PushTokenPayload {
  const factory _PushTokenPayload(
      {required Hash clientId, required String token}) = _$_PushTokenPayload;

  factory _PushTokenPayload.fromJson(Map<String, dynamic> json) =
      _$_PushTokenPayload.fromJson;

  @override
  Hash get clientId;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$PushTokenPayloadCopyWith<_PushTokenPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

PushTokenSettings _$PushTokenSettingsFromJson(Map<String, dynamic> json) {
  return _PushTokenSettings.fromJson(json);
}

/// @nodoc
class _$PushTokenSettingsTearOff {
  const _$PushTokenSettingsTearOff();

  _PushTokenSettings call(
      {required PushTokenPayload payload, bool published = false}) {
    return _PushTokenSettings(
      payload: payload,
      published: published,
    );
  }

  PushTokenSettings fromJson(Map<String, Object?> json) {
    return PushTokenSettings.fromJson(json);
  }
}

/// @nodoc
const $PushTokenSettings = _$PushTokenSettingsTearOff();

/// @nodoc
mixin _$PushTokenSettings {
  PushTokenPayload get payload => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushTokenSettingsCopyWith<PushTokenSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushTokenSettingsCopyWith<$Res> {
  factory $PushTokenSettingsCopyWith(
          PushTokenSettings value, $Res Function(PushTokenSettings) then) =
      _$PushTokenSettingsCopyWithImpl<$Res>;
  $Res call({PushTokenPayload payload, bool published});

  $PushTokenPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$PushTokenSettingsCopyWithImpl<$Res>
    implements $PushTokenSettingsCopyWith<$Res> {
  _$PushTokenSettingsCopyWithImpl(this._value, this._then);

  final PushTokenSettings _value;
  // ignore: unused_field
  final $Res Function(PushTokenSettings) _then;

  @override
  $Res call({
    Object? payload = freezed,
    Object? published = freezed,
  }) {
    return _then(_value.copyWith(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PushTokenPayload,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PushTokenPayloadCopyWith<$Res> get payload {
    return $PushTokenPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$PushTokenSettingsCopyWith<$Res>
    implements $PushTokenSettingsCopyWith<$Res> {
  factory _$PushTokenSettingsCopyWith(
          _PushTokenSettings value, $Res Function(_PushTokenSettings) then) =
      __$PushTokenSettingsCopyWithImpl<$Res>;
  @override
  $Res call({PushTokenPayload payload, bool published});

  @override
  $PushTokenPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$PushTokenSettingsCopyWithImpl<$Res>
    extends _$PushTokenSettingsCopyWithImpl<$Res>
    implements _$PushTokenSettingsCopyWith<$Res> {
  __$PushTokenSettingsCopyWithImpl(
      _PushTokenSettings _value, $Res Function(_PushTokenSettings) _then)
      : super(_value, (v) => _then(v as _PushTokenSettings));

  @override
  _PushTokenSettings get _value => super._value as _PushTokenSettings;

  @override
  $Res call({
    Object? payload = freezed,
    Object? published = freezed,
  }) {
    return _then(_PushTokenSettings(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PushTokenPayload,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushTokenSettings implements _PushTokenSettings {
  const _$_PushTokenSettings({required this.payload, this.published = false});

  factory _$_PushTokenSettings.fromJson(Map<String, dynamic> json) =>
      _$$_PushTokenSettingsFromJson(json);

  @override
  final PushTokenPayload payload;
  @JsonKey()
  @override
  final bool published;

  @override
  String toString() {
    return 'PushTokenSettings(payload: $payload, published: $published)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushTokenSettings &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality().equals(other.published, published));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(published));

  @JsonKey(ignore: true)
  @override
  _$PushTokenSettingsCopyWith<_PushTokenSettings> get copyWith =>
      __$PushTokenSettingsCopyWithImpl<_PushTokenSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushTokenSettingsToJson(this);
  }
}

abstract class _PushTokenSettings implements PushTokenSettings {
  const factory _PushTokenSettings(
      {required PushTokenPayload payload,
      bool published}) = _$_PushTokenSettings;

  factory _PushTokenSettings.fromJson(Map<String, dynamic> json) =
      _$_PushTokenSettings.fromJson;

  @override
  PushTokenPayload get payload;
  @override
  bool get published;
  @override
  @JsonKey(ignore: true)
  _$PushTokenSettingsCopyWith<_PushTokenSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PushIdLinkPayloadTearOff {
  const _$PushIdLinkPayloadTearOff();

  _PushIdLinkPayload call({required Hash clientId, required Hash id}) {
    return _PushIdLinkPayload(
      clientId: clientId,
      id: id,
    );
  }
}

/// @nodoc
const $PushIdLinkPayload = _$PushIdLinkPayloadTearOff();

/// @nodoc
mixin _$PushIdLinkPayload {
  Hash get clientId => throw _privateConstructorUsedError;
  Hash get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushIdLinkPayloadCopyWith<PushIdLinkPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushIdLinkPayloadCopyWith<$Res> {
  factory $PushIdLinkPayloadCopyWith(
          PushIdLinkPayload value, $Res Function(PushIdLinkPayload) then) =
      _$PushIdLinkPayloadCopyWithImpl<$Res>;
  $Res call({Hash clientId, Hash id});

  $HashCopyWith<$Res> get clientId;
  $HashCopyWith<$Res> get id;
}

/// @nodoc
class _$PushIdLinkPayloadCopyWithImpl<$Res>
    implements $PushIdLinkPayloadCopyWith<$Res> {
  _$PushIdLinkPayloadCopyWithImpl(this._value, this._then);

  final PushIdLinkPayload _value;
  // ignore: unused_field
  final $Res Function(PushIdLinkPayload) _then;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Hash,
    ));
  }

  @override
  $HashCopyWith<$Res> get clientId {
    return $HashCopyWith<$Res>(_value.clientId, (value) {
      return _then(_value.copyWith(clientId: value));
    });
  }

  @override
  $HashCopyWith<$Res> get id {
    return $HashCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$PushIdLinkPayloadCopyWith<$Res>
    implements $PushIdLinkPayloadCopyWith<$Res> {
  factory _$PushIdLinkPayloadCopyWith(
          _PushIdLinkPayload value, $Res Function(_PushIdLinkPayload) then) =
      __$PushIdLinkPayloadCopyWithImpl<$Res>;
  @override
  $Res call({Hash clientId, Hash id});

  @override
  $HashCopyWith<$Res> get clientId;
  @override
  $HashCopyWith<$Res> get id;
}

/// @nodoc
class __$PushIdLinkPayloadCopyWithImpl<$Res>
    extends _$PushIdLinkPayloadCopyWithImpl<$Res>
    implements _$PushIdLinkPayloadCopyWith<$Res> {
  __$PushIdLinkPayloadCopyWithImpl(
      _PushIdLinkPayload _value, $Res Function(_PushIdLinkPayload) _then)
      : super(_value, (v) => _then(v as _PushIdLinkPayload));

  @override
  _PushIdLinkPayload get _value => super._value as _PushIdLinkPayload;

  @override
  $Res call({
    Object? clientId = freezed,
    Object? id = freezed,
  }) {
    return _then(_PushIdLinkPayload(
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Hash,
    ));
  }
}

/// @nodoc

class _$_PushIdLinkPayload extends _PushIdLinkPayload {
  const _$_PushIdLinkPayload({required this.clientId, required this.id})
      : super._();

  @override
  final Hash clientId;
  @override
  final Hash id;

  @override
  String toString() {
    return 'PushIdLinkPayload(clientId: $clientId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushIdLinkPayload &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$PushIdLinkPayloadCopyWith<_PushIdLinkPayload> get copyWith =>
      __$PushIdLinkPayloadCopyWithImpl<_PushIdLinkPayload>(this, _$identity);
}

abstract class _PushIdLinkPayload extends PushIdLinkPayload {
  const factory _PushIdLinkPayload({required Hash clientId, required Hash id}) =
      _$_PushIdLinkPayload;
  const _PushIdLinkPayload._() : super._();

  @override
  Hash get clientId;
  @override
  Hash get id;
  @override
  @JsonKey(ignore: true)
  _$PushIdLinkPayloadCopyWith<_PushIdLinkPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

PushInfo _$PushInfoFromJson(Map<String, dynamic> json) {
  return _PushInfo.fromJson(json);
}

/// @nodoc
class _$PushInfoTearOff {
  const _$PushInfoTearOff();

  _PushInfo call(
      {required String walletId,
      required int index,
      required BigInt settings,
      bool idLinked = false,
      ViteNetwork network = ViteNetwork.mainnet}) {
    return _PushInfo(
      walletId: walletId,
      index: index,
      settings: settings,
      idLinked: idLinked,
      network: network,
    );
  }

  PushInfo fromJson(Map<String, Object?> json) {
    return PushInfo.fromJson(json);
  }
}

/// @nodoc
const $PushInfo = _$PushInfoTearOff();

/// @nodoc
mixin _$PushInfo {
  String get walletId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  BigInt get settings => throw _privateConstructorUsedError;
  bool get idLinked => throw _privateConstructorUsedError;
  ViteNetwork get network => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushInfoCopyWith<PushInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushInfoCopyWith<$Res> {
  factory $PushInfoCopyWith(PushInfo value, $Res Function(PushInfo) then) =
      _$PushInfoCopyWithImpl<$Res>;
  $Res call(
      {String walletId,
      int index,
      BigInt settings,
      bool idLinked,
      ViteNetwork network});
}

/// @nodoc
class _$PushInfoCopyWithImpl<$Res> implements $PushInfoCopyWith<$Res> {
  _$PushInfoCopyWithImpl(this._value, this._then);

  final PushInfo _value;
  // ignore: unused_field
  final $Res Function(PushInfo) _then;

  @override
  $Res call({
    Object? walletId = freezed,
    Object? index = freezed,
    Object? settings = freezed,
    Object? idLinked = freezed,
    Object? network = freezed,
  }) {
    return _then(_value.copyWith(
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BigInt,
      idLinked: idLinked == freezed
          ? _value.idLinked
          : idLinked // ignore: cast_nullable_to_non_nullable
              as bool,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
    ));
  }
}

/// @nodoc
abstract class _$PushInfoCopyWith<$Res> implements $PushInfoCopyWith<$Res> {
  factory _$PushInfoCopyWith(_PushInfo value, $Res Function(_PushInfo) then) =
      __$PushInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String walletId,
      int index,
      BigInt settings,
      bool idLinked,
      ViteNetwork network});
}

/// @nodoc
class __$PushInfoCopyWithImpl<$Res> extends _$PushInfoCopyWithImpl<$Res>
    implements _$PushInfoCopyWith<$Res> {
  __$PushInfoCopyWithImpl(_PushInfo _value, $Res Function(_PushInfo) _then)
      : super(_value, (v) => _then(v as _PushInfo));

  @override
  _PushInfo get _value => super._value as _PushInfo;

  @override
  $Res call({
    Object? walletId = freezed,
    Object? index = freezed,
    Object? settings = freezed,
    Object? idLinked = freezed,
    Object? network = freezed,
  }) {
    return _then(_PushInfo(
      walletId: walletId == freezed
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BigInt,
      idLinked: idLinked == freezed
          ? _value.idLinked
          : idLinked // ignore: cast_nullable_to_non_nullable
              as bool,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushInfo extends _PushInfo {
  _$_PushInfo(
      {required this.walletId,
      required this.index,
      required this.settings,
      this.idLinked = false,
      this.network = ViteNetwork.mainnet})
      : super._();

  factory _$_PushInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PushInfoFromJson(json);

  @override
  final String walletId;
  @override
  final int index;
  @override
  final BigInt settings;
  @JsonKey()
  @override
  final bool idLinked;
  @JsonKey()
  @override
  final ViteNetwork network;

  @override
  String toString() {
    return 'PushInfo(walletId: $walletId, index: $index, settings: $settings, idLinked: $idLinked, network: $network)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushInfo &&
            const DeepCollectionEquality().equals(other.walletId, walletId) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.idLinked, idLinked) &&
            const DeepCollectionEquality().equals(other.network, network));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(walletId),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(idLinked),
      const DeepCollectionEquality().hash(network));

  @JsonKey(ignore: true)
  @override
  _$PushInfoCopyWith<_PushInfo> get copyWith =>
      __$PushInfoCopyWithImpl<_PushInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushInfoToJson(this);
  }
}

abstract class _PushInfo extends PushInfo {
  factory _PushInfo(
      {required String walletId,
      required int index,
      required BigInt settings,
      bool idLinked,
      ViteNetwork network}) = _$_PushInfo;
  _PushInfo._() : super._();

  factory _PushInfo.fromJson(Map<String, dynamic> json) = _$_PushInfo.fromJson;

  @override
  String get walletId;
  @override
  int get index;
  @override
  BigInt get settings;
  @override
  bool get idLinked;
  @override
  ViteNetwork get network;
  @override
  @JsonKey(ignore: true)
  _$PushInfoCopyWith<_PushInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PushSettingsTearOff {
  const _$PushSettingsTearOff();

  _PushSettings call({bool enabled = false}) {
    return _PushSettings(
      enabled: enabled,
    );
  }
}

/// @nodoc
const $PushSettings = _$PushSettingsTearOff();

/// @nodoc
mixin _$PushSettings {
  bool get enabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushSettingsCopyWith<PushSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushSettingsCopyWith<$Res> {
  factory $PushSettingsCopyWith(
          PushSettings value, $Res Function(PushSettings) then) =
      _$PushSettingsCopyWithImpl<$Res>;
  $Res call({bool enabled});
}

/// @nodoc
class _$PushSettingsCopyWithImpl<$Res> implements $PushSettingsCopyWith<$Res> {
  _$PushSettingsCopyWithImpl(this._value, this._then);

  final PushSettings _value;
  // ignore: unused_field
  final $Res Function(PushSettings) _then;

  @override
  $Res call({
    Object? enabled = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PushSettingsCopyWith<$Res>
    implements $PushSettingsCopyWith<$Res> {
  factory _$PushSettingsCopyWith(
          _PushSettings value, $Res Function(_PushSettings) then) =
      __$PushSettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool enabled});
}

/// @nodoc
class __$PushSettingsCopyWithImpl<$Res> extends _$PushSettingsCopyWithImpl<$Res>
    implements _$PushSettingsCopyWith<$Res> {
  __$PushSettingsCopyWithImpl(
      _PushSettings _value, $Res Function(_PushSettings) _then)
      : super(_value, (v) => _then(v as _PushSettings));

  @override
  _PushSettings get _value => super._value as _PushSettings;

  @override
  $Res call({
    Object? enabled = freezed,
  }) {
    return _then(_PushSettings(
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PushSettings extends _PushSettings {
  const _$_PushSettings({this.enabled = false}) : super._();

  @JsonKey()
  @override
  final bool enabled;

  @override
  String toString() {
    return 'PushSettings(enabled: $enabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushSettings &&
            const DeepCollectionEquality().equals(other.enabled, enabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(enabled));

  @JsonKey(ignore: true)
  @override
  _$PushSettingsCopyWith<_PushSettings> get copyWith =>
      __$PushSettingsCopyWithImpl<_PushSettings>(this, _$identity);
}

abstract class _PushSettings extends PushSettings {
  const factory _PushSettings({bool enabled}) = _$_PushSettings;
  const _PushSettings._() : super._();

  @override
  bool get enabled;
  @override
  @JsonKey(ignore: true)
  _$PushSettingsCopyWith<_PushSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
