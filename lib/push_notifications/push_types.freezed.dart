// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$PushTokenPayloadImplCopyWith<$Res>
    implements $PushTokenPayloadCopyWith<$Res> {
  factory _$$PushTokenPayloadImplCopyWith(_$PushTokenPayloadImpl value,
          $Res Function(_$PushTokenPayloadImpl) then) =
      __$$PushTokenPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Hash clientId, String token});

  @override
  $HashCopyWith<$Res> get clientId;
}

/// @nodoc
class __$$PushTokenPayloadImplCopyWithImpl<$Res>
    extends _$PushTokenPayloadCopyWithImpl<$Res, _$PushTokenPayloadImpl>
    implements _$$PushTokenPayloadImplCopyWith<$Res> {
  __$$PushTokenPayloadImplCopyWithImpl(_$PushTokenPayloadImpl _value,
      $Res Function(_$PushTokenPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? token = null,
  }) {
    return _then(_$PushTokenPayloadImpl(
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
class _$PushTokenPayloadImpl implements _PushTokenPayload {
  const _$PushTokenPayloadImpl({required this.clientId, required this.token});

  factory _$PushTokenPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushTokenPayloadImplFromJson(json);

  @override
  final Hash clientId;
  @override
  final String token;

  @override
  String toString() {
    return 'PushTokenPayload(clientId: $clientId, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushTokenPayloadImpl &&
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
  _$$PushTokenPayloadImplCopyWith<_$PushTokenPayloadImpl> get copyWith =>
      __$$PushTokenPayloadImplCopyWithImpl<_$PushTokenPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushTokenPayloadImplToJson(
      this,
    );
  }
}

abstract class _PushTokenPayload implements PushTokenPayload {
  const factory _PushTokenPayload(
      {required final Hash clientId,
      required final String token}) = _$PushTokenPayloadImpl;

  factory _PushTokenPayload.fromJson(Map<String, dynamic> json) =
      _$PushTokenPayloadImpl.fromJson;

  @override
  Hash get clientId;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$PushTokenPayloadImplCopyWith<_$PushTokenPayloadImpl> get copyWith =>
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
abstract class _$$PushTokenSettingsImplCopyWith<$Res>
    implements $PushTokenSettingsCopyWith<$Res> {
  factory _$$PushTokenSettingsImplCopyWith(_$PushTokenSettingsImpl value,
          $Res Function(_$PushTokenSettingsImpl) then) =
      __$$PushTokenSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PushTokenPayload payload, bool published});

  @override
  $PushTokenPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$PushTokenSettingsImplCopyWithImpl<$Res>
    extends _$PushTokenSettingsCopyWithImpl<$Res, _$PushTokenSettingsImpl>
    implements _$$PushTokenSettingsImplCopyWith<$Res> {
  __$$PushTokenSettingsImplCopyWithImpl(_$PushTokenSettingsImpl _value,
      $Res Function(_$PushTokenSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? published = null,
  }) {
    return _then(_$PushTokenSettingsImpl(
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
class _$PushTokenSettingsImpl implements _PushTokenSettings {
  const _$PushTokenSettingsImpl(
      {required this.payload, this.published = false});

  factory _$PushTokenSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushTokenSettingsImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushTokenSettingsImpl &&
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
  _$$PushTokenSettingsImplCopyWith<_$PushTokenSettingsImpl> get copyWith =>
      __$$PushTokenSettingsImplCopyWithImpl<_$PushTokenSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushTokenSettingsImplToJson(
      this,
    );
  }
}

abstract class _PushTokenSettings implements PushTokenSettings {
  const factory _PushTokenSettings(
      {required final PushTokenPayload payload,
      final bool published}) = _$PushTokenSettingsImpl;

  factory _PushTokenSettings.fromJson(Map<String, dynamic> json) =
      _$PushTokenSettingsImpl.fromJson;

  @override
  PushTokenPayload get payload;
  @override
  bool get published;
  @override
  @JsonKey(ignore: true)
  _$$PushTokenSettingsImplCopyWith<_$PushTokenSettingsImpl> get copyWith =>
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
abstract class _$$PushIdLinkPayloadImplCopyWith<$Res>
    implements $PushIdLinkPayloadCopyWith<$Res> {
  factory _$$PushIdLinkPayloadImplCopyWith(_$PushIdLinkPayloadImpl value,
          $Res Function(_$PushIdLinkPayloadImpl) then) =
      __$$PushIdLinkPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Hash clientId, Hash id});

  @override
  $HashCopyWith<$Res> get clientId;
  @override
  $HashCopyWith<$Res> get id;
}

/// @nodoc
class __$$PushIdLinkPayloadImplCopyWithImpl<$Res>
    extends _$PushIdLinkPayloadCopyWithImpl<$Res, _$PushIdLinkPayloadImpl>
    implements _$$PushIdLinkPayloadImplCopyWith<$Res> {
  __$$PushIdLinkPayloadImplCopyWithImpl(_$PushIdLinkPayloadImpl _value,
      $Res Function(_$PushIdLinkPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? id = null,
  }) {
    return _then(_$PushIdLinkPayloadImpl(
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

class _$PushIdLinkPayloadImpl extends _PushIdLinkPayload {
  const _$PushIdLinkPayloadImpl({required this.clientId, required this.id})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushIdLinkPayloadImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushIdLinkPayloadImplCopyWith<_$PushIdLinkPayloadImpl> get copyWith =>
      __$$PushIdLinkPayloadImplCopyWithImpl<_$PushIdLinkPayloadImpl>(
          this, _$identity);
}

abstract class _PushIdLinkPayload extends PushIdLinkPayload {
  const factory _PushIdLinkPayload(
      {required final Hash clientId,
      required final Hash id}) = _$PushIdLinkPayloadImpl;
  const _PushIdLinkPayload._() : super._();

  @override
  Hash get clientId;
  @override
  Hash get id;
  @override
  @JsonKey(ignore: true)
  _$$PushIdLinkPayloadImplCopyWith<_$PushIdLinkPayloadImpl> get copyWith =>
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
abstract class _$$PushInfoImplCopyWith<$Res>
    implements $PushInfoCopyWith<$Res> {
  factory _$$PushInfoImplCopyWith(
          _$PushInfoImpl value, $Res Function(_$PushInfoImpl) then) =
      __$$PushInfoImplCopyWithImpl<$Res>;
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
class __$$PushInfoImplCopyWithImpl<$Res>
    extends _$PushInfoCopyWithImpl<$Res, _$PushInfoImpl>
    implements _$$PushInfoImplCopyWith<$Res> {
  __$$PushInfoImplCopyWithImpl(
      _$PushInfoImpl _value, $Res Function(_$PushInfoImpl) _then)
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
    return _then(_$PushInfoImpl(
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
class _$PushInfoImpl extends _PushInfo {
  _$PushInfoImpl(
      {required this.walletId,
      required this.index,
      required this.settings,
      this.idLinked = false,
      this.network = ViteNetwork.mainnet})
      : super._();

  factory _$PushInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushInfoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushInfoImpl &&
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
  _$$PushInfoImplCopyWith<_$PushInfoImpl> get copyWith =>
      __$$PushInfoImplCopyWithImpl<_$PushInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushInfoImplToJson(
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
      final ViteNetwork network}) = _$PushInfoImpl;
  _PushInfo._() : super._();

  factory _PushInfo.fromJson(Map<String, dynamic> json) =
      _$PushInfoImpl.fromJson;

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
  _$$PushInfoImplCopyWith<_$PushInfoImpl> get copyWith =>
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
abstract class _$$PushSettingsImplCopyWith<$Res>
    implements $PushSettingsCopyWith<$Res> {
  factory _$$PushSettingsImplCopyWith(
          _$PushSettingsImpl value, $Res Function(_$PushSettingsImpl) then) =
      __$$PushSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$PushSettingsImplCopyWithImpl<$Res>
    extends _$PushSettingsCopyWithImpl<$Res, _$PushSettingsImpl>
    implements _$$PushSettingsImplCopyWith<$Res> {
  __$$PushSettingsImplCopyWithImpl(
      _$PushSettingsImpl _value, $Res Function(_$PushSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_$PushSettingsImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PushSettingsImpl extends _PushSettings {
  const _$PushSettingsImpl({this.enabled = false}) : super._();

  @override
  @JsonKey()
  final bool enabled;

  @override
  String toString() {
    return 'PushSettings(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushSettingsImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushSettingsImplCopyWith<_$PushSettingsImpl> get copyWith =>
      __$$PushSettingsImplCopyWithImpl<_$PushSettingsImpl>(this, _$identity);
}

abstract class _PushSettings extends PushSettings {
  const factory _PushSettings({final bool enabled}) = _$PushSettingsImpl;
  const _PushSettings._() : super._();

  @override
  bool get enabled;
  @override
  @JsonKey(ignore: true)
  _$$PushSettingsImplCopyWith<_$PushSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
