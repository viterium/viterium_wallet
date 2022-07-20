// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'viteconnect_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VCEventTearOff {
  const _$VCEventTearOff();

  _VCEventSessionRequest sessionRequest(VCSessionRequest sessionRequest) {
    return _VCEventSessionRequest(
      sessionRequest,
    );
  }

  _VCEventConnected connected(SessionStatus sessionStatus) {
    return _VCEventConnected(
      sessionStatus,
    );
  }

  _VCEventDisconnected disconnected([String? message]) {
    return _VCEventDisconnected(
      message,
    );
  }

  _VCEventSignEndSendTx signAndSendTx(JsonRpcRequest request) {
    return _VCEventSignEndSendTx(
      request,
    );
  }

  _VCEventSignMessage signMessage(JsonRpcRequest request) {
    return _VCEventSignMessage(
      request,
    );
  }
}

/// @nodoc
const $VCEvent = _$VCEventTearOff();

/// @nodoc
mixin _$VCEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VCSessionRequest sessionRequest) sessionRequest,
    required TResult Function(SessionStatus sessionStatus) connected,
    required TResult Function(String? message) disconnected,
    required TResult Function(JsonRpcRequest request) signAndSendTx,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCEventSessionRequest value) sessionRequest,
    required TResult Function(_VCEventConnected value) connected,
    required TResult Function(_VCEventDisconnected value) disconnected,
    required TResult Function(_VCEventSignEndSendTx value) signAndSendTx,
    required TResult Function(_VCEventSignMessage value) signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCEventCopyWith<$Res> {
  factory $VCEventCopyWith(VCEvent value, $Res Function(VCEvent) then) =
      _$VCEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VCEventCopyWithImpl<$Res> implements $VCEventCopyWith<$Res> {
  _$VCEventCopyWithImpl(this._value, this._then);

  final VCEvent _value;
  // ignore: unused_field
  final $Res Function(VCEvent) _then;
}

/// @nodoc
abstract class _$VCEventSessionRequestCopyWith<$Res> {
  factory _$VCEventSessionRequestCopyWith(_VCEventSessionRequest value,
          $Res Function(_VCEventSessionRequest) then) =
      __$VCEventSessionRequestCopyWithImpl<$Res>;
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$VCEventSessionRequestCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res>
    implements _$VCEventSessionRequestCopyWith<$Res> {
  __$VCEventSessionRequestCopyWithImpl(_VCEventSessionRequest _value,
      $Res Function(_VCEventSessionRequest) _then)
      : super(_value, (v) => _then(v as _VCEventSessionRequest));

  @override
  _VCEventSessionRequest get _value => super._value as _VCEventSessionRequest;

  @override
  $Res call({
    Object? sessionRequest = freezed,
  }) {
    return _then(_VCEventSessionRequest(
      sessionRequest == freezed
          ? _value.sessionRequest
          : sessionRequest // ignore: cast_nullable_to_non_nullable
              as VCSessionRequest,
    ));
  }

  @override
  $VCSessionRequestCopyWith<$Res> get sessionRequest {
    return $VCSessionRequestCopyWith<$Res>(_value.sessionRequest, (value) {
      return _then(_value.copyWith(sessionRequest: value));
    });
  }
}

/// @nodoc

class _$_VCEventSessionRequest implements _VCEventSessionRequest {
  const _$_VCEventSessionRequest(this.sessionRequest);

  @override
  final VCSessionRequest sessionRequest;

  @override
  String toString() {
    return 'VCEvent.sessionRequest(sessionRequest: $sessionRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCEventSessionRequest &&
            const DeepCollectionEquality()
                .equals(other.sessionRequest, sessionRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionRequest));

  @JsonKey(ignore: true)
  @override
  _$VCEventSessionRequestCopyWith<_VCEventSessionRequest> get copyWith =>
      __$VCEventSessionRequestCopyWithImpl<_VCEventSessionRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VCSessionRequest sessionRequest) sessionRequest,
    required TResult Function(SessionStatus sessionStatus) connected,
    required TResult Function(String? message) disconnected,
    required TResult Function(JsonRpcRequest request) signAndSendTx,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) {
    return sessionRequest(this.sessionRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) {
    return sessionRequest?.call(this.sessionRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) {
    if (sessionRequest != null) {
      return sessionRequest(this.sessionRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCEventSessionRequest value) sessionRequest,
    required TResult Function(_VCEventConnected value) connected,
    required TResult Function(_VCEventDisconnected value) disconnected,
    required TResult Function(_VCEventSignEndSendTx value) signAndSendTx,
    required TResult Function(_VCEventSignMessage value) signMessage,
  }) {
    return sessionRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
  }) {
    return sessionRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
    required TResult orElse(),
  }) {
    if (sessionRequest != null) {
      return sessionRequest(this);
    }
    return orElse();
  }
}

abstract class _VCEventSessionRequest implements VCEvent {
  const factory _VCEventSessionRequest(VCSessionRequest sessionRequest) =
      _$_VCEventSessionRequest;

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$VCEventSessionRequestCopyWith<_VCEventSessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCEventConnectedCopyWith<$Res> {
  factory _$VCEventConnectedCopyWith(
          _VCEventConnected value, $Res Function(_VCEventConnected) then) =
      __$VCEventConnectedCopyWithImpl<$Res>;
  $Res call({SessionStatus sessionStatus});

  $SessionStatusCopyWith<$Res> get sessionStatus;
}

/// @nodoc
class __$VCEventConnectedCopyWithImpl<$Res> extends _$VCEventCopyWithImpl<$Res>
    implements _$VCEventConnectedCopyWith<$Res> {
  __$VCEventConnectedCopyWithImpl(
      _VCEventConnected _value, $Res Function(_VCEventConnected) _then)
      : super(_value, (v) => _then(v as _VCEventConnected));

  @override
  _VCEventConnected get _value => super._value as _VCEventConnected;

  @override
  $Res call({
    Object? sessionStatus = freezed,
  }) {
    return _then(_VCEventConnected(
      sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
    ));
  }

  @override
  $SessionStatusCopyWith<$Res> get sessionStatus {
    return $SessionStatusCopyWith<$Res>(_value.sessionStatus, (value) {
      return _then(_value.copyWith(sessionStatus: value));
    });
  }
}

/// @nodoc

class _$_VCEventConnected implements _VCEventConnected {
  const _$_VCEventConnected(this.sessionStatus);

  @override
  final SessionStatus sessionStatus;

  @override
  String toString() {
    return 'VCEvent.connected(sessionStatus: $sessionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCEventConnected &&
            const DeepCollectionEquality()
                .equals(other.sessionStatus, sessionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionStatus));

