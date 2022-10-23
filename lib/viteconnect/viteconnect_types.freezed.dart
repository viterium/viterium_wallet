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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult? Function(SessionStatus sessionStatus)? connected,
    TResult? Function(String? message)? disconnected,
    TResult? Function(JsonRpcRequest request)? signAndSendTx,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCEventSessionRequest value)? sessionRequest,
    TResult? Function(_VCEventConnected value)? connected,
    TResult? Function(_VCEventDisconnected value)? disconnected,
    TResult? Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult? Function(_VCEventSignMessage value)? signMessage,
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
      _$VCEventCopyWithImpl<$Res, VCEvent>;
}

/// @nodoc
class _$VCEventCopyWithImpl<$Res, $Val extends VCEvent>
    implements $VCEventCopyWith<$Res> {
  _$VCEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VCEventSessionRequestCopyWith<$Res> {
  factory _$$_VCEventSessionRequestCopyWith(_$_VCEventSessionRequest value,
          $Res Function(_$_VCEventSessionRequest) then) =
      __$$_VCEventSessionRequestCopyWithImpl<$Res>;
  @useResult
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$$_VCEventSessionRequestCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$_VCEventSessionRequest>
    implements _$$_VCEventSessionRequestCopyWith<$Res> {
  __$$_VCEventSessionRequestCopyWithImpl(_$_VCEventSessionRequest _value,
      $Res Function(_$_VCEventSessionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionRequest = null,
  }) {
    return _then(_$_VCEventSessionRequest(
      null == sessionRequest
          ? _value.sessionRequest
          : sessionRequest // ignore: cast_nullable_to_non_nullable
              as VCSessionRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCEventSessionRequest &&
            (identical(other.sessionRequest, sessionRequest) ||
                other.sessionRequest == sessionRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCEventSessionRequestCopyWith<_$_VCEventSessionRequest> get copyWith =>
      __$$_VCEventSessionRequestCopyWithImpl<_$_VCEventSessionRequest>(
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
    TResult? Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult? Function(SessionStatus sessionStatus)? connected,
    TResult? Function(String? message)? disconnected,
    TResult? Function(JsonRpcRequest request)? signAndSendTx,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCEventSessionRequest value)? sessionRequest,
    TResult? Function(_VCEventConnected value)? connected,
    TResult? Function(_VCEventDisconnected value)? disconnected,
    TResult? Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult? Function(_VCEventSignMessage value)? signMessage,
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
  const factory _VCEventSessionRequest(final VCSessionRequest sessionRequest) =
      _$_VCEventSessionRequest;

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$$_VCEventSessionRequestCopyWith<_$_VCEventSessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCEventConnectedCopyWith<$Res> {
  factory _$$_VCEventConnectedCopyWith(
          _$_VCEventConnected value, $Res Function(_$_VCEventConnected) then) =
      __$$_VCEventConnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionStatus sessionStatus});

  $SessionStatusCopyWith<$Res> get sessionStatus;
}

/// @nodoc
class __$$_VCEventConnectedCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$_VCEventConnected>
    implements _$$_VCEventConnectedCopyWith<$Res> {
  __$$_VCEventConnectedCopyWithImpl(
      _$_VCEventConnected _value, $Res Function(_$_VCEventConnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionStatus = null,
  }) {
    return _then(_$_VCEventConnected(
      null == sessionStatus
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCEventConnected &&
            (identical(other.sessionStatus, sessionStatus) ||
                other.sessionStatus == sessionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCEventConnectedCopyWith<_$_VCEventConnected> get copyWith =>
      __$$_VCEventConnectedCopyWithImpl<_$_VCEventConnected>(this, _$identity);

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
    TResult? Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult? Function(SessionStatus sessionStatus)? connected,
    TResult? Function(String? message)? disconnected,
    TResult? Function(JsonRpcRequest request)? signAndSendTx,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCEventSessionRequest value)? sessionRequest,
    TResult? Function(_VCEventConnected value)? connected,
    TResult? Function(_VCEventDisconnected value)? disconnected,
    TResult? Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult? Function(_VCEventSignMessage value)? signMessage,
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
  const factory _VCEventConnected(final SessionStatus sessionStatus) =
      _$_VCEventConnected;

  SessionStatus get sessionStatus;
  @JsonKey(ignore: true)
  _$$_VCEventConnectedCopyWith<_$_VCEventConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCEventDisconnectedCopyWith<$Res> {
  factory _$$_VCEventDisconnectedCopyWith(_$_VCEventDisconnected value,
          $Res Function(_$_VCEventDisconnected) then) =
      __$$_VCEventDisconnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_VCEventDisconnectedCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$_VCEventDisconnected>
    implements _$$_VCEventDisconnectedCopyWith<$Res> {
  __$$_VCEventDisconnectedCopyWithImpl(_$_VCEventDisconnected _value,
      $Res Function(_$_VCEventDisconnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_VCEventDisconnected(
      freezed == message
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
            other is _$_VCEventDisconnected &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCEventDisconnectedCopyWith<_$_VCEventDisconnected> get copyWith =>
      __$$_VCEventDisconnectedCopyWithImpl<_$_VCEventDisconnected>(
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
    TResult? Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult? Function(SessionStatus sessionStatus)? connected,
    TResult? Function(String? message)? disconnected,
    TResult? Function(JsonRpcRequest request)? signAndSendTx,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCEventSessionRequest value)? sessionRequest,
    TResult? Function(_VCEventConnected value)? connected,
    TResult? Function(_VCEventDisconnected value)? disconnected,
    TResult? Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult? Function(_VCEventSignMessage value)? signMessage,
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
  const factory _VCEventDisconnected([final String? message]) =
      _$_VCEventDisconnected;

  String? get message;
  @JsonKey(ignore: true)
  _$$_VCEventDisconnectedCopyWith<_$_VCEventDisconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCEventSignEndSendTxCopyWith<$Res> {
  factory _$$_VCEventSignEndSendTxCopyWith(_$_VCEventSignEndSendTx value,
          $Res Function(_$_VCEventSignEndSendTx) then) =
      __$$_VCEventSignEndSendTxCopyWithImpl<$Res>;
  @useResult
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_VCEventSignEndSendTxCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$_VCEventSignEndSendTx>
    implements _$$_VCEventSignEndSendTxCopyWith<$Res> {
  __$$_VCEventSignEndSendTxCopyWithImpl(_$_VCEventSignEndSendTx _value,
      $Res Function(_$_VCEventSignEndSendTx) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_VCEventSignEndSendTx(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCEventSignEndSendTx &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCEventSignEndSendTxCopyWith<_$_VCEventSignEndSendTx> get copyWith =>
      __$$_VCEventSignEndSendTxCopyWithImpl<_$_VCEventSignEndSendTx>(
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
    TResult? Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult? Function(SessionStatus sessionStatus)? connected,
    TResult? Function(String? message)? disconnected,
    TResult? Function(JsonRpcRequest request)? signAndSendTx,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCEventSessionRequest value)? sessionRequest,
    TResult? Function(_VCEventConnected value)? connected,
    TResult? Function(_VCEventDisconnected value)? disconnected,
    TResult? Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult? Function(_VCEventSignMessage value)? signMessage,
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
  const factory _VCEventSignEndSendTx(final JsonRpcRequest request) =
      _$_VCEventSignEndSendTx;

  JsonRpcRequest get request;
  @JsonKey(ignore: true)
  _$$_VCEventSignEndSendTxCopyWith<_$_VCEventSignEndSendTx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCEventSignMessageCopyWith<$Res> {
  factory _$$_VCEventSignMessageCopyWith(_$_VCEventSignMessage value,
          $Res Function(_$_VCEventSignMessage) then) =
      __$$_VCEventSignMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_VCEventSignMessageCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$_VCEventSignMessage>
    implements _$$_VCEventSignMessageCopyWith<$Res> {
  __$$_VCEventSignMessageCopyWithImpl(
      _$_VCEventSignMessage _value, $Res Function(_$_VCEventSignMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_VCEventSignMessage(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCEventSignMessage &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCEventSignMessageCopyWith<_$_VCEventSignMessage> get copyWith =>
      __$$_VCEventSignMessageCopyWithImpl<_$_VCEventSignMessage>(
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
    return signMessage(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VCSessionRequest sessionRequest)? sessionRequest,
    TResult? Function(SessionStatus sessionStatus)? connected,
    TResult? Function(String? message)? disconnected,
    TResult? Function(JsonRpcRequest request)? signAndSendTx,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCEventSessionRequest value)? sessionRequest,
    TResult? Function(_VCEventConnected value)? connected,
    TResult? Function(_VCEventDisconnected value)? disconnected,
    TResult? Function(_VCEventSignEndSendTx value)? signAndSendTx,
    TResult? Function(_VCEventSignMessage value)? signMessage,
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
  const factory _VCEventSignMessage(final JsonRpcRequest request) =
      _$_VCEventSignMessage;

  JsonRpcRequest get request;
  @JsonKey(ignore: true)
  _$$_VCEventSignMessageCopyWith<_$_VCEventSignMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(String bridgeUri)? connectingToBridge,
    TResult? Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult? Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult? Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult? Function(String? message)? disconnected,
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
    TResult? Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult? Function(_VCStatePendingApproval value)? pendingApproval,
    TResult? Function(_VCStateConnectingSession value)? connectingSession,
    TResult? Function(_VCStateConnected value)? connected,
    TResult? Function(_VCStateDisconnected value)? disconnected,
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
      _$VCStateCopyWithImpl<$Res, VCState>;
}

/// @nodoc
class _$VCStateCopyWithImpl<$Res, $Val extends VCState>
    implements $VCStateCopyWith<$Res> {
  _$VCStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VCStateConnectingServerCopyWith<$Res> {
  factory _$$_VCStateConnectingServerCopyWith(_$_VCStateConnectingServer value,
          $Res Function(_$_VCStateConnectingServer) then) =
      __$$_VCStateConnectingServerCopyWithImpl<$Res>;
  @useResult
  $Res call({String bridgeUri});
}

/// @nodoc
class __$$_VCStateConnectingServerCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$_VCStateConnectingServer>
    implements _$$_VCStateConnectingServerCopyWith<$Res> {
  __$$_VCStateConnectingServerCopyWithImpl(_$_VCStateConnectingServer _value,
      $Res Function(_$_VCStateConnectingServer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bridgeUri = null,
  }) {
    return _then(_$_VCStateConnectingServer(
      null == bridgeUri
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
            other is _$_VCStateConnectingServer &&
            (identical(other.bridgeUri, bridgeUri) ||
                other.bridgeUri == bridgeUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bridgeUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCStateConnectingServerCopyWith<_$_VCStateConnectingServer>
      get copyWith =>
          __$$_VCStateConnectingServerCopyWithImpl<_$_VCStateConnectingServer>(
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
    TResult? Function(String bridgeUri)? connectingToBridge,
    TResult? Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult? Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult? Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult? Function(String? message)? disconnected,
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
    TResult? Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult? Function(_VCStatePendingApproval value)? pendingApproval,
    TResult? Function(_VCStateConnectingSession value)? connectingSession,
    TResult? Function(_VCStateConnected value)? connected,
    TResult? Function(_VCStateDisconnected value)? disconnected,
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
  const factory _VCStateConnectingServer(final String bridgeUri) =
      _$_VCStateConnectingServer;
  const _VCStateConnectingServer._() : super._();

  String get bridgeUri;
  @JsonKey(ignore: true)
  _$$_VCStateConnectingServerCopyWith<_$_VCStateConnectingServer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCStatePendingApprovalCopyWith<$Res> {
  factory _$$_VCStatePendingApprovalCopyWith(_$_VCStatePendingApproval value,
          $Res Function(_$_VCStatePendingApproval) then) =
      __$$_VCStatePendingApprovalCopyWithImpl<$Res>;
  @useResult
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$$_VCStatePendingApprovalCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$_VCStatePendingApproval>
    implements _$$_VCStatePendingApprovalCopyWith<$Res> {
  __$$_VCStatePendingApprovalCopyWithImpl(_$_VCStatePendingApproval _value,
      $Res Function(_$_VCStatePendingApproval) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionRequest = null,
  }) {
    return _then(_$_VCStatePendingApproval(
      null == sessionRequest
          ? _value.sessionRequest
          : sessionRequest // ignore: cast_nullable_to_non_nullable
              as VCSessionRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCStatePendingApproval &&
            (identical(other.sessionRequest, sessionRequest) ||
                other.sessionRequest == sessionRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCStatePendingApprovalCopyWith<_$_VCStatePendingApproval> get copyWith =>
      __$$_VCStatePendingApprovalCopyWithImpl<_$_VCStatePendingApproval>(
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
    TResult? Function(String bridgeUri)? connectingToBridge,
    TResult? Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult? Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult? Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult? Function(String? message)? disconnected,
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
    TResult? Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult? Function(_VCStatePendingApproval value)? pendingApproval,
    TResult? Function(_VCStateConnectingSession value)? connectingSession,
    TResult? Function(_VCStateConnected value)? connected,
    TResult? Function(_VCStateDisconnected value)? disconnected,
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
  const factory _VCStatePendingApproval(final VCSessionRequest sessionRequest) =
      _$_VCStatePendingApproval;
  const _VCStatePendingApproval._() : super._();

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$$_VCStatePendingApprovalCopyWith<_$_VCStatePendingApproval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCStateConnectingSessionCopyWith<$Res> {
  factory _$$_VCStateConnectingSessionCopyWith(
          _$_VCStateConnectingSession value,
          $Res Function(_$_VCStateConnectingSession) then) =
      __$$_VCStateConnectingSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$$_VCStateConnectingSessionCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$_VCStateConnectingSession>
    implements _$$_VCStateConnectingSessionCopyWith<$Res> {
  __$$_VCStateConnectingSessionCopyWithImpl(_$_VCStateConnectingSession _value,
      $Res Function(_$_VCStateConnectingSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionRequest = null,
  }) {
    return _then(_$_VCStateConnectingSession(
      null == sessionRequest
          ? _value.sessionRequest
          : sessionRequest // ignore: cast_nullable_to_non_nullable
              as VCSessionRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCStateConnectingSession &&
            (identical(other.sessionRequest, sessionRequest) ||
                other.sessionRequest == sessionRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCStateConnectingSessionCopyWith<_$_VCStateConnectingSession>
      get copyWith => __$$_VCStateConnectingSessionCopyWithImpl<
          _$_VCStateConnectingSession>(this, _$identity);

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
    TResult? Function(String bridgeUri)? connectingToBridge,
    TResult? Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult? Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult? Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult? Function(String? message)? disconnected,
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
    TResult? Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult? Function(_VCStatePendingApproval value)? pendingApproval,
    TResult? Function(_VCStateConnectingSession value)? connectingSession,
    TResult? Function(_VCStateConnected value)? connected,
    TResult? Function(_VCStateDisconnected value)? disconnected,
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
  const factory _VCStateConnectingSession(
      final VCSessionRequest sessionRequest) = _$_VCStateConnectingSession;
  const _VCStateConnectingSession._() : super._();

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$$_VCStateConnectingSessionCopyWith<_$_VCStateConnectingSession>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCStateConnectedCopyWith<$Res> {
  factory _$$_VCStateConnectedCopyWith(
          _$_VCStateConnected value, $Res Function(_$_VCStateConnected) then) =
      __$$_VCStateConnectedCopyWithImpl<$Res>;
  @useResult
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
class __$$_VCStateConnectedCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$_VCStateConnected>
    implements _$$_VCStateConnectedCopyWith<$Res> {
  __$$_VCStateConnectedCopyWithImpl(
      _$_VCStateConnected _value, $Res Function(_$_VCStateConnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionStatus = null,
    Object? peerMeta = freezed,
    Object? currentRequest = freezed,
    Object? pendingRequests = null,
    Object? historyRequests = null,
  }) {
    return _then(_$_VCStateConnected(
      sessionStatus: null == sessionStatus
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      peerMeta: freezed == peerMeta
          ? _value.peerMeta
          : peerMeta // ignore: cast_nullable_to_non_nullable
              as PeerMeta?,
      currentRequest: freezed == currentRequest
          ? _value.currentRequest
          : currentRequest // ignore: cast_nullable_to_non_nullable
              as VCRequest?,
      pendingRequests: null == pendingRequests
          ? _value.pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as IList<VCRequest>,
      historyRequests: null == historyRequests
          ? _value.historyRequests
          : historyRequests // ignore: cast_nullable_to_non_nullable
              as IList<VCHistoryItem>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionStatusCopyWith<$Res> get sessionStatus {
    return $SessionStatusCopyWith<$Res>(_value.sessionStatus, (value) {
      return _then(_value.copyWith(sessionStatus: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeerMetaCopyWith<$Res>? get peerMeta {
    if (_value.peerMeta == null) {
      return null;
    }

    return $PeerMetaCopyWith<$Res>(_value.peerMeta!, (value) {
      return _then(_value.copyWith(peerMeta: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
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
  @override
  @JsonKey()
  final IList<VCRequest> pendingRequests;
  @override
  @JsonKey()
  final IList<VCHistoryItem> historyRequests;

  @override
  String toString() {
    return 'VCState.connected(sessionStatus: $sessionStatus, peerMeta: $peerMeta, currentRequest: $currentRequest, pendingRequests: $pendingRequests, historyRequests: $historyRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VCStateConnected &&
            (identical(other.sessionStatus, sessionStatus) ||
                other.sessionStatus == sessionStatus) &&
            (identical(other.peerMeta, peerMeta) ||
                other.peerMeta == peerMeta) &&
            (identical(other.currentRequest, currentRequest) ||
                other.currentRequest == currentRequest) &&
            const DeepCollectionEquality()
                .equals(other.pendingRequests, pendingRequests) &&
            const DeepCollectionEquality()
                .equals(other.historyRequests, historyRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sessionStatus,
      peerMeta,
      currentRequest,
      const DeepCollectionEquality().hash(pendingRequests),
      const DeepCollectionEquality().hash(historyRequests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCStateConnectedCopyWith<_$_VCStateConnected> get copyWith =>
      __$$_VCStateConnectedCopyWithImpl<_$_VCStateConnected>(this, _$identity);

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
    TResult? Function(String bridgeUri)? connectingToBridge,
    TResult? Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult? Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult? Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult? Function(String? message)? disconnected,
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
    TResult? Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult? Function(_VCStatePendingApproval value)? pendingApproval,
    TResult? Function(_VCStateConnectingSession value)? connectingSession,
    TResult? Function(_VCStateConnected value)? connected,
    TResult? Function(_VCStateDisconnected value)? disconnected,
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
      {required final SessionStatus sessionStatus,
      final PeerMeta? peerMeta,
      final VCRequest? currentRequest,
      final IList<VCRequest> pendingRequests,
      final IList<VCHistoryItem> historyRequests}) = _$_VCStateConnected;
  const _VCStateConnected._() : super._();

  SessionStatus get sessionStatus;
  PeerMeta? get peerMeta;
  VCRequest? get currentRequest;
  IList<VCRequest> get pendingRequests;
  IList<VCHistoryItem> get historyRequests;
  @JsonKey(ignore: true)
  _$$_VCStateConnectedCopyWith<_$_VCStateConnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCStateDisconnectedCopyWith<$Res> {
  factory _$$_VCStateDisconnectedCopyWith(_$_VCStateDisconnected value,
          $Res Function(_$_VCStateDisconnected) then) =
      __$$_VCStateDisconnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_VCStateDisconnectedCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$_VCStateDisconnected>
    implements _$$_VCStateDisconnectedCopyWith<$Res> {
  __$$_VCStateDisconnectedCopyWithImpl(_$_VCStateDisconnected _value,
      $Res Function(_$_VCStateDisconnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_VCStateDisconnected(
      freezed == message
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
            other is _$_VCStateDisconnected &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCStateDisconnectedCopyWith<_$_VCStateDisconnected> get copyWith =>
      __$$_VCStateDisconnectedCopyWithImpl<_$_VCStateDisconnected>(
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
    TResult? Function(String bridgeUri)? connectingToBridge,
    TResult? Function(VCSessionRequest sessionRequest)? pendingApproval,
    TResult? Function(VCSessionRequest sessionRequest)? connectingSession,
    TResult? Function(
            SessionStatus sessionStatus,
            PeerMeta? peerMeta,
            VCRequest? currentRequest,
            IList<VCRequest> pendingRequests,
            IList<VCHistoryItem> historyRequests)?
        connected,
    TResult? Function(String? message)? disconnected,
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
    TResult? Function(_VCStateConnectingServer value)? connectingToBridge,
    TResult? Function(_VCStatePendingApproval value)? pendingApproval,
    TResult? Function(_VCStateConnectingSession value)? connectingSession,
    TResult? Function(_VCStateConnected value)? connected,
    TResult? Function(_VCStateDisconnected value)? disconnected,
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
  const factory _VCStateDisconnected([final String? message]) =
      _$_VCStateDisconnected;
  const _VCStateDisconnected._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_VCStateDisconnectedCopyWith<_$_VCStateDisconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(JsonRpcRequest request)? transaction,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCRequestTransaction value)? transaction,
    TResult? Function(_VCRequestSignMessage value)? signMessage,
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
      _$VCRequestCopyWithImpl<$Res, VCRequest>;
  @useResult
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$VCRequestCopyWithImpl<$Res, $Val extends VCRequest>
    implements $VCRequestCopyWith<$Res> {
  _$VCRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JsonRpcRequestCopyWith<$Res> get request {
    return $JsonRpcRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VCRequestTransactionCopyWith<$Res>
    implements $VCRequestCopyWith<$Res> {
  factory _$$_VCRequestTransactionCopyWith(_$_VCRequestTransaction value,
          $Res Function(_$_VCRequestTransaction) then) =
      __$$_VCRequestTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JsonRpcRequest request});

  @override
  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_VCRequestTransactionCopyWithImpl<$Res>
    extends _$VCRequestCopyWithImpl<$Res, _$_VCRequestTransaction>
    implements _$$_VCRequestTransactionCopyWith<$Res> {
  __$$_VCRequestTransactionCopyWithImpl(_$_VCRequestTransaction _value,
      $Res Function(_$_VCRequestTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_VCRequestTransaction(
      null == request
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
            other is _$_VCRequestTransaction &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCRequestTransactionCopyWith<_$_VCRequestTransaction> get copyWith =>
      __$$_VCRequestTransactionCopyWithImpl<_$_VCRequestTransaction>(
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
    TResult? Function(JsonRpcRequest request)? transaction,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCRequestTransaction value)? transaction,
    TResult? Function(_VCRequestSignMessage value)? signMessage,
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
  const factory _VCRequestTransaction(final JsonRpcRequest request) =
      _$_VCRequestTransaction;
  const _VCRequestTransaction._() : super._();

  @override
  JsonRpcRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$_VCRequestTransactionCopyWith<_$_VCRequestTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCRequestSignMessageCopyWith<$Res>
    implements $VCRequestCopyWith<$Res> {
  factory _$$_VCRequestSignMessageCopyWith(_$_VCRequestSignMessage value,
          $Res Function(_$_VCRequestSignMessage) then) =
      __$$_VCRequestSignMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JsonRpcRequest request});

  @override
  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_VCRequestSignMessageCopyWithImpl<$Res>
    extends _$VCRequestCopyWithImpl<$Res, _$_VCRequestSignMessage>
    implements _$$_VCRequestSignMessageCopyWith<$Res> {
  __$$_VCRequestSignMessageCopyWithImpl(_$_VCRequestSignMessage _value,
      $Res Function(_$_VCRequestSignMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_VCRequestSignMessage(
      null == request
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
            other is _$_VCRequestSignMessage &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCRequestSignMessageCopyWith<_$_VCRequestSignMessage> get copyWith =>
      __$$_VCRequestSignMessageCopyWithImpl<_$_VCRequestSignMessage>(
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
    TResult? Function(JsonRpcRequest request)? transaction,
    TResult? Function(JsonRpcRequest request)? signMessage,
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
    TResult? Function(_VCRequestTransaction value)? transaction,
    TResult? Function(_VCRequestSignMessage value)? signMessage,
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
  const factory _VCRequestSignMessage(final JsonRpcRequest request) =
      _$_VCRequestSignMessage;
  const _VCRequestSignMessage._() : super._();

  @override
  JsonRpcRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$_VCRequestSignMessageCopyWith<_$_VCRequestSignMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$VCTxRequestCopyWithImpl<$Res, VCTxRequest>;
  @useResult
  $Res call({int id, SendTx tx});

  $SendTxCopyWith<$Res> get tx;
}

/// @nodoc
class _$VCTxRequestCopyWithImpl<$Res, $Val extends VCTxRequest>
    implements $VCTxRequestCopyWith<$Res> {
  _$VCTxRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tx = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as SendTx,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendTxCopyWith<$Res> get tx {
    return $SendTxCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VCTxRequestCopyWith<$Res>
    implements $VCTxRequestCopyWith<$Res> {
  factory _$$_VCTxRequestCopyWith(
          _$_VCTxRequest value, $Res Function(_$_VCTxRequest) then) =
      __$$_VCTxRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, SendTx tx});

  @override
  $SendTxCopyWith<$Res> get tx;
}

/// @nodoc
class __$$_VCTxRequestCopyWithImpl<$Res>
    extends _$VCTxRequestCopyWithImpl<$Res, _$_VCTxRequest>
    implements _$$_VCTxRequestCopyWith<$Res> {
  __$$_VCTxRequestCopyWithImpl(
      _$_VCTxRequest _value, $Res Function(_$_VCTxRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tx = null,
  }) {
    return _then(_$_VCTxRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tx: null == tx
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
            other is _$_VCTxRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tx, tx) || other.tx == tx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, tx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCTxRequestCopyWith<_$_VCTxRequest> get copyWith =>
      __$$_VCTxRequestCopyWithImpl<_$_VCTxRequest>(this, _$identity);
}

abstract class _VCTxRequest extends VCTxRequest {
  const factory _VCTxRequest(
      {required final int id, required final SendTx tx}) = _$_VCTxRequest;
  const _VCTxRequest._() : super._();

  @override
  int get id;
  @override
  SendTx get tx;
  @override
  @JsonKey(ignore: true)
  _$$_VCTxRequestCopyWith<_$_VCTxRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(AccountBlock accountBlock)? confirmed,
    TResult? Function()? cancelled,
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
    TResult? Function(_VCTxResponseConfirmed value)? confirmed,
    TResult? Function(_VCTxResponseCancelled value)? cancelled,
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
      _$VCTxResponseCopyWithImpl<$Res, VCTxResponse>;
}

/// @nodoc
class _$VCTxResponseCopyWithImpl<$Res, $Val extends VCTxResponse>
    implements $VCTxResponseCopyWith<$Res> {
  _$VCTxResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VCTxResponseConfirmedCopyWith<$Res> {
  factory _$$_VCTxResponseConfirmedCopyWith(_$_VCTxResponseConfirmed value,
          $Res Function(_$_VCTxResponseConfirmed) then) =
      __$$_VCTxResponseConfirmedCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountBlock accountBlock});

  $AccountBlockCopyWith<$Res> get accountBlock;
}

/// @nodoc
class __$$_VCTxResponseConfirmedCopyWithImpl<$Res>
    extends _$VCTxResponseCopyWithImpl<$Res, _$_VCTxResponseConfirmed>
    implements _$$_VCTxResponseConfirmedCopyWith<$Res> {
  __$$_VCTxResponseConfirmedCopyWithImpl(_$_VCTxResponseConfirmed _value,
      $Res Function(_$_VCTxResponseConfirmed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBlock = null,
  }) {
    return _then(_$_VCTxResponseConfirmed(
      null == accountBlock
          ? _value.accountBlock
          : accountBlock // ignore: cast_nullable_to_non_nullable
              as AccountBlock,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCTxResponseConfirmed &&
            (identical(other.accountBlock, accountBlock) ||
                other.accountBlock == accountBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCTxResponseConfirmedCopyWith<_$_VCTxResponseConfirmed> get copyWith =>
      __$$_VCTxResponseConfirmedCopyWithImpl<_$_VCTxResponseConfirmed>(
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
    TResult? Function(AccountBlock accountBlock)? confirmed,
    TResult? Function()? cancelled,
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
    TResult? Function(_VCTxResponseConfirmed value)? confirmed,
    TResult? Function(_VCTxResponseCancelled value)? cancelled,
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
  const factory _VCTxResponseConfirmed(final AccountBlock accountBlock) =
      _$_VCTxResponseConfirmed;

  AccountBlock get accountBlock;
  @JsonKey(ignore: true)
  _$$_VCTxResponseConfirmedCopyWith<_$_VCTxResponseConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCTxResponseCancelledCopyWith<$Res> {
  factory _$$_VCTxResponseCancelledCopyWith(_$_VCTxResponseCancelled value,
          $Res Function(_$_VCTxResponseCancelled) then) =
      __$$_VCTxResponseCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VCTxResponseCancelledCopyWithImpl<$Res>
    extends _$VCTxResponseCopyWithImpl<$Res, _$_VCTxResponseCancelled>
    implements _$$_VCTxResponseCancelledCopyWith<$Res> {
  __$$_VCTxResponseCancelledCopyWithImpl(_$_VCTxResponseCancelled _value,
      $Res Function(_$_VCTxResponseCancelled) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_VCTxResponseCancelled);
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
    TResult? Function(AccountBlock accountBlock)? confirmed,
    TResult? Function()? cancelled,
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
    TResult? Function(_VCTxResponseConfirmed value)? confirmed,
    TResult? Function(_VCTxResponseCancelled value)? cancelled,
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
      _$VCSignRequestCopyWithImpl<$Res, VCSignRequest>;
  @useResult
  $Res call({int id, Uint8List data});
}

/// @nodoc
class _$VCSignRequestCopyWithImpl<$Res, $Val extends VCSignRequest>
    implements $VCSignRequestCopyWith<$Res> {
  _$VCSignRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VCSignRequestCopyWith<$Res>
    implements $VCSignRequestCopyWith<$Res> {
  factory _$$_VCSignRequestCopyWith(
          _$_VCSignRequest value, $Res Function(_$_VCSignRequest) then) =
      __$$_VCSignRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Uint8List data});
}

/// @nodoc
class __$$_VCSignRequestCopyWithImpl<$Res>
    extends _$VCSignRequestCopyWithImpl<$Res, _$_VCSignRequest>
    implements _$$_VCSignRequestCopyWith<$Res> {
  __$$_VCSignRequestCopyWithImpl(
      _$_VCSignRequest _value, $Res Function(_$_VCSignRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$_VCSignRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
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
            other is _$_VCSignRequest &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCSignRequestCopyWith<_$_VCSignRequest> get copyWith =>
      __$$_VCSignRequestCopyWithImpl<_$_VCSignRequest>(this, _$identity);
}

abstract class _VCSignRequest implements VCSignRequest {
  const factory _VCSignRequest(
      {required final int id,
      required final Uint8List data}) = _$_VCSignRequest;

  @override
  int get id;
  @override
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  _$$_VCSignRequestCopyWith<_$_VCSignRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SignedData _$SignedDataFromJson(Map<String, dynamic> json) {
  return _SignedData.fromJson(json);
}

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
      _$SignedDataCopyWithImpl<$Res, SignedData>;
  @useResult
  $Res call(
      {@Uint8ListBase64Converter() Uint8List publicKey,
      @Uint8ListBase64Converter() Uint8List signature});
}

/// @nodoc
class _$SignedDataCopyWithImpl<$Res, $Val extends SignedData>
    implements $SignedDataCopyWith<$Res> {
  _$SignedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? signature = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignedDataCopyWith<$Res>
    implements $SignedDataCopyWith<$Res> {
  factory _$$_SignedDataCopyWith(
          _$_SignedData value, $Res Function(_$_SignedData) then) =
      __$$_SignedDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Uint8ListBase64Converter() Uint8List publicKey,
      @Uint8ListBase64Converter() Uint8List signature});
}

/// @nodoc
class __$$_SignedDataCopyWithImpl<$Res>
    extends _$SignedDataCopyWithImpl<$Res, _$_SignedData>
    implements _$$_SignedDataCopyWith<$Res> {
  __$$_SignedDataCopyWithImpl(
      _$_SignedData _value, $Res Function(_$_SignedData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? signature = null,
  }) {
    return _then(_$_SignedData(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      signature: null == signature
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
            other is _$_SignedData &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.signature, signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(signature));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedDataCopyWith<_$_SignedData> get copyWith =>
      __$$_SignedDataCopyWithImpl<_$_SignedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignedDataToJson(
      this,
    );
  }
}

abstract class _SignedData implements SignedData {
  const factory _SignedData(
          {@Uint8ListBase64Converter() required final Uint8List publicKey,
          @Uint8ListBase64Converter() required final Uint8List signature}) =
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
  _$$_SignedDataCopyWith<_$_SignedData> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(SignedData signedData)? confirmed,
    TResult? Function()? cancelled,
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
    TResult? Function(_VCSignResponseConfirmed value)? confirmed,
    TResult? Function(_VCSignResponseCancelled value)? cancelled,
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
      _$VCSignResponseCopyWithImpl<$Res, VCSignResponse>;
}

/// @nodoc
class _$VCSignResponseCopyWithImpl<$Res, $Val extends VCSignResponse>
    implements $VCSignResponseCopyWith<$Res> {
  _$VCSignResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VCSignResponseConfirmedCopyWith<$Res> {
  factory _$$_VCSignResponseConfirmedCopyWith(_$_VCSignResponseConfirmed value,
          $Res Function(_$_VCSignResponseConfirmed) then) =
      __$$_VCSignResponseConfirmedCopyWithImpl<$Res>;
  @useResult
  $Res call({SignedData signedData});

  $SignedDataCopyWith<$Res> get signedData;
}

/// @nodoc
class __$$_VCSignResponseConfirmedCopyWithImpl<$Res>
    extends _$VCSignResponseCopyWithImpl<$Res, _$_VCSignResponseConfirmed>
    implements _$$_VCSignResponseConfirmedCopyWith<$Res> {
  __$$_VCSignResponseConfirmedCopyWithImpl(_$_VCSignResponseConfirmed _value,
      $Res Function(_$_VCSignResponseConfirmed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedData = null,
  }) {
    return _then(_$_VCSignResponseConfirmed(
      null == signedData
          ? _value.signedData
          : signedData // ignore: cast_nullable_to_non_nullable
              as SignedData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCSignResponseConfirmed &&
            (identical(other.signedData, signedData) ||
                other.signedData == signedData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signedData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCSignResponseConfirmedCopyWith<_$_VCSignResponseConfirmed>
      get copyWith =>
          __$$_VCSignResponseConfirmedCopyWithImpl<_$_VCSignResponseConfirmed>(
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
    TResult? Function(SignedData signedData)? confirmed,
    TResult? Function()? cancelled,
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
    TResult? Function(_VCSignResponseConfirmed value)? confirmed,
    TResult? Function(_VCSignResponseCancelled value)? cancelled,
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
  const factory _VCSignResponseConfirmed(final SignedData signedData) =
      _$_VCSignResponseConfirmed;

  SignedData get signedData;
  @JsonKey(ignore: true)
  _$$_VCSignResponseConfirmedCopyWith<_$_VCSignResponseConfirmed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCSignResponseCancelledCopyWith<$Res> {
  factory _$$_VCSignResponseCancelledCopyWith(_$_VCSignResponseCancelled value,
          $Res Function(_$_VCSignResponseCancelled) then) =
      __$$_VCSignResponseCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VCSignResponseCancelledCopyWithImpl<$Res>
    extends _$VCSignResponseCopyWithImpl<$Res, _$_VCSignResponseCancelled>
    implements _$$_VCSignResponseCancelledCopyWith<$Res> {
  __$$_VCSignResponseCancelledCopyWithImpl(_$_VCSignResponseCancelled _value,
      $Res Function(_$_VCSignResponseCancelled) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType &&
            other is _$_VCSignResponseCancelled);
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
    TResult? Function(SignedData signedData)? confirmed,
    TResult? Function()? cancelled,
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
    TResult? Function(_VCSignResponseConfirmed value)? confirmed,
    TResult? Function(_VCSignResponseCancelled value)? cancelled,
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
    TResult? Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult? Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult? Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult? Function(VCRequest request)? current,
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
    TResult? Function(_VCHistoryItemTx value)? tx,
    TResult? Function(_VCHistoryItemSign value)? sign,
    TResult? Function(_VCHistoryItemInvalid value)? invalid,
    TResult? Function(_VCHistoryItemCurrent value)? current,
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
      _$VCHistoryItemCopyWithImpl<$Res, VCHistoryItem>;
}

/// @nodoc
class _$VCHistoryItemCopyWithImpl<$Res, $Val extends VCHistoryItem>
    implements $VCHistoryItemCopyWith<$Res> {
  _$VCHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VCHistoryItemTxCopyWith<$Res> {
  factory _$$_VCHistoryItemTxCopyWith(
          _$_VCHistoryItemTx value, $Res Function(_$_VCHistoryItemTx) then) =
      __$$_VCHistoryItemTxCopyWithImpl<$Res>;
  @useResult
  $Res call({VCTxRequest request, VCTxResponse response, DateTime timestamp});

  $VCTxRequestCopyWith<$Res> get request;
  $VCTxResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_VCHistoryItemTxCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$_VCHistoryItemTx>
    implements _$$_VCHistoryItemTxCopyWith<$Res> {
  __$$_VCHistoryItemTxCopyWithImpl(
      _$_VCHistoryItemTx _value, $Res Function(_$_VCHistoryItemTx) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? response = null,
    Object? timestamp = null,
  }) {
    return _then(_$_VCHistoryItemTx(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VCTxRequest,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as VCTxResponse,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VCTxRequestCopyWith<$Res> get request {
    return $VCTxRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCHistoryItemTx &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, response, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCHistoryItemTxCopyWith<_$_VCHistoryItemTx> get copyWith =>
      __$$_VCHistoryItemTxCopyWithImpl<_$_VCHistoryItemTx>(this, _$identity);

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
    TResult? Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult? Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult? Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult? Function(VCRequest request)? current,
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
    TResult? Function(_VCHistoryItemTx value)? tx,
    TResult? Function(_VCHistoryItemSign value)? sign,
    TResult? Function(_VCHistoryItemInvalid value)? invalid,
    TResult? Function(_VCHistoryItemCurrent value)? current,
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
      {required final VCTxRequest request,
      required final VCTxResponse response,
      required final DateTime timestamp}) = _$_VCHistoryItemTx;
  const _VCHistoryItemTx._() : super._();

  VCTxRequest get request;
  VCTxResponse get response;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$$_VCHistoryItemTxCopyWith<_$_VCHistoryItemTx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCHistoryItemSignCopyWith<$Res> {
  factory _$$_VCHistoryItemSignCopyWith(_$_VCHistoryItemSign value,
          $Res Function(_$_VCHistoryItemSign) then) =
      __$$_VCHistoryItemSignCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {VCSignRequest request, VCSignResponse response, DateTime timestamp});

  $VCSignRequestCopyWith<$Res> get request;
  $VCSignResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_VCHistoryItemSignCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$_VCHistoryItemSign>
    implements _$$_VCHistoryItemSignCopyWith<$Res> {
  __$$_VCHistoryItemSignCopyWithImpl(
      _$_VCHistoryItemSign _value, $Res Function(_$_VCHistoryItemSign) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? response = null,
    Object? timestamp = null,
  }) {
    return _then(_$_VCHistoryItemSign(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VCSignRequest,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as VCSignResponse,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VCSignRequestCopyWith<$Res> get request {
    return $VCSignRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCHistoryItemSign &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, response, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCHistoryItemSignCopyWith<_$_VCHistoryItemSign> get copyWith =>
      __$$_VCHistoryItemSignCopyWithImpl<_$_VCHistoryItemSign>(
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
    return sign(request, response, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult? Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult? Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult? Function(VCRequest request)? current,
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
    TResult? Function(_VCHistoryItemTx value)? tx,
    TResult? Function(_VCHistoryItemSign value)? sign,
    TResult? Function(_VCHistoryItemInvalid value)? invalid,
    TResult? Function(_VCHistoryItemCurrent value)? current,
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
      {required final VCSignRequest request,
      required final VCSignResponse response,
      required final DateTime timestamp}) = _$_VCHistoryItemSign;
  const _VCHistoryItemSign._() : super._();

  VCSignRequest get request;
  VCSignResponse get response;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$$_VCHistoryItemSignCopyWith<_$_VCHistoryItemSign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCHistoryItemInvalidCopyWith<$Res> {
  factory _$$_VCHistoryItemInvalidCopyWith(_$_VCHistoryItemInvalid value,
          $Res Function(_$_VCHistoryItemInvalid) then) =
      __$$_VCHistoryItemInvalidCopyWithImpl<$Res>;
  @useResult
  $Res call({JsonRpcRequest request, Object error, DateTime timestamp});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_VCHistoryItemInvalidCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$_VCHistoryItemInvalid>
    implements _$$_VCHistoryItemInvalidCopyWith<$Res> {
  __$$_VCHistoryItemInvalidCopyWithImpl(_$_VCHistoryItemInvalid _value,
      $Res Function(_$_VCHistoryItemInvalid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? error = null,
    Object? timestamp = null,
  }) {
    return _then(_$_VCHistoryItemInvalid(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
      error: null == error ? _value.error : error,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCHistoryItemInvalid &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request,
      const DeepCollectionEquality().hash(error), timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCHistoryItemInvalidCopyWith<_$_VCHistoryItemInvalid> get copyWith =>
      __$$_VCHistoryItemInvalidCopyWithImpl<_$_VCHistoryItemInvalid>(
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
    TResult? Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult? Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult? Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult? Function(VCRequest request)? current,
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
    TResult? Function(_VCHistoryItemTx value)? tx,
    TResult? Function(_VCHistoryItemSign value)? sign,
    TResult? Function(_VCHistoryItemInvalid value)? invalid,
    TResult? Function(_VCHistoryItemCurrent value)? current,
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
      {required final JsonRpcRequest request,
      required final Object error,
      required final DateTime timestamp}) = _$_VCHistoryItemInvalid;
  const _VCHistoryItemInvalid._() : super._();

  JsonRpcRequest get request;
  Object get error;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$$_VCHistoryItemInvalidCopyWith<_$_VCHistoryItemInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VCHistoryItemCurrentCopyWith<$Res> {
  factory _$$_VCHistoryItemCurrentCopyWith(_$_VCHistoryItemCurrent value,
          $Res Function(_$_VCHistoryItemCurrent) then) =
      __$$_VCHistoryItemCurrentCopyWithImpl<$Res>;
  @useResult
  $Res call({VCRequest request});

  $VCRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_VCHistoryItemCurrentCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$_VCHistoryItemCurrent>
    implements _$$_VCHistoryItemCurrentCopyWith<$Res> {
  __$$_VCHistoryItemCurrentCopyWithImpl(_$_VCHistoryItemCurrent _value,
      $Res Function(_$_VCHistoryItemCurrent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_VCHistoryItemCurrent(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as VCRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_VCHistoryItemCurrent &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCHistoryItemCurrentCopyWith<_$_VCHistoryItemCurrent> get copyWith =>
      __$$_VCHistoryItemCurrentCopyWithImpl<_$_VCHistoryItemCurrent>(
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
    TResult? Function(
            VCTxRequest request, VCTxResponse response, DateTime timestamp)?
        tx,
    TResult? Function(
            VCSignRequest request, VCSignResponse response, DateTime timestamp)?
        sign,
    TResult? Function(JsonRpcRequest request, Object error, DateTime timestamp)?
        invalid,
    TResult? Function(VCRequest request)? current,
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
    TResult? Function(_VCHistoryItemTx value)? tx,
    TResult? Function(_VCHistoryItemSign value)? sign,
    TResult? Function(_VCHistoryItemInvalid value)? invalid,
    TResult? Function(_VCHistoryItemCurrent value)? current,
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
  const factory _VCHistoryItemCurrent({required final VCRequest request}) =
      _$_VCHistoryItemCurrent;
  const _VCHistoryItemCurrent._() : super._();

  VCRequest get request;
  @JsonKey(ignore: true)
  _$$_VCHistoryItemCurrentCopyWith<_$_VCHistoryItemCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}

VCError _$VCErrorFromJson(Map<String, dynamic> json) {
  return _VCError.fromJson(json);
}

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
      _$VCErrorCopyWithImpl<$Res, VCError>;
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class _$VCErrorCopyWithImpl<$Res, $Val extends VCError>
    implements $VCErrorCopyWith<$Res> {
  _$VCErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VCErrorCopyWith<$Res> implements $VCErrorCopyWith<$Res> {
  factory _$$_VCErrorCopyWith(
          _$_VCError value, $Res Function(_$_VCError) then) =
      __$$_VCErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class __$$_VCErrorCopyWithImpl<$Res>
    extends _$VCErrorCopyWithImpl<$Res, _$_VCError>
    implements _$$_VCErrorCopyWith<$Res> {
  __$$_VCErrorCopyWithImpl(_$_VCError _value, $Res Function(_$_VCError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_$_VCError(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
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
            other is _$_VCError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VCErrorCopyWith<_$_VCError> get copyWith =>
      __$$_VCErrorCopyWithImpl<_$_VCError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VCErrorToJson(
      this,
    );
  }
}

abstract class _VCError implements VCError {
  const factory _VCError({required final int code, final String? message}) =
      _$_VCError;

  factory _VCError.fromJson(Map<String, dynamic> json) = _$_VCError.fromJson;

  @override
  int get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_VCErrorCopyWith<_$_VCError> get copyWith =>
      throw _privateConstructorUsedError;
}
