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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushTokenPayload _$PushTokenPayloadFromJson(Map<String, dynamic> json) {
  return _PushTokenPayload.fromJson(json);
}

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
      _$PushTokenPayloadCopyWithImpl<$Res, PushTokenPayload>;
  @useResult
  $Res call({Hash clientId, String token});

  $HashCopyWith<$Res> get clientId;
}

/// @nodoc
class _$PushTokenPayloadCopyWithImpl<$Res, $Val extends PushTokenPayload>
    implements $PushTokenPayloadCopyWith<$Res> {
  _$PushTokenPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HashCopyWith<$Res> get clientId {
    return $HashCopyWith<$Res>(_value.clientId, (value) {
      return _then(_value.copyWith(clientId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PushTokenPayloadCopyWith<$Res>
    implements $PushTokenPayloadCopyWith<$Res> {
  factory _$$_PushTokenPayloadCopyWith(
          _$_PushTokenPayload value, $Res Function(_$_PushTokenPayload) then) =
      __$$_PushTokenPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Hash clientId, String token});

  @override
  $HashCopyWith<$Res> get clientId;
}

/// @nodoc
class __$$_PushTokenPayloadCopyWithImpl<$Res>
    extends _$PushTokenPayloadCopyWithImpl<$Res, _$_PushTokenPayload>
    implements _$$_PushTokenPayloadCopyWith<$Res> {
  __$$_PushTokenPayloadCopyWithImpl(
      _$_PushTokenPayload _value, $Res Function(_$_PushTokenPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? token = null,
  }) {
    return _then(_$_PushTokenPayload(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      token: null == token
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
            other is _$_PushTokenPayload &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushTokenPayloadCopyWith<_$_PushTokenPayload> get copyWith =>
      __$$_PushTokenPayloadCopyWithImpl<_$_PushTokenPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushTokenPayloadToJson(
      this,
    );
  }
}

abstract class _PushTokenPayload implements PushTokenPayload {
  const factory _PushTokenPayload(
      {required final Hash clientId,
      required final String token}) = _$_PushTokenPayload;

  factory _PushTokenPayload.fromJson(Map<String, dynamic> json) =
      _$_PushTokenPayload.fromJson;

  @override
  Hash get clientId;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_PushTokenPayloadCopyWith<_$_PushTokenPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

PushTokenSettings _$PushTokenSettingsFromJson(Map<String, dynamic> json) {
  return _PushTokenSettings.fromJson(json);
}

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
      _$PushTokenSettingsCopyWithImpl<$Res, PushTokenSettings>;
  @useResult
  $Res call({PushTokenPayload payload, bool published});

  $PushTokenPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$PushTokenSettingsCopyWithImpl<$Res, $Val extends PushTokenSettings>
    implements $PushTokenSettingsCopyWith<$Res> {
  _$PushTokenSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? published = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PushTokenPayload,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PushTokenPayloadCopyWith<$Res> get payload {
    return $PushTokenPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PushTokenSettingsCopyWith<$Res>
    implements $PushTokenSettingsCopyWith<$Res> {
  factory _$$_PushTokenSettingsCopyWith(_$_PushTokenSettings value,
          $Res Function(_$_PushTokenSettings) then) =
      __$$_PushTokenSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PushTokenPayload payload, bool published});

  @override
  $PushTokenPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_PushTokenSettingsCopyWithImpl<$Res>
    extends _$PushTokenSettingsCopyWithImpl<$Res, _$_PushTokenSettings>
    implements _$$_PushTokenSettingsCopyWith<$Res> {
  __$$_PushTokenSettingsCopyWithImpl(
      _$_PushTokenSettings _value, $Res Function(_$_PushTokenSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? published = null,
  }) {
    return _then(_$_PushTokenSettings(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PushTokenPayload,
      published: null == published
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
  @override
  @JsonKey()
  final bool published;

  @override
  String toString() {
    return 'PushTokenSettings(payload: $payload, published: $published)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushTokenSettings &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.published, published) ||
                other.published == published));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload, published);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushTokenSettingsCopyWith<_$_PushTokenSettings> get copyWith =>
      __$$_PushTokenSettingsCopyWithImpl<_$_PushTokenSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushTokenSettingsToJson(
      this,
    );
  }
}

abstract class _PushTokenSettings implements PushTokenSettings {
  const factory _PushTokenSettings(
      {required final PushTokenPayload payload,
      final bool published}) = _$_PushTokenSettings;

  factory _PushTokenSettings.fromJson(Map<String, dynamic> json) =
      _$_PushTokenSettings.fromJson;

  @override
  PushTokenPayload get payload;
  @override
  bool get published;
  @override
  @JsonKey(ignore: true)
  _$$_PushTokenSettingsCopyWith<_$_PushTokenSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$PushIdLinkPayloadCopyWithImpl<$Res, PushIdLinkPayload>;
  @useResult
  $Res call({Hash clientId, Hash id});

  $HashCopyWith<$Res> get clientId;
  $HashCopyWith<$Res> get id;
}

/// @nodoc
class _$PushIdLinkPayloadCopyWithImpl<$Res, $Val extends PushIdLinkPayload>
    implements $PushIdLinkPayloadCopyWith<$Res> {
  _$PushIdLinkPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Hash,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HashCopyWith<$Res> get clientId {
    return $HashCopyWith<$Res>(_value.clientId, (value) {
      return _then(_value.copyWith(clientId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HashCopyWith<$Res> get id {
    return $HashCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PushIdLinkPayloadCopyWith<$Res>
    implements $PushIdLinkPayloadCopyWith<$Res> {
  factory _$$_PushIdLinkPayloadCopyWith(_$_PushIdLinkPayload value,
          $Res Function(_$_PushIdLinkPayload) then) =
      __$$_PushIdLinkPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Hash clientId, Hash id});

  @override
  $HashCopyWith<$Res> get clientId;
  @override
  $HashCopyWith<$Res> get id;
}

/// @nodoc
class __$$_PushIdLinkPayloadCopyWithImpl<$Res>
    extends _$PushIdLinkPayloadCopyWithImpl<$Res, _$_PushIdLinkPayload>
    implements _$$_PushIdLinkPayloadCopyWith<$Res> {
  __$$_PushIdLinkPayloadCopyWithImpl(
      _$_PushIdLinkPayload _value, $Res Function(_$_PushIdLinkPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? id = null,
  }) {
    return _then(_$_PushIdLinkPayload(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Hash,
      id: null == id
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
            other is _$_PushIdLinkPayload &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushIdLinkPayloadCopyWith<_$_PushIdLinkPayload> get copyWith =>
      __$$_PushIdLinkPayloadCopyWithImpl<_$_PushIdLinkPayload>(
          this, _$identity);
}

abstract class _PushIdLinkPayload extends PushIdLinkPayload {
  const factory _PushIdLinkPayload(
      {required final Hash clientId,
      required final Hash id}) = _$_PushIdLinkPayload;
  const _PushIdLinkPayload._() : super._();

  @override
  Hash get clientId;
  @override
  Hash get id;
  @override
  @JsonKey(ignore: true)
  _$$_PushIdLinkPayloadCopyWith<_$_PushIdLinkPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

PushInfo _$PushInfoFromJson(Map<String, dynamic> json) {
  return _PushInfo.fromJson(json);
}

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
      _$PushInfoCopyWithImpl<$Res, PushInfo>;
  @useResult
  $Res call(
      {String walletId,
      int index,
      BigInt settings,
      bool idLinked,
      ViteNetwork network});
}

/// @nodoc
class _$PushInfoCopyWithImpl<$Res, $Val extends PushInfo>
    implements $PushInfoCopyWith<$Res> {
  _$PushInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? index = null,
    Object? settings = null,
    Object? idLinked = null,
    Object? network = null,
  }) {
    return _then(_value.copyWith(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BigInt,
      idLinked: null == idLinked
          ? _value.idLinked
          : idLinked // ignore: cast_nullable_to_non_nullable
              as bool,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PushInfoCopyWith<$Res> implements $PushInfoCopyWith<$Res> {
  factory _$$_PushInfoCopyWith(
          _$_PushInfo value, $Res Function(_$_PushInfo) then) =
      __$$_PushInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletId,
      int index,
      BigInt settings,
      bool idLinked,
      ViteNetwork network});
}

/// @nodoc
class __$$_PushInfoCopyWithImpl<$Res>
    extends _$PushInfoCopyWithImpl<$Res, _$_PushInfo>
    implements _$$_PushInfoCopyWith<$Res> {
  __$$_PushInfoCopyWithImpl(
      _$_PushInfo _value, $Res Function(_$_PushInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? index = null,
    Object? settings = null,
    Object? idLinked = null,
    Object? network = null,
  }) {
    return _then(_$_PushInfo(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as BigInt,
      idLinked: null == idLinked
          ? _value.idLinked
          : idLinked // ignore: cast_nullable_to_non_nullable
              as bool,
      network: null == network
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
  @override
  @JsonKey()
  final bool idLinked;
  @override
  @JsonKey()
  final ViteNetwork network;

  @override
  String toString() {
    return 'PushInfo(walletId: $walletId, index: $index, settings: $settings, idLinked: $idLinked, network: $network)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushInfo &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.idLinked, idLinked) ||
                other.idLinked == idLinked) &&
            (identical(other.network, network) || other.network == network));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, walletId, index, settings, idLinked, network);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushInfoCopyWith<_$_PushInfo> get copyWith =>
      __$$_PushInfoCopyWithImpl<_$_PushInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushInfoToJson(
      this,
    );
  }
}

abstract class _PushInfo extends PushInfo {
  factory _PushInfo(
      {required final String walletId,
      required final int index,
      required final BigInt settings,
      final bool idLinked,
      final ViteNetwork network}) = _$_PushInfo;
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
  _$$_PushInfoCopyWith<_$_PushInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$PushSettingsCopyWithImpl<$Res, PushSettings>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class _$PushSettingsCopyWithImpl<$Res, $Val extends PushSettings>
    implements $PushSettingsCopyWith<$Res> {
  _$PushSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_value.copyWith(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PushSettingsCopyWith<$Res>
    implements $PushSettingsCopyWith<$Res> {
  factory _$$_PushSettingsCopyWith(
          _$_PushSettings value, $Res Function(_$_PushSettings) then) =
      __$$_PushSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$_PushSettingsCopyWithImpl<$Res>
    extends _$PushSettingsCopyWithImpl<$Res, _$_PushSettings>
    implements _$$_PushSettingsCopyWith<$Res> {
  __$$_PushSettingsCopyWithImpl(
      _$_PushSettings _value, $Res Function(_$_PushSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_$_PushSettings(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PushSettings extends _PushSettings {
  const _$_PushSettings({this.enabled = false}) : super._();

  @override
  @JsonKey()
  final bool enabled;

  @override
  String toString() {
    return 'PushSettings(enabled: $enabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushSettings &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushSettingsCopyWith<_$_PushSettings> get copyWith =>
      __$$_PushSettingsCopyWithImpl<_$_PushSettings>(this, _$identity);
}

abstract class _PushSettings extends PushSettings {
  const factory _PushSettings({final bool enabled}) = _$_PushSettings;
  const _PushSettings._() : super._();

  @override
  bool get enabled;
  @override
  @JsonKey(ignore: true)
  _$$_PushSettingsCopyWith<_$_PushSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