  @JsonKey(ignore: true)
  @override
  _$VCEventConnectedCopyWith<_VCEventConnected> get copyWith =>
      __$VCEventConnectedCopyWithImpl<_VCEventConnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VCSessionRequest sessionRequest) sessionRequest,
    required TResult Function(SessionStatus sessionStatus) connected,
    required TResult Function(String? message) disconnected,
    required TResult Function(JsonRpcRequest request) signAndSendTx,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) {
    return connected(sessionStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) {
    return connected?.call(sessionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(sessionStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCEventSessionRequest value) sessionRequest,
    required TResult Function(_VCEventConnected value) connected,
    required TResult Function(_VCEventDisconnected value) disconnected,
    required TResult Function(_VCEventSignEndSendTx value) signAndSendTx,
    required TResult Function(_VCEventSignMessage value) signMessage,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _VCEventConnected implements VCEvent {
  const factory _VCEventConnected(SessionStatus sessionStatus) =
      _$_VCEventConnected;

  SessionStatus get sessionStatus;
  @JsonKey(ignore: true)
  _$VCEventConnectedCopyWith<_VCEventConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCEventDisconnectedCopyWith<$Res> {
  factory _$VCEventDisconnectedCopyWith(_VCEventDisconnected value,
          $Res Function(_VCEventDisconnected) then) =
      __$VCEventDisconnectedCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$VCEventDisconnectedCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res>
    implements _$VCEventDisconnectedCopyWith<$Res> {
  __$VCEventDisconnectedCopyWithImpl(
      _VCEventDisconnected _value, $Res Function(_VCEventDisconnected) _then)
      : super(_value, (v) => _then(v as _VCEventDisconnected));

  @override
  _VCEventDisconnected get _value => super._value as _VCEventDisconnected;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_VCEventDisconnected(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VCEventDisconnected implements _VCEventDisconnected {
  const _$_VCEventDisconnected([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'VCEvent.disconnected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCEventDisconnected &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$VCEventDisconnectedCopyWith<_VCEventDisconnected> get copyWith =>
      __$VCEventDisconnectedCopyWithImpl<_VCEventDisconnected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VCSessionRequest sessionRequest) sessionRequest,
    required TResult Function(SessionStatus sessionStatus) connected,
    required TResult Function(String? message) disconnected,
    required TResult Function(JsonRpcRequest request) signAndSendTx,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) {
    return disconnected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) {
    return disconnected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCEventSessionRequest value) sessionRequest,
    required TResult Function(_VCEventConnected value) connected,
    required TResult Function(_VCEventDisconnected value) disconnected,
    required TResult Function(_VCEventSignEndSendTx value) signAndSendTx,
    required TResult Function(_VCEventSignMessage value) signMessage,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _VCEventDisconnected implements VCEvent {
  const factory _VCEventDisconnected([String? message]) =
      _$_VCEventDisconnected;

  String? get message;
  @JsonKey(ignore: true)
  _$VCEventDisconnectedCopyWith<_VCEventDisconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCEventSignEndSendTxCopyWith<$Res> {
  factory _$VCEventSignEndSendTxCopyWith(_VCEventSignEndSendTx value,
          $Res Function(_VCEventSignEndSendTx) then) =
      __$VCEventSignEndSendTxCopyWithImpl<$Res>;
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$VCEventSignEndSendTxCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res>
    implements _$VCEventSignEndSendTxCopyWith<$Res> {
  __$VCEventSignEndSendTxCopyWithImpl(
      _VCEventSignEndSendTx _value, $Res Function(_VCEventSignEndSendTx) _then)
      : super(_value, (v) => _then(v as _VCEventSignEndSendTx));

  @override
  _VCEventSignEndSendTx get _value => super._value as _VCEventSignEndSendTx;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_VCEventSignEndSendTx(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }

  @override
  $JsonRpcRequestCopyWith<$Res> get request {
    return $JsonRpcRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_VCEventSignEndSendTx implements _VCEventSignEndSendTx {
  const _$_VCEventSignEndSendTx(this.request);

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCEvent.signAndSendTx(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCEventSignEndSendTx &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$VCEventSignEndSendTxCopyWith<_VCEventSignEndSendTx> get copyWith =>
      __$VCEventSignEndSendTxCopyWithImpl<_VCEventSignEndSendTx>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VCSessionRequest sessionRequest) sessionRequest,
    required TResult Function(SessionStatus sessionStatus) connected,
    required TResult Function(String? message) disconnected,
    required TResult Function(JsonRpcRequest request) signAndSendTx,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) {
    return signAndSendTx(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) {
    return signAndSendTx?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) {
    if (signAndSendTx != null) {
      return signAndSendTx(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCEventSessionRequest value) sessionRequest,
    required TResult Function(_VCEventConnected value) connected,
    required TResult Function(_VCEventDisconnected value) disconnected,
    required TResult Function(_VCEventSignEndSendTx value) signAndSendTx,
    required TResult Function(_VCEventSignMessage value) signMessage,
  }) {
    return signAndSendTx(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
  }) {
    return signAndSendTx?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
    required TResult orElse(),
  }) {
    if (signAndSendTx != null) {
      return signAndSendTx(this);
    }
    return orElse();
  }
}

abstract class _VCEventSignEndSendTx implements VCEvent {
  const factory _VCEventSignEndSendTx(JsonRpcRequest request) =
      _$_VCEventSignEndSendTx;

  JsonRpcRequest get request;
  @JsonKey(ignore: true)
  _$VCEventSignEndSendTxCopyWith<_VCEventSignEndSendTx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCEventSignMessageCopyWith<$Res> {
  factory _$VCEventSignMessageCopyWith(
          _VCEventSignMessage value, $Res Function(_VCEventSignMessage) then) =
      __$VCEventSignMessageCopyWithImpl<$Res>;
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$VCEventSignMessageCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res>
    implements _$VCEventSignMessageCopyWith<$Res> {
  __$VCEventSignMessageCopyWithImpl(
      _VCEventSignMessage _value, $Res Function(_VCEventSignMessage) _then)
      : super(_value, (v) => _then(v as _VCEventSignMessage));

  @override
  _VCEventSignMessage get _value => super._value as _VCEventSignMessage;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_VCEventSignMessage(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }

  @override
  $JsonRpcRequestCopyWith<$Res> get request {
    return $JsonRpcRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_VCEventSignMessage implements _VCEventSignMessage {
  const _$_VCEventSignMessage(this.request);

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCEvent.signMessage(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCEventSignMessage &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$VCEventSignMessageCopyWith<_VCEventSignMessage> get copyWith =>
      __$VCEventSignMessageCopyWithImpl<_VCEventSignMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VCSessionRequest sessionRequest) sessionRequest,
    required TResult Function(SessionStatus sessionStatus) connected,
    required TResult Function(String? message) disconnected,
    required TResult Function(JsonRpcRequest request) signAndSendTx,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) {
    return signMessage(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) {
    return signMessage?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult Function(SessionStatus sessionStatus)? connected,
    TResult Function(String? message)? disconnected,
    TResult Function(JsonRpcRequest request)? signAndSendTx,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) {
    if (signMessage != null) {
      return signMessage(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCEventSessionRequest value) sessionRequest,
    required TResult Function(_VCEventConnected value) connected,
    required TResult Function(_VCEventDisconnected value) disconnected,
    required TResult Function(_VCEventSignEndSendTx value) signAndSendTx,
    required TResult Function(_VCEventSignMessage value) signMessage,
  }) {
    return signMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
  }) {
    return signMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCEventSessionRequest value)? sessionRequest,
    TResult Function(_VCEventConnected value)? connected,
    TResult Function(_VCEventDisconnected value)? disconnected,
    TResult Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult Function(_VCEventSignMessage value)? signMessage,
    required TResult orElse(),
  }) {
    if (signMessage != null) {
      return signMessage(this);
    }
    return orElse();
  }
}

abstract class _VCEventSignMessage implements VCEvent {
  const factory _VCEventSignMessage(JsonRpcRequest request) =
      _$_VCEventSignMessage;

  JsonRpcRequest get request;
  @JsonKey(ignore: true)
  _$VCEventSignMessageCopyWith<_VCEventSignMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VCStateTearOff {
  const _$VCStateTearOff();

  _VCStateConnectingServer connectingToBridge(String bridgeUri) {
    return _VCStateConnectingServer(
      bridgeUri,
    );
  }

  _VCStatePendingApproval pendingApproval(VCSessionRequest sessionRequest) {
    return _VCStatePendingApproval(
      sessionRequest,
    );
  }

  _VCStateConnectingSession connectingSession(VCSessionRequest sessionRequest) {
    return _VCStateConnectingSession(
      sessionRequest,
    );
  }

  _VCStateConnected connected(
      {required SessionStatus sessionStatus,
      PeerMeta? peerMeta,
      VCRequest? currentRequest,
      IList<VCRequest> pendingRequests = const IListConst<VCRequest>([]),
      IList<VCHistoryItem> historyRequests =
          const IListConst<VCHistoryItem>([])}) {
    return _VCStateConnected(
      sessionStatus: sessionStatus,
      peerMeta: peerMeta,
      currentRequest: currentRequest,
      pendingRequests: pendingRequests,
      historyRequests: historyRequests,
    );
  }

  _VCStateDisconnected disconnected([String? message]) {
    return _VCStateDisconnected(
      message,
    );
  }
}

/// @nodoc
const $VCState = _$VCStateTearOff();

/// @nodoc
mixin _$VCState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bridgeUri) connectingToBridge,
    required TResult Function(VCSessionRequest sessionRequest) pendingApproval,
    required TResult Function(VCSessionRequest sessionRequest)
        connectingSession,
    required TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)
        connected,
    required TResult Function(String? message) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCStateConnectingServer value)
        connectingToBridge,
    required TResult Function(_VCStatePendingApproval value) pendingApproval,
    required TResult Function(_VCStateConnectingSession value)
        connectingSession,
    required TResult Function(_VCStateConnected value) connected,
    required TResult Function(_VCStateDisconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCStateCopyWith<$Res> {
  factory $VCStateCopyWith(VCState value, $Res Function(VCState) then) =
      _$VCStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VCStateCopyWithImpl<$Res> implements $VCStateCopyWith<$Res> {
  _$VCStateCopyWithImpl(this._value, this._then);

  final VCState _value;
  // ignore: unused_field
  final $Res Function(VCState) _then;
}

/// @nodoc
abstract class _$VCStateConnectingServerCopyWith<$Res> {
  factory _$VCStateConnectingServerCopyWith(_VCStateConnectingServer value,
          $Res Function(_VCStateConnectingServer) then) =
      __$VCStateConnectingServerCopyWithImpl<$Res>;
  $Res call({String bridgeUri});
}

/// @nodoc
class __$VCStateConnectingServerCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res>
    implements _$VCStateConnectingServerCopyWith<$Res> {
  __$VCStateConnectingServerCopyWithImpl(_VCStateConnectingServer _value,
      $Res Function(_VCStateConnectingServer) _then)
      : super(_value, (v) => _then(v as _VCStateConnectingServer));

  @override
  _VCStateConnectingServer get _value =>
      super._value as _VCStateConnectingServer;

  @override
  $Res call({
    Object? bridgeUri = freezed,
  }) {
    return _then(_VCStateConnectingServer(
      bridgeUri == freezed
          ? _value.bridgeUri
          : bridgeUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VCStateConnectingServer extends _VCStateConnectingServer {
  const _$_VCStateConnectingServer(this.bridgeUri) : super._();

  @override
  final String bridgeUri;

  @override
  String toString() {
    return 'VCState.connectingToBridge(bridgeUri: $bridgeUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCStateConnectingServer &&
            const DeepCollectionEquality().equals(other.bridgeUri, bridgeUri));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bridgeUri));

  @JsonKey(ignore: true)
  @override
  _$VCStateConnectingServerCopyWith<_VCStateConnectingServer> get copyWith =>
      __$VCStateConnectingServerCopyWithImpl<_VCStateConnectingServer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bridgeUri) connectingToBridge,
    required TResult Function(VCSessionRequest sessionRequest) pendingApproval,
    required TResult Function(VCSessionRequest sessionRequest)
        connectingSession,
    required TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)
        connected,
    required TResult Function(String? message) disconnected,
  }) {
    return connectingToBridge(bridgeUri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
  }) {
    return connectingToBridge?.call(bridgeUri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
    required TResult orElse(),
  }) {
    if (connectingToBridge != null) {
      return connectingToBridge(bridgeUri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCStateConnectingServer value)
        connectingToBridge,
    required TResult Function(_VCStatePendingApproval value) pendingApproval,
    required TResult Function(_VCStateConnectingSession value)
        connectingSession,
    required TResult Function(_VCStateConnected value) connected,
    required TResult Function(_VCStateDisconnected value) disconnected,
  }) {
    return connectingToBridge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
  }) {
    return connectingToBridge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connectingToBridge != null) {
      return connectingToBridge(this);
    }
    return orElse();
  }
}

abstract class _VCStateConnectingServer extends VCState {
  const factory _VCStateConnectingServer(String bridgeUri) =
      _$_VCStateConnectingServer;
  const _VCStateConnectingServer._() : super._();

  String get bridgeUri;
  @JsonKey(ignore: true)
  _$VCStateConnectingServerCopyWith<_VCStateConnectingServer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCStatePendingApprovalCopyWith<$Res> {
  factory _$VCStatePendingApprovalCopyWith(_VCStatePendingApproval value,
          $Res Function(_VCStatePendingApproval) then) =
      __$VCStatePendingApprovalCopyWithImpl<$Res>;
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$VCStatePendingApprovalCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res>
    implements _$VCStatePendingApprovalCopyWith<$Res> {
  __$VCStatePendingApprovalCopyWithImpl(_VCStatePendingApproval _value,
      $Res Function(_VCStatePendingApproval) _then)
      : super(_value, (v) => _then(v as _VCStatePendingApproval));

  @override
  _VCStatePendingApproval get _value => super._value as _VCStatePendingApproval;

  @override
  $Res call({
    Object? sessionRequest = freezed,
  }) {
    return _then(_VCStatePendingApproval(
      sessionRequest == freezed
          ? _value.sessionRequest
          : sessionRequest // ignore: cast_nullable_to_non_nullable
              as VCSessionRequest,
    ));
  }

  @override
  $VCSessionRequestCopyWith<$Res> get sessionRequest {
    return $VCSessionRequestCopyWith<$Res>(_value.sessionRequest, (value) {
      return _then(_value.copyWith(sessionRequest: value));
    });
  }
}

/// @nodoc

class _$_VCStatePendingApproval extends _VCStatePendingApproval {
  const _$_VCStatePendingApproval(this.sessionRequest) : super._();

  @override
  final VCSessionRequest sessionRequest;

  @override
  String toString() {
    return 'VCState.pendingApproval(sessionRequest: $sessionRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCStatePendingApproval &&
            const DeepCollectionEquality()
                .equals(other.sessionRequest, sessionRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionRequest));

  @JsonKey(ignore: true)
  @override
  _$VCStatePendingApprovalCopyWith<_VCStatePendingApproval> get copyWith =>
      __$VCStatePendingApprovalCopyWithImpl<_VCStatePendingApproval>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bridgeUri) connectingToBridge,
    required TResult Function(VCSessionRequest sessionRequest) pendingApproval,
    required TResult Function(VCSessionRequest sessionRequest)
        connectingSession,
    required TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)
        connected,
    required TResult Function(String? message) disconnected,
  }) {
    return pendingApproval(sessionRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
  }) {
    return pendingApproval?.call(sessionRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
    required TResult orElse(),
  }) {
    if (pendingApproval != null) {
      return pendingApproval(sessionRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCStateConnectingServer value)
        connectingToBridge,
    required TResult Function(_VCStatePendingApproval value) pendingApproval,
    required TResult Function(_VCStateConnectingSession value)
        connectingSession,
    required TResult Function(_VCStateConnected value) connected,
    required TResult Function(_VCStateDisconnected value) disconnected,
  }) {
    return pendingApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
  }) {
    return pendingApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (pendingApproval != null) {
      return pendingApproval(this);
    }
    return orElse();
  }
}

abstract class _VCStatePendingApproval extends VCState {
  const factory _VCStatePendingApproval(VCSessionRequest sessionRequest) =
      _$_VCStatePendingApproval;
  const _VCStatePendingApproval._() : super._();

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$VCStatePendingApprovalCopyWith<_VCStatePendingApproval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCStateConnectingSessionCopyWith<$Res> {
  factory _$VCStateConnectingSessionCopyWith(_VCStateConnectingSession value,
          $Res Function(_VCStateConnectingSession) then) =
      __$VCStateConnectingSessionCopyWithImpl<$Res>;
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$VCStateConnectingSessionCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res>
    implements _$VCStateConnectingSessionCopyWith<$Res> {
  __$VCStateConnectingSessionCopyWithImpl(_VCStateConnectingSession _value,
      $Res Function(_VCStateConnectingSession) _then)
      : super(_value, (v) => _then(v as _VCStateConnectingSession));

  @override
  _VCStateConnectingSession get _value =>
      super._value as _VCStateConnectingSession;

  @override
  $Res call({
    Object? sessionRequest = freezed,
  }) {
    return _then(_VCStateConnectingSession(
      sessionRequest == freezed
          ? _value.sessionRequest
          : sessionRequest // ignore: cast_nullable_to_non_nullable
              as VCSessionRequest,
    ));
  }

  @override
  $VCSessionRequestCopyWith<$Res> get sessionRequest {
    return $VCSessionRequestCopyWith<$Res>(_value.sessionRequest, (value) {
      return _then(_value.copyWith(sessionRequest: value));
    });
  }
}

/// @nodoc

class _$_VCStateConnectingSession extends _VCStateConnectingSession {
  const _$_VCStateConnectingSession(this.sessionRequest) : super._();

  @override
  final VCSessionRequest sessionRequest;

  @override
  String toString() {
    return 'VCState.connectingSession(sessionRequest: $sessionRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCStateConnectingSession &&
            const DeepCollectionEquality()
                .equals(other.sessionRequest, sessionRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionRequest));

  @JsonKey(ignore: true)
  @override
  _$VCStateConnectingSessionCopyWith<_VCStateConnectingSession> get copyWith =>
      __$VCStateConnectingSessionCopyWithImpl<_VCStateConnectingSession>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bridgeUri) connectingToBridge,
    required TResult Function(VCSessionRequest sessionRequest) pendingApproval,
    required TResult Function(VCSessionRequest sessionRequest)
        connectingSession,
    required TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)
        connected,
    required TResult Function(String? message) disconnected,
  }) {
    return connectingSession(sessionRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
  }) {
    return connectingSession?.call(sessionRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
    required TResult orElse(),
  }) {
    if (connectingSession != null) {
      return connectingSession(sessionRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCStateConnectingServer value)
        connectingToBridge,
    required TResult Function(_VCStatePendingApproval value) pendingApproval,
    required TResult Function(_VCStateConnectingSession value)
        connectingSession,
    required TResult Function(_VCStateConnected value) connected,
    required TResult Function(_VCStateDisconnected value) disconnected,
  }) {
    return connectingSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
  }) {
    return connectingSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connectingSession != null) {
      return connectingSession(this);
    }
    return orElse();
  }
}

abstract class _VCStateConnectingSession extends VCState {
  const factory _VCStateConnectingSession(VCSessionRequest sessionRequest) =
      _$_VCStateConnectingSession;
  const _VCStateConnectingSession._() : super._();

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$VCStateConnectingSessionCopyWith<_VCStateConnectingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCStateConnectedCopyWith<$Res> {
  factory _$VCStateConnectedCopyWith(
          _VCStateConnected value, $Res Function(_VCStateConnected) then) =
      __$VCStateConnectedCopyWithImpl<$Res>;
  $Res call(
      {SessionStatus sessionStatus,
      PeerMeta? peerMeta,
      VCRequest? currentRequest,
      IList<VCRequest> pendingRequests,
      IList<VCHistoryItem> historyRequests});

  $SessionStatusCopyWith<$Res> get sessionStatus;
  $PeerMetaCopyWith<$Res>? get peerMeta;
  $VCRequestCopyWith<$Res>? get currentRequest;
}

/// @nodoc
class __$VCStateConnectedCopyWithImpl<$Res> extends _$VCStateCopyWithImpl<$Res>
    implements _$VCStateConnectedCopyWith<$Res> {
  __$VCStateConnectedCopyWithImpl(
      _VCStateConnected _value, $Res Function(_VCStateConnected) _then)
      : super(_value, (v) => _then(v as _VCStateConnected));

  @override
  _VCStateConnected get _value => super._value as _VCStateConnected;

  @override
  $Res call({
    Object? sessionStatus = freezed,
    Object? peerMeta = freezed,
    Object? currentRequest = freezed,
    Object? pendingRequests = freezed,
    Object? historyRequests = freezed,
  }) {
    return _then(_VCStateConnected(
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      peerMeta: peerMeta == freezed
          ? _value.peerMeta
          : peerMeta // ignore: cast_nullable_to_non_nullable
              as PeerMeta?,
      currentRequest: currentRequest == freezed
          ? _value.currentRequest
          : currentRequest // ignore: cast_nullable_to_non_nullable
              as VCRequest?,
      pendingRequests: pendingRequests == freezed
          ? _value.pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as IList<VCRequest>,
      historyRequests: historyRequests == freezed
          ? _value.historyRequests
          : historyRequests // ignore: cast_nullable_to_non_nullable
              as IList<VCHistoryItem>,
    ));
  }

  @override
  $SessionStatusCopyWith<$Res> get sessionStatus {
    return $SessionStatusCopyWith<$Res>(_value.sessionStatus, (value) {
      return _then(_value.copyWith(sessionStatus: value));
    });
  }

  @override
  $PeerMetaCopyWith<$Res>? get peerMeta {
    if (_value.peerMeta == null) {
      return null;
    }

    return $PeerMetaCopyWith<$Res>(_value.peerMeta!, (value) {
      return _then(_value.copyWith(peerMeta: value));
    });
  }

  @override
  $VCRequestCopyWith<$Res>? get currentRequest {
    if (_value.currentRequest == null) {
      return null;
    }

    return $VCRequestCopyWith<$Res>(_value.currentRequest!, (value) {
      return _then(_value.copyWith(currentRequest: value));
    });
  }
}

/// @nodoc

class _$_VCStateConnected extends _VCStateConnected {
  const _$_VCStateConnected(
      {required this.sessionStatus,
      this.peerMeta,
      this.currentRequest,
      this.pendingRequests = const IListConst<VCRequest>([]),
      this.historyRequests = const IListConst<VCHistoryItem>([])})
      : super._();

  @override
  final SessionStatus sessionStatus;
  @override
  final PeerMeta? peerMeta;
  @override
  final VCRequest? currentRequest;
  @JsonKey()
  @override
  final IList<VCRequest> pendingRequests;
  @JsonKey()
  @override
  final IList<VCHistoryItem> historyRequests;

  @override
  String toString() {
    return 'VCState.connected(sessionStatus: $sessionStatus, peerMeta: $peerMeta, currentRequest: $currentRequest, pendingRequests: $pendingRequests, historyRequests: $historyRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCStateConnected &&
            const DeepCollectionEquality()
                .equals(other.sessionStatus, sessionStatus) &&
            const DeepCollectionEquality().equals(other.peerMeta, peerMeta) &&
            const DeepCollectionEquality()
                .equals(other.currentRequest, currentRequest) &&
            const DeepCollectionEquality()
                .equals(other.pendingRequests, pendingRequests) &&
            const DeepCollectionEquality()
                .equals(other.historyRequests, historyRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionStatus),
      const DeepCollectionEquality().hash(peerMeta),
      const DeepCollectionEquality().hash(currentRequest),
      const DeepCollectionEquality().hash(pendingRequests),
      const DeepCollectionEquality().hash(historyRequests));

  @JsonKey(ignore: true)
  @override
  _$VCStateConnectedCopyWith<_VCStateConnected> get copyWith =>
      __$VCStateConnectedCopyWithImpl<_VCStateConnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bridgeUri) connectingToBridge,
    required TResult Function(VCSessionRequest sessionRequest) pendingApproval,
    required TResult Function(VCSessionRequest sessionRequest)
        connectingSession,
    required TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)
        connected,
    required TResult Function(String? message) disconnected,
  }) {
    return connected(sessionStatus, peerMeta, currentRequest, pendingRequests,
        historyRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
  }) {
    return connected?.call(sessionStatus, peerMeta, currentRequest,
        pendingRequests, historyRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(sessionStatus, peerMeta, currentRequest, pendingRequests,
          historyRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCStateConnectingServer value)
        connectingToBridge,
    required TResult Function(_VCStatePendingApproval value) pendingApproval,
    required TResult Function(_VCStateConnectingSession value)
        connectingSession,
    required TResult Function(_VCStateConnected value) connected,
    required TResult Function(_VCStateDisconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _VCStateConnected extends VCState {
  const factory _VCStateConnected(
      {required SessionStatus sessionStatus,
      PeerMeta? peerMeta,
      VCRequest? currentRequest,
      IList<VCRequest> pendingRequests,
      IList<VCHistoryItem> historyRequests}) = _$_VCStateConnected;
  const _VCStateConnected._() : super._();

  SessionStatus get sessionStatus;
  PeerMeta? get peerMeta;
  VCRequest? get currentRequest;
  IList<VCRequest> get pendingRequests;
  IList<VCHistoryItem> get historyRequests;
  @JsonKey(ignore: true)
  _$VCStateConnectedCopyWith<_VCStateConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCStateDisconnectedCopyWith<$Res> {
  factory _$VCStateDisconnectedCopyWith(_VCStateDisconnected value,
          $Res Function(_VCStateDisconnected) then) =
      __$VCStateDisconnectedCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$VCStateDisconnectedCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res>
    implements _$VCStateDisconnectedCopyWith<$Res> {
  __$VCStateDisconnectedCopyWithImpl(
      _VCStateDisconnected _value, $Res Function(_VCStateDisconnected) _then)
      : super(_value, (v) => _then(v as _VCStateDisconnected));

  @override
  _VCStateDisconnected get _value => super._value as _VCStateDisconnected;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_VCStateDisconnected(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VCStateDisconnected extends _VCStateDisconnected {
  const _$_VCStateDisconnected([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'VCState.disconnected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCStateDisconnected &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$VCStateDisconnectedCopyWith<_VCStateDisconnected> get copyWith =>
      __$VCStateDisconnectedCopyWithImpl<_VCStateDisconnected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bridgeUri) connectingToBridge,
    required TResult Function(VCSessionRequest sessionRequest) pendingApproval,
    required TResult Function(VCSessionRequest sessionRequest)
        connectingSession,
    required TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)
        connected,
    required TResult Function(String? message) disconnected,
  }) {
    return disconnected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
  }) {
    return disconnected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bridgeUri)? connectingToBridge,
    TResult Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult Function(String? message)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCStateConnectingServer value)
        connectingToBridge,
    required TResult Function(_VCStatePendingApproval value) pendingApproval,
    required TResult Function(_VCStateConnectingSession value)
        connectingSession,
    required TResult Function(_VCStateConnected value) connected,
    required TResult Function(_VCStateDisconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult Function(_VCStatePendingApproval value)? pendingApproval,
    TResult Function(_VCStateConnectingSession value)? connectingSession,
    TResult Function(_VCStateConnected value)? connected,
    TResult Function(_VCStateDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _VCStateDisconnected extends VCState {
  const factory _VCStateDisconnected([String? message]) =
      _$_VCStateDisconnected;
  const _VCStateDisconnected._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$VCStateDisconnectedCopyWith<_VCStateDisconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VCRequestTearOff {
  const _$VCRequestTearOff();

  _VCRequestTransaction transaction(JsonRpcRequest request) {
    return _VCRequestTransaction(
      request,
    );
  }

  _VCRequestSignMessage signMessage(JsonRpcRequest request) {
    return _VCRequestSignMessage(
      request,
    );
  }
}

/// @nodoc
const $VCRequest = _$VCRequestTearOff();

/// @nodoc
mixin _$VCRequest {
  JsonRpcRequest get request => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JsonRpcRequest request) transaction,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JsonRpcRequest request)? transaction,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JsonRpcRequest request)? transaction,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCRequestTransaction value) transaction,
    required TResult Function(_VCRequestSignMessage value) signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCRequestTransaction value)? transaction,
    TResult Function(_VCRequestSignMessage value)? signMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCRequestTransaction value)? transaction,
    TResult Function(_VCRequestSignMessage value)? signMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VCRequestCopyWith<VCRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCRequestCopyWith<$Res> {
  factory $VCRequestCopyWith(VCRequest value, $Res Function(VCRequest) then) =
      _$VCRequestCopyWithImpl<$Res>;
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$VCRequestCopyWithImpl<$Res> implements $VCRequestCopyWith<$Res> {
  _$VCRequestCopyWithImpl(this._value, this._then);

  final VCRequest _value;
  // ignore: unused_field
  final $Res Function(VCRequest) _then;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }

  @override
  $JsonRpcRequestCopyWith<$Res> get request {
    return $JsonRpcRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
abstract class _$VCRequestTransactionCopyWith<$Res>
    implements $VCRequestCopyWith<$Res> {
  factory _$VCRequestTransactionCopyWith(_VCRequestTransaction value,
          $Res Function(_VCRequestTransaction) then) =
      __$VCRequestTransactionCopyWithImpl<$Res>;
  @override
  $Res call({JsonRpcRequest request});

  @override
  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$VCRequestTransactionCopyWithImpl<$Res>
    extends _$VCRequestCopyWithImpl<$Res>
    implements _$VCRequestTransactionCopyWith<$Res> {
  __$VCRequestTransactionCopyWithImpl(
      _VCRequestTransaction _value, $Res Function(_VCRequestTransaction) _then)
      : super(_value, (v) => _then(v as _VCRequestTransaction));

  @override
  _VCRequestTransaction get _value => super._value as _VCRequestTransaction;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_VCRequestTransaction(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }
}

/// @nodoc

class _$_VCRequestTransaction extends _VCRequestTransaction {
  const _$_VCRequestTransaction(this.request) : super._();

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCRequest.transaction(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCRequestTransaction &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$VCRequestTransactionCopyWith<_VCRequestTransaction> get copyWith =>
      __$VCRequestTransactionCopyWithImpl<_VCRequestTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JsonRpcRequest request) transaction,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) {
    return transaction(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JsonRpcRequest request)? transaction,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) {
    return transaction?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JsonRpcRequest request)? transaction,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCRequestTransaction value) transaction,
    required TResult Function(_VCRequestSignMessage value) signMessage,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCRequestTransaction value)? transaction,
    TResult Function(_VCRequestSignMessage value)? signMessage,
  }) {
    return transaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCRequestTransaction value)? transaction,
    TResult Function(_VCRequestSignMessage value)? signMessage,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }
}

abstract class _VCRequestTransaction extends VCRequest {
  const factory _VCRequestTransaction(JsonRpcRequest request) =
      _$_VCRequestTransaction;
  const _VCRequestTransaction._() : super._();

  @override
  JsonRpcRequest get request;
  @override
  @JsonKey(ignore: true)
  _$VCRequestTransactionCopyWith<_VCRequestTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCRequestSignMessageCopyWith<$Res>
    implements $VCRequestCopyWith<$Res> {
  factory _$VCRequestSignMessageCopyWith(_VCRequestSignMessage value,
          $Res Function(_VCRequestSignMessage) then) =
      __$VCRequestSignMessageCopyWithImpl<$Res>;
  @override
  $Res call({JsonRpcRequest request});

  @override
  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$VCRequestSignMessageCopyWithImpl<$Res>
    extends _$VCRequestCopyWithImpl<$Res>
    implements _$VCRequestSignMessageCopyWith<$Res> {
  __$VCRequestSignMessageCopyWithImpl(
      _VCRequestSignMessage _value, $Res Function(_VCRequestSignMessage) _then)
      : super(_value, (v) => _then(v as _VCRequestSignMessage));

  @override
  _VCRequestSignMessage get _value => super._value as _VCRequestSignMessage;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_VCRequestSignMessage(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }
}

/// @nodoc

class _$_VCRequestSignMessage extends _VCRequestSignMessage {
  const _$_VCRequestSignMessage(this.request) : super._();

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCRequest.signMessage(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCRequestSignMessage &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$VCRequestSignMessageCopyWith<_VCRequestSignMessage> get copyWith =>
      __$VCRequestSignMessageCopyWithImpl<_VCRequestSignMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JsonRpcRequest request) transaction,
    required TResult Function(JsonRpcRequest request) signMessage,
  }) {
    return signMessage(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JsonRpcRequest request)? transaction,
    TResult Function(JsonRpcRequest request)? signMessage,
  }) {
    return signMessage?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JsonRpcRequest request)? transaction,
    TResult Function(JsonRpcRequest request)? signMessage,
    required TResult orElse(),
  }) {
    if (signMessage != null) {
      return signMessage(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCRequestTransaction value) transaction,
    required TResult Function(_VCRequestSignMessage value) signMessage,
  }) {
    return signMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCRequestTransaction value)? transaction,
    TResult Function(_VCRequestSignMessage value)? signMessage,
  }) {
    return signMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCRequestTransaction value)? transaction,
    TResult Function(_VCRequestSignMessage value)? signMessage,
    required TResult orElse(),
  }) {
    if (signMessage != null) {
      return signMessage(this);
    }
    return orElse();
  }
}

abstract class _VCRequestSignMessage extends VCRequest {
  const factory _VCRequestSignMessage(JsonRpcRequest request) =
      _$_VCRequestSignMessage;
  const _VCRequestSignMessage._() : super._();

  @override
  JsonRpcRequest get request;
  @override
  @JsonKey(ignore: true)
  _$VCRequestSignMessageCopyWith<_VCRequestSignMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VCTxRequestTearOff {
  const _$VCTxRequestTearOff();

  _VCTxRequest call({required int id, required SendTx tx}) {
    return _VCTxRequest(
      id: id,
      tx: tx,
    );
  }
}

/// @nodoc
const $VCTxRequest = _$VCTxRequestTearOff();

/// @nodoc
mixin _$VCTxRequest {
  int get id => throw _privateConstructorUsedError;
  SendTx get tx => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VCTxRequestCopyWith<VCTxRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCTxRequestCopyWith<$Res> {
  factory $VCTxRequestCopyWith(
          VCTxRequest value, $Res Function(VCTxRequest) then) =
      _$VCTxRequestCopyWithImpl<$Res>;
  $Res call({int id, SendTx tx});

  $SendTxCopyWith<$Res> get tx;
}

/// @nodoc
class _$VCTxRequestCopyWithImpl<$Res> implements $VCTxRequestCopyWith<$Res> {
  _$VCTxRequestCopyWithImpl(this._value, this._then);

  final VCTxRequest _value;
  // ignore: unused_field
  final $Res Function(VCTxRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tx = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tx: tx == freezed
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as SendTx,
    ));
  }

  @override
  $SendTxCopyWith<$Res> get tx {
    return $SendTxCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value));
    });
  }
}

/// @nodoc
abstract class _$VCTxRequestCopyWith<$Res>
    implements $VCTxRequestCopyWith<$Res> {
  factory _$VCTxRequestCopyWith(
          _VCTxRequest value, $Res Function(_VCTxRequest) then) =
      __$VCTxRequestCopyWithImpl<$Res>;
  @override
  $Res call({int id, SendTx tx});

  @override
  $SendTxCopyWith<$Res> get tx;
}

/// @nodoc
class __$VCTxRequestCopyWithImpl<$Res> extends _$VCTxRequestCopyWithImpl<$Res>
    implements _$VCTxRequestCopyWith<$Res> {
  __$VCTxRequestCopyWithImpl(
      _VCTxRequest _value, $Res Function(_VCTxRequest) _then)
      : super(_value, (v) => _then(v as _VCTxRequest));

  @override
  _VCTxRequest get _value => super._value as _VCTxRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? tx = freezed,
  }) {
    return _then(_VCTxRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tx: tx == freezed
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as SendTx,
    ));
  }
}

/// @nodoc

class _$_VCTxRequest extends _VCTxRequest {
  const _$_VCTxRequest({required this.id, required this.tx}) : super._();

  @override
  final int id;
  @override
  final SendTx tx;

  @override
  String toString() {
    return 'VCTxRequest(id: $id, tx: $tx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCTxRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tx, tx));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tx));

  @JsonKey(ignore: true)
  @override
  _$VCTxRequestCopyWith<_VCTxRequest> get copyWith =>
      __$VCTxRequestCopyWithImpl<_VCTxRequest>(this, _$identity);
}

abstract class _VCTxRequest extends VCTxRequest {
  const factory _VCTxRequest({required int id, required SendTx tx}) =
      _$_VCTxRequest;
  const _VCTxRequest._() : super._();

  @override
  int get id;
  @override
  SendTx get tx;
  @override
  @JsonKey(ignore: true)
  _$VCTxRequestCopyWith<_VCTxRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VCTxResponseTearOff {
  const _$VCTxResponseTearOff();

  _VCTxResponseConfirmed confirmed(AccountBlock accountBlock) {
    return _VCTxResponseConfirmed(
      accountBlock,
    );
  }

  _VCTxResponseCancelled cancelled() {
    return const _VCTxResponseCancelled();
  }
}

/// @nodoc
const $VCTxResponse = _$VCTxResponseTearOff();

/// @nodoc
mixin _$VCTxResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountBlock accountBlock) confirmed,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountBlock accountBlock)? confirmed,
    TResult Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountBlock accountBlock)? confirmed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCTxResponseConfirmed value) confirmed,
    required TResult Function(_VCTxResponseCancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCTxResponseConfirmed value)? confirmed,
    TResult Function(_VCTxResponseCancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCTxResponseConfirmed value)? confirmed,
    TResult Function(_VCTxResponseCancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCTxResponseCopyWith<$Res> {
  factory $VCTxResponseCopyWith(
          VCTxResponse value, $Res Function(VCTxResponse) then) =
      _$VCTxResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$VCTxResponseCopyWithImpl<$Res> implements $VCTxResponseCopyWith<$Res> {
  _$VCTxResponseCopyWithImpl(this._value, this._then);

  final VCTxResponse _value;
  // ignore: unused_field
  final $Res Function(VCTxResponse) _then;
}

/// @nodoc
abstract class _$VCTxResponseConfirmedCopyWith<$Res> {
  factory _$VCTxResponseConfirmedCopyWith(_VCTxResponseConfirmed value,
          $Res Function(_VCTxResponseConfirmed) then) =
      __$VCTxResponseConfirmedCopyWithImpl<$Res>;
  $Res call({AccountBlock accountBlock});

  $AccountBlockCopyWith<$Res> get accountBlock;
}

/// @nodoc
class __$VCTxResponseConfirmedCopyWithImpl<$Res>
    extends _$VCTxResponseCopyWithImpl<$Res>
    implements _$VCTxResponseConfirmedCopyWith<$Res> {
  __$VCTxResponseConfirmedCopyWithImpl(_VCTxResponseConfirmed _value,
      $Res Function(_VCTxResponseConfirmed) _then)
      : super(_value, (v) => _then(v as _VCTxResponseConfirmed));

  @override
  _VCTxResponseConfirmed get _value => super._value as _VCTxResponseConfirmed;

  @override
  $Res call({
    Object? accountBlock = freezed,
  }) {
    return _then(_VCTxResponseConfirmed(
      accountBlock == freezed
          ? _value.accountBlock
          : accountBlock // ignore: cast_nullable_to_non_nullable
              as AccountBlock,
    ));
  }

  @override
  $AccountBlockCopyWith<$Res> get accountBlock {
    return $AccountBlockCopyWith<$Res>(_value.accountBlock, (value) {
      return _then(_value.copyWith(accountBlock: value));
    });
  }
}

/// @nodoc

class _$_VCTxResponseConfirmed implements _VCTxResponseConfirmed {
  const _$_VCTxResponseConfirmed(this.accountBlock);

  @override
  final AccountBlock accountBlock;

  @override
  String toString() {
    return 'VCTxResponse.confirmed(accountBlock: $accountBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCTxResponseConfirmed &&
            const DeepCollectionEquality()
                .equals(other.accountBlock, accountBlock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accountBlock));

  @JsonKey(ignore: true)
  @override
  _$VCTxResponseConfirmedCopyWith<_VCTxResponseConfirmed> get copyWith =>
      __$VCTxResponseConfirmedCopyWithImpl<_VCTxResponseConfirmed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountBlock accountBlock) confirmed,
    required TResult Function() cancelled,
  }) {
    return confirmed(accountBlock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountBlock accountBlock)? confirmed,
    TResult Function()? cancelled,
  }) {
    return confirmed?.call(accountBlock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountBlock accountBlock)? confirmed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(accountBlock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCTxResponseConfirmed value) confirmed,
    required TResult Function(_VCTxResponseCancelled value) cancelled,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCTxResponseConfirmed value)? confirmed,
    TResult Function(_VCTxResponseCancelled value)? cancelled,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCTxResponseConfirmed value)? confirmed,
    TResult Function(_VCTxResponseCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _VCTxResponseConfirmed implements VCTxResponse {
  const factory _VCTxResponseConfirmed(AccountBlock accountBlock) =
      _$_VCTxResponseConfirmed;

  AccountBlock get accountBlock;
  @JsonKey(ignore: true)
  _$VCTxResponseConfirmedCopyWith<_VCTxResponseConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCTxResponseCancelledCopyWith<$Res> {
  factory _$VCTxResponseCancelledCopyWith(_VCTxResponseCancelled value,
          $Res Function(_VCTxResponseCancelled) then) =
      __$VCTxResponseCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$VCTxResponseCancelledCopyWithImpl<$Res>
    extends _$VCTxResponseCopyWithImpl<$Res>
    implements _$VCTxResponseCancelledCopyWith<$Res> {
  __$VCTxResponseCancelledCopyWithImpl(_VCTxResponseCancelled _value,
      $Res Function(_VCTxResponseCancelled) _then)
      : super(_value, (v) => _then(v as _VCTxResponseCancelled));

  @override
  _VCTxResponseCancelled get _value => super._value as _VCTxResponseCancelled;
}

/// @nodoc

class _$_VCTxResponseCancelled implements _VCTxResponseCancelled {
  const _$_VCTxResponseCancelled();

  @override
  String toString() {
    return 'VCTxResponse.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _VCTxResponseCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountBlock accountBlock) confirmed,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountBlock accountBlock)? confirmed,
    TResult Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountBlock accountBlock)? confirmed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCTxResponseConfirmed value) confirmed,
    required TResult Function(_VCTxResponseCancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCTxResponseConfirmed value)? confirmed,
    TResult Function(_VCTxResponseCancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCTxResponseConfirmed value)? confirmed,
    TResult Function(_VCTxResponseCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _VCTxResponseCancelled implements VCTxResponse {
  const factory _VCTxResponseCancelled() = _$_VCTxResponseCancelled;
}

/// @nodoc
class _$VCSignRequestTearOff {
  const _$VCSignRequestTearOff();

  _VCSignRequest call({required int id, required Uint8List data}) {
    return _VCSignRequest(
      id: id,
      data: data,
    );
  }
}

/// @nodoc
const $VCSignRequest = _$VCSignRequestTearOff();

/// @nodoc
mixin _$VCSignRequest {
  int get id => throw _privateConstructorUsedError;
  Uint8List get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VCSignRequestCopyWith<VCSignRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCSignRequestCopyWith<$Res> {
  factory $VCSignRequestCopyWith(
          VCSignRequest value, $Res Function(VCSignRequest) then) =
      _$VCSignRequestCopyWithImpl<$Res>;
  $Res call({int id, Uint8List data});
}

/// @nodoc
class _$VCSignRequestCopyWithImpl<$Res>
    implements $VCSignRequestCopyWith<$Res> {
  _$VCSignRequestCopyWithImpl(this._value, this._then);

  final VCSignRequest _value;
  // ignore: unused_field
  final $Res Function(VCSignRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$VCSignRequestCopyWith<$Res>
    implements $VCSignRequestCopyWith<$Res> {
  factory _$VCSignRequestCopyWith(
          _VCSignRequest value, $Res Function(_VCSignRequest) then) =
      __$VCSignRequestCopyWithImpl<$Res>;
  @override
  $Res call({int id, Uint8List data});
}

/// @nodoc
class __$VCSignRequestCopyWithImpl<$Res>
    extends _$VCSignRequestCopyWithImpl<$Res>
    implements _$VCSignRequestCopyWith<$Res> {
  __$VCSignRequestCopyWithImpl(
      _VCSignRequest _value, $Res Function(_VCSignRequest) _then)
      : super(_value, (v) => _then(v as _VCSignRequest));

  @override
  _VCSignRequest get _value => super._value as _VCSignRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_VCSignRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_VCSignRequest implements _VCSignRequest {
  const _$_VCSignRequest({required this.id, required this.data});

  @override
  final int id;
  @override
  final Uint8List data;

  @override
  String toString() {
    return 'VCSignRequest(id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCSignRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$VCSignRequestCopyWith<_VCSignRequest> get copyWith =>
      __$VCSignRequestCopyWithImpl<_VCSignRequest>(this, _$identity);
}

abstract class _VCSignRequest implements VCSignRequest {
  const factory _VCSignRequest({required int id, required Uint8List data}) =
      _$_VCSignRequest;

  @override
  int get id;
  @override
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  _$VCSignRequestCopyWith<_VCSignRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SignedData _$SignedDataFromJson(Map<String, dynamic> json) {
  return _SignedData.fromJson(json);
}

/// @nodoc
class _$SignedDataTearOff {
  const _$SignedDataTearOff();

  _SignedData call(
      {@Uint8ListBase64Converter() required Uint8List publicKey,
      @Uint8ListBase64Converter() required Uint8List signature}) {
    return _SignedData(
      publicKey: publicKey,
      signature: signature,
    );
  }

  SignedData fromJson(Map<String, Object?> json) {
    return SignedData.fromJson(json);
  }
}

/// @nodoc
const $SignedData = _$SignedDataTearOff();

/// @nodoc
mixin _$SignedData {
  @Uint8ListBase64Converter()
  Uint8List get publicKey => throw _privateConstructorUsedError;
  @Uint8ListBase64Converter()
  Uint8List get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignedDataCopyWith<SignedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedDataCopyWith<$Res> {
  factory $SignedDataCopyWith(
          SignedData value, $Res Function(SignedData) then) =
      _$SignedDataCopyWithImpl<$Res>;
  $Res call(
      {@Uint8ListBase64Converter() Uint8List publicKey,
      @Uint8ListBase64Converter() Uint8List signature});
}

/// @nodoc
class _$SignedDataCopyWithImpl<$Res> implements $SignedDataCopyWith<$Res> {
  _$SignedDataCopyWithImpl(this._value, this._then);

  final SignedData _value;
  // ignore: unused_field
  final $Res Function(SignedData) _then;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? signature = freezed,
  }) {
    return _then(_value.copyWith(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$SignedDataCopyWith<$Res> implements $SignedDataCopyWith<$Res> {
  factory _$SignedDataCopyWith(
          _SignedData value, $Res Function(_SignedData) then) =
      __$SignedDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@Uint8ListBase64Converter() Uint8List publicKey,
      @Uint8ListBase64Converter() Uint8List signature});
}

/// @nodoc
class __$SignedDataCopyWithImpl<$Res> extends _$SignedDataCopyWithImpl<$Res>
    implements _$SignedDataCopyWith<$Res> {
  __$SignedDataCopyWithImpl(
      _SignedData _value, $Res Function(_SignedData) _then)
      : super(_value, (v) => _then(v as _SignedData));

  @override
  _SignedData get _value => super._value as _SignedData;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? signature = freezed,
  }) {
    return _then(_SignedData(
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignedData implements _SignedData {
  const _$_SignedData(
      {@Uint8ListBase64Converter() required this.publicKey,
      @Uint8ListBase64Converter() required this.signature});

  factory _$_SignedData.fromJson(Map<String, dynamic> json) =>
      _$$_SignedDataFromJson(json);

  @override
  @Uint8ListBase64Converter()
  final Uint8List publicKey;
  @override
  @Uint8ListBase64Converter()
  final Uint8List signature;

  @override
  String toString() {
    return 'SignedData(publicKey: $publicKey, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignedData &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.signature, signature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(signature));

  @JsonKey(ignore: true)
  @override
  _$SignedDataCopyWith<_SignedData> get copyWith =>
      __$SignedDataCopyWithImpl<_SignedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignedDataToJson(this);
  }
}

abstract class _SignedData implements SignedData {
  const factory _SignedData(
          {@Uint8ListBase64Converter() required Uint8List publicKey,
          @Uint8ListBase64Converter() required Uint8List signature}) =
      _$_SignedData;

  factory _SignedData.fromJson(Map<String, dynamic> json) =
      _$_SignedData.fromJson;

  @override
  @Uint8ListBase64Converter()
  Uint8List get publicKey;
  @override
  @Uint8ListBase64Converter()
  Uint8List get signature;
  @override
  @JsonKey(ignore: true)
  _$SignedDataCopyWith<_SignedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VCSignResponseTearOff {
  const _$VCSignResponseTearOff();

  _VCSignResponseConfirmed confirmed(SignedData signedData) {
    return _VCSignResponseConfirmed(
      signedData,
    );
  }

  _VCSignResponseCancelled cancelled() {
    return const _VCSignResponseCancelled();
  }
}

/// @nodoc
const $VCSignResponse = _$VCSignResponseTearOff();

/// @nodoc
mixin _$VCSignResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignedData signedData) confirmed,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SignedData signedData)? confirmed,
    TResult Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignedData signedData)? confirmed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCSignResponseConfirmed value) confirmed,
    required TResult Function(_VCSignResponseCancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCSignResponseConfirmed value)? confirmed,
    TResult Function(_VCSignResponseCancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCSignResponseConfirmed value)? confirmed,
    TResult Function(_VCSignResponseCancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCSignResponseCopyWith<$Res> {
  factory $VCSignResponseCopyWith(
          VCSignResponse value, $Res Function(VCSignResponse) then) =
      _$VCSignResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$VCSignResponseCopyWithImpl<$Res>
    implements $VCSignResponseCopyWith<$Res> {
  _$VCSignResponseCopyWithImpl(this._value, this._then);

  final VCSignResponse _value;
  // ignore: unused_field
  final $Res Function(VCSignResponse) _then;
}

/// @nodoc
abstract class _$VCSignResponseConfirmedCopyWith<$Res> {
  factory _$VCSignResponseConfirmedCopyWith(_VCSignResponseConfirmed value,
          $Res Function(_VCSignResponseConfirmed) then) =
      __$VCSignResponseConfirmedCopyWithImpl<$Res>;
  $Res call({SignedData signedData});

  $SignedDataCopyWith<$Res> get signedData;
}

/// @nodoc
class __$VCSignResponseConfirmedCopyWithImpl<$Res>
    extends _$VCSignResponseCopyWithImpl<$Res>
    implements _$VCSignResponseConfirmedCopyWith<$Res> {
  __$VCSignResponseConfirmedCopyWithImpl(_VCSignResponseConfirmed _value,
      $Res Function(_VCSignResponseConfirmed) _then)
      : super(_value, (v) => _then(v as _VCSignResponseConfirmed));

  @override
  _VCSignResponseConfirmed get _value =>
      super._value as _VCSignResponseConfirmed;

  @override
  $Res call({
    Object? signedData = freezed,
  }) {
    return _then(_VCSignResponseConfirmed(
      signedData == freezed
          ? _value.signedData
          : signedData // ignore: cast_nullable_to_non_nullable
              as SignedData,
    ));
  }

  @override
  $SignedDataCopyWith<$Res> get signedData {
    return $SignedDataCopyWith<$Res>(_value.signedData, (value) {
      return _then(_value.copyWith(signedData: value));
    });
  }
}

/// @nodoc

class _$_VCSignResponseConfirmed implements _VCSignResponseConfirmed {
  const _$_VCSignResponseConfirmed(this.signedData);

  @override
  final SignedData signedData;

  @override
  String toString() {
    return 'VCSignResponse.confirmed(signedData: $signedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCSignResponseConfirmed &&
            const DeepCollectionEquality()
                .equals(other.signedData, signedData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(signedData));

  @JsonKey(ignore: true)
  @override
  _$VCSignResponseConfirmedCopyWith<_VCSignResponseConfirmed> get copyWith =>
      __$VCSignResponseConfirmedCopyWithImpl<_VCSignResponseConfirmed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignedData signedData) confirmed,
    required TResult Function() cancelled,
  }) {
    return confirmed(signedData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SignedData signedData)? confirmed,
    TResult Function()? cancelled,
  }) {
    return confirmed?.call(signedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignedData signedData)? confirmed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(signedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCSignResponseConfirmed value) confirmed,
    required TResult Function(_VCSignResponseCancelled value) cancelled,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCSignResponseConfirmed value)? confirmed,
    TResult Function(_VCSignResponseCancelled value)? cancelled,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCSignResponseConfirmed value)? confirmed,
    TResult Function(_VCSignResponseCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _VCSignResponseConfirmed implements VCSignResponse {
  const factory _VCSignResponseConfirmed(SignedData signedData) =
      _$_VCSignResponseConfirmed;

  SignedData get signedData;
  @JsonKey(ignore: true)
  _$VCSignResponseConfirmedCopyWith<_VCSignResponseConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCSignResponseCancelledCopyWith<$Res> {
  factory _$VCSignResponseCancelledCopyWith(_VCSignResponseCancelled value,
          $Res Function(_VCSignResponseCancelled) then) =
      __$VCSignResponseCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$VCSignResponseCancelledCopyWithImpl<$Res>
    extends _$VCSignResponseCopyWithImpl<$Res>
    implements _$VCSignResponseCancelledCopyWith<$Res> {
  __$VCSignResponseCancelledCopyWithImpl(_VCSignResponseCancelled _value,
      $Res Function(_VCSignResponseCancelled) _then)
      : super(_value, (v) => _then(v as _VCSignResponseCancelled));

  @override
  _VCSignResponseCancelled get _value =>
      super._value as _VCSignResponseCancelled;
}

/// @nodoc

class _$_VCSignResponseCancelled implements _VCSignResponseCancelled {
  const _$_VCSignResponseCancelled();

  @override
  String toString() {
    return 'VCSignResponse.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _VCSignResponseCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignedData signedData) confirmed,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SignedData signedData)? confirmed,
    TResult Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignedData signedData)? confirmed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCSignResponseConfirmed value) confirmed,
    required TResult Function(_VCSignResponseCancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCSignResponseConfirmed value)? confirmed,
    TResult Function(_VCSignResponseCancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCSignResponseConfirmed value)? confirmed,
    TResult Function(_VCSignResponseCancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _VCSignResponseCancelled implements VCSignResponse {
  const factory _VCSignResponseCancelled() = _$_VCSignResponseCancelled;
}

/// @nodoc
class _$VCHistoryItemTearOff {
  const _$VCHistoryItemTearOff();

  _VCHistoryItemTx tx(
      {required VCTxRequest request,
      required VCTxResponse response,
      required DateTime timestamp}) {
    return _VCHistoryItemTx(
      request: request,
      response: response,
      timestamp: timestamp,
    );
  }

  _VCHistoryItemSign sign(
      {required VCSignRequest request,
      required VCSignResponse response,
      required DateTime timestamp}) {
    return _VCHistoryItemSign(
      request: request,
      response: response,
      timestamp: timestamp,
    );
  }

  _VCHistoryItemInvalid invalid(
      {required JsonRpcRequest request,
      required Object error,
      required DateTime timestamp}) {
    return _VCHistoryItemInvalid(
      request: request,
      error: error,
      timestamp: timestamp,
    );
  }

  _VCHistoryItemCurrent current({required VCRequest request}) {
    return _VCHistoryItemCurrent(
      request: request,
    );
  }
}

/// @nodoc
const $VCHistoryItem = _$VCHistoryItemTearOff();

/// @nodoc
mixin _$VCHistoryItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)
        tx,
    required TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)
        sign,
    required TResult Function(
            JsonRpcRequest request, Object error, DateTime timestamp)
        invalid,
    required TResult Function(VCRequest request) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCHistoryItemTx value) tx,
    required TResult Function(_VCHistoryItemSign value) sign,
    required TResult Function(_VCHistoryItemInvalid value) invalid,
    required TResult Function(_VCHistoryItemCurrent value) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCHistoryItemCopyWith<$Res> {
  factory $VCHistoryItemCopyWith(
          VCHistoryItem value, $Res Function(VCHistoryItem) then) =
      _$VCHistoryItemCopyWithImpl<$Res>;
}

/// @nodoc
class _$VCHistoryItemCopyWithImpl<$Res>
    implements $VCHistoryItemCopyWith<$Res> {
  _$VCHistoryItemCopyWithImpl(this._value, this._then);

  final VCHistoryItem _value;
  // ignore: unused_field
  final $Res Function(VCHistoryItem) _then;
}

/// @nodoc
abstract class _$VCHistoryItemTxCopyWith<$Res> {
  factory _$VCHistoryItemTxCopyWith(
          _VCHistoryItemTx value, $Res Function(_VCHistoryItemTx) then) =
      __$VCHistoryItemTxCopyWithImpl<$Res>;
  $Res call({VCTxRequest request, VCTxResponse response, DateTime timestamp});

  $VCTxRequestCopyWith<$Res> get request;
  $VCTxResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$VCHistoryItemTxCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res>
    implements _$VCHistoryItemTxCopyWith<$Res> {
  __$VCHistoryItemTxCopyWithImpl(
      _VCHistoryItemTx _value, $Res Function(_VCHistoryItemTx) _then)
      : super(_value, (v) => _then(v as _VCHistoryItemTx));

  @override
  _VCHistoryItemTx get _value => super._value as _VCHistoryItemTx;

  @override
  $Res call({
    Object? request = freezed,
    Object? response = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_VCHistoryItemTx(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VCTxRequest,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as VCTxResponse,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $VCTxRequestCopyWith<$Res> get request {
    return $VCTxRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  $VCTxResponseCopyWith<$Res> get response {
    return $VCTxResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_VCHistoryItemTx extends _VCHistoryItemTx {
  const _$_VCHistoryItemTx(
      {required this.request, required this.response, required this.timestamp})
      : super._();

  @override
  final VCTxRequest request;
  @override
  final VCTxResponse response;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'VCHistoryItem.tx(request: $request, response: $response, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCHistoryItemTx &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  _$VCHistoryItemTxCopyWith<_VCHistoryItemTx> get copyWith =>
      __$VCHistoryItemTxCopyWithImpl<_VCHistoryItemTx>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)
        tx,
    required TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)
        sign,
    required TResult Function(
            JsonRpcRequest request, Object error, DateTime timestamp)
        invalid,
    required TResult Function(VCRequest request) current,
  }) {
    return tx(request, response, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
  }) {
    return tx?.call(request, response, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
    required TResult orElse(),
  }) {
    if (tx != null) {
      return tx(request, response, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCHistoryItemTx value) tx,
    required TResult Function(_VCHistoryItemSign value) sign,
    required TResult Function(_VCHistoryItemInvalid value) invalid,
    required TResult Function(_VCHistoryItemCurrent value) current,
  }) {
    return tx(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
  }) {
    return tx?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
    required TResult orElse(),
  }) {
    if (tx != null) {
      return tx(this);
    }
    return orElse();
  }
}

abstract class _VCHistoryItemTx extends VCHistoryItem {
  const factory _VCHistoryItemTx(
      {required VCTxRequest request,
      required VCTxResponse response,
      required DateTime timestamp}) = _$_VCHistoryItemTx;
  const _VCHistoryItemTx._() : super._();

  VCTxRequest get request;
  VCTxResponse get response;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$VCHistoryItemTxCopyWith<_VCHistoryItemTx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCHistoryItemSignCopyWith<$Res> {
  factory _$VCHistoryItemSignCopyWith(
          _VCHistoryItemSign value, $Res Function(_VCHistoryItemSign) then) =
      __$VCHistoryItemSignCopyWithImpl<$Res>;
  $Res call(
      {VCSignRequest request, VCSignResponse response, DateTime timestamp});

  $VCSignRequestCopyWith<$Res> get request;
  $VCSignResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$VCHistoryItemSignCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res>
    implements _$VCHistoryItemSignCopyWith<$Res> {
  __$VCHistoryItemSignCopyWithImpl(
      _VCHistoryItemSign _value, $Res Function(_VCHistoryItemSign) _then)
      : super(_value, (v) => _then(v as _VCHistoryItemSign));

  @override
  _VCHistoryItemSign get _value => super._value as _VCHistoryItemSign;

  @override
  $Res call({
    Object? request = freezed,
    Object? response = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_VCHistoryItemSign(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VCSignRequest,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as VCSignResponse,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $VCSignRequestCopyWith<$Res> get request {
    return $VCSignRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  $VCSignResponseCopyWith<$Res> get response {
    return $VCSignResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_VCHistoryItemSign extends _VCHistoryItemSign {
  const _$_VCHistoryItemSign(
      {required this.request, required this.response, required this.timestamp})
      : super._();

  @override
  final VCSignRequest request;
  @override
  final VCSignResponse response;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'VCHistoryItem.sign(request: $request, response: $response, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCHistoryItemSign &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  _$VCHistoryItemSignCopyWith<_VCHistoryItemSign> get copyWith =>
      __$VCHistoryItemSignCopyWithImpl<_VCHistoryItemSign>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)
        tx,
    required TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)
        sign,
    required TResult Function(
            JsonRpcRequest request, Object error, DateTime timestamp)
        invalid,
    required TResult Function(VCRequest request) current,
  }) {
    return sign(request, response, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
  }) {
    return sign?.call(request, response, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
    required TResult orElse(),
  }) {
    if (sign != null) {
      return sign(request, response, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCHistoryItemTx value) tx,
    required TResult Function(_VCHistoryItemSign value) sign,
    required TResult Function(_VCHistoryItemInvalid value) invalid,
    required TResult Function(_VCHistoryItemCurrent value) current,
  }) {
    return sign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
  }) {
    return sign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
    required TResult orElse(),
  }) {
    if (sign != null) {
      return sign(this);
    }
    return orElse();
  }
}

abstract class _VCHistoryItemSign extends VCHistoryItem {
  const factory _VCHistoryItemSign(
      {required VCSignRequest request,
      required VCSignResponse response,
      required DateTime timestamp}) = _$_VCHistoryItemSign;
  const _VCHistoryItemSign._() : super._();

  VCSignRequest get request;
  VCSignResponse get response;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$VCHistoryItemSignCopyWith<_VCHistoryItemSign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCHistoryItemInvalidCopyWith<$Res> {
  factory _$VCHistoryItemInvalidCopyWith(_VCHistoryItemInvalid value,
          $Res Function(_VCHistoryItemInvalid) then) =
      __$VCHistoryItemInvalidCopyWithImpl<$Res>;
  $Res call({JsonRpcRequest request, Object error, DateTime timestamp});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$VCHistoryItemInvalidCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res>
    implements _$VCHistoryItemInvalidCopyWith<$Res> {
  __$VCHistoryItemInvalidCopyWithImpl(
      _VCHistoryItemInvalid _value, $Res Function(_VCHistoryItemInvalid) _then)
      : super(_value, (v) => _then(v as _VCHistoryItemInvalid));

  @override
  _VCHistoryItemInvalid get _value => super._value as _VCHistoryItemInvalid;

  @override
  $Res call({
    Object? request = freezed,
    Object? error = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_VCHistoryItemInvalid(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $JsonRpcRequestCopyWith<$Res> get request {
    return $JsonRpcRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_VCHistoryItemInvalid extends _VCHistoryItemInvalid {
  const _$_VCHistoryItemInvalid(
      {required this.request, required this.error, required this.timestamp})
      : super._();

  @override
  final JsonRpcRequest request;
  @override
  final Object error;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'VCHistoryItem.invalid(request: $request, error: $error, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCHistoryItemInvalid &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  _$VCHistoryItemInvalidCopyWith<_VCHistoryItemInvalid> get copyWith =>
      __$VCHistoryItemInvalidCopyWithImpl<_VCHistoryItemInvalid>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)
        tx,
    required TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)
        sign,
    required TResult Function(
            JsonRpcRequest request, Object error, DateTime timestamp)
        invalid,
    required TResult Function(VCRequest request) current,
  }) {
    return invalid(request, error, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
  }) {
    return invalid?.call(request, error, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(request, error, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCHistoryItemTx value) tx,
    required TResult Function(_VCHistoryItemSign value) sign,
    required TResult Function(_VCHistoryItemInvalid value) invalid,
    required TResult Function(_VCHistoryItemCurrent value) current,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _VCHistoryItemInvalid extends VCHistoryItem {
  const factory _VCHistoryItemInvalid(
      {required JsonRpcRequest request,
      required Object error,
      required DateTime timestamp}) = _$_VCHistoryItemInvalid;
  const _VCHistoryItemInvalid._() : super._();

  JsonRpcRequest get request;
  Object get error;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$VCHistoryItemInvalidCopyWith<_VCHistoryItemInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VCHistoryItemCurrentCopyWith<$Res> {
  factory _$VCHistoryItemCurrentCopyWith(_VCHistoryItemCurrent value,
          $Res Function(_VCHistoryItemCurrent) then) =
      __$VCHistoryItemCurrentCopyWithImpl<$Res>;
  $Res call({VCRequest request});

  $VCRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$VCHistoryItemCurrentCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res>
    implements _$VCHistoryItemCurrentCopyWith<$Res> {
  __$VCHistoryItemCurrentCopyWithImpl(
      _VCHistoryItemCurrent _value, $Res Function(_VCHistoryItemCurrent) _then)
      : super(_value, (v) => _then(v as _VCHistoryItemCurrent));

  @override
  _VCHistoryItemCurrent get _value => super._value as _VCHistoryItemCurrent;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_VCHistoryItemCurrent(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VCRequest,
    ));
  }

  @override
  $VCRequestCopyWith<$Res> get request {
    return $VCRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_VCHistoryItemCurrent extends _VCHistoryItemCurrent {
  const _$_VCHistoryItemCurrent({required this.request}) : super._();

  @override
  final VCRequest request;

  @override
  String toString() {
    return 'VCHistoryItem.current(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCHistoryItemCurrent &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$VCHistoryItemCurrentCopyWith<_VCHistoryItemCurrent> get copyWith =>
      __$VCHistoryItemCurrentCopyWithImpl<_VCHistoryItemCurrent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)
        tx,
    required TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)
        sign,
    required TResult Function(
            JsonRpcRequest request, Object error, DateTime timestamp)
        invalid,
    required TResult Function(VCRequest request) current,
  }) {
    return current(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
  }) {
    return current?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult Function(VCRequest request)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VCHistoryItemTx value) tx,
    required TResult Function(_VCHistoryItemSign value) sign,
    required TResult Function(_VCHistoryItemInvalid value) invalid,
    required TResult Function(_VCHistoryItemCurrent value) current,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VCHistoryItemTx value)? tx,
    TResult Function(_VCHistoryItemSign value)? sign,
    TResult Function(_VCHistoryItemInvalid value)? invalid,
    TResult Function(_VCHistoryItemCurrent value)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class _VCHistoryItemCurrent extends VCHistoryItem {
  const factory _VCHistoryItemCurrent({required VCRequest request}) =
      _$_VCHistoryItemCurrent;
  const _VCHistoryItemCurrent._() : super._();

  VCRequest get request;
  @JsonKey(ignore: true)
  _$VCHistoryItemCurrentCopyWith<_VCHistoryItemCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

VCError _$VCErrorFromJson(Map<String, dynamic> json) {
  return _VCError.fromJson(json);
}

/// @nodoc
class _$VCErrorTearOff {
  const _$VCErrorTearOff();

  _VCError call({required int code, String? message}) {
    return _VCError(
      code: code,
      message: message,
    );
  }

  VCError fromJson(Map<String, Object?> json) {
    return VCError.fromJson(json);
  }
}

/// @nodoc
const $VCError = _$VCErrorTearOff();

/// @nodoc
mixin _$VCError {
  int get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VCErrorCopyWith<VCError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCErrorCopyWith<$Res> {
  factory $VCErrorCopyWith(VCError value, $Res Function(VCError) then) =
      _$VCErrorCopyWithImpl<$Res>;
  $Res call({int code, String? message});
}

/// @nodoc
class _$VCErrorCopyWithImpl<$Res> implements $VCErrorCopyWith<$Res> {
  _$VCErrorCopyWithImpl(this._value, this._then);

  final VCError _value;
  // ignore: unused_field
  final $Res Function(VCError) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VCErrorCopyWith<$Res> implements $VCErrorCopyWith<$Res> {
  factory _$VCErrorCopyWith(_VCError value, $Res Function(_VCError) then) =
      __$VCErrorCopyWithImpl<$Res>;
  @override
  $Res call({int code, String? message});
}

/// @nodoc
class __$VCErrorCopyWithImpl<$Res> extends _$VCErrorCopyWithImpl<$Res>
    implements _$VCErrorCopyWith<$Res> {
  __$VCErrorCopyWithImpl(_VCError _value, $Res Function(_VCError) _then)
      : super(_value, (v) => _then(v as _VCError));

  @override
  _VCError get _value => super._value as _VCError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_VCError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VCError implements _VCError {
  const _$_VCError({required this.code, this.message});

  factory _$_VCError.fromJson(Map<String, dynamic> json) =>
      _$$_VCErrorFromJson(json);

  @override
  final int code;
  @override
  final String? message;

  @override
  String toString() {
    return 'VCError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VCError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$VCErrorCopyWith<_VCError> get copyWith =>
      __$VCErrorCopyWithImpl<_VCError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VCErrorToJson(this);
  }
}

abstract class _VCError implements VCError {
  const factory _VCError({required int code, String? message}) = _$_VCError;

  factory _VCError.fromJson(Map<String, dynamic> json) = _$_VCError.fromJson;

  @override
  int get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$VCErrorCopyWith<_VCError> get copyWith =>
      throw _privateConstructorUsedError;
}
