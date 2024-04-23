// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viteconnect_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$VCEventSessionRequestImplCopyWith<$Res> {
  factory _$$VCEventSessionRequestImplCopyWith(
          _$VCEventSessionRequestImpl value,
          $Res Function(_$VCEventSessionRequestImpl) then) =
      __$$VCEventSessionRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$$VCEventSessionRequestImplCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$VCEventSessionRequestImpl>
    implements _$$VCEventSessionRequestImplCopyWith<$Res> {
  __$$VCEventSessionRequestImplCopyWithImpl(_$VCEventSessionRequestImpl _value,
      $Res Function(_$VCEventSessionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionRequest = null,
  }) {
    return _then(_$VCEventSessionRequestImpl(
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

class _$VCEventSessionRequestImpl implements _VCEventSessionRequest {
  const _$VCEventSessionRequestImpl(this.sessionRequest);

  @override
  final VCSessionRequest sessionRequest;

  @override
  String toString() {
    return 'VCEvent.sessionRequest(sessionRequest: $sessionRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCEventSessionRequestImpl &&
            (identical(other.sessionRequest, sessionRequest) ||
                other.sessionRequest == sessionRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCEventSessionRequestImplCopyWith<_$VCEventSessionRequestImpl>
      get copyWith => __$$VCEventSessionRequestImplCopyWithImpl<
          _$VCEventSessionRequestImpl>(this, _$identity);

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
      _$VCEventSessionRequestImpl;

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$$VCEventSessionRequestImplCopyWith<_$VCEventSessionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCEventConnectedImplCopyWith<$Res> {
  factory _$$VCEventConnectedImplCopyWith(_$VCEventConnectedImpl value,
          $Res Function(_$VCEventConnectedImpl) then) =
      __$$VCEventConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionStatus sessionStatus});

  $SessionStatusCopyWith<$Res> get sessionStatus;
}

/// @nodoc
class __$$VCEventConnectedImplCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$VCEventConnectedImpl>
    implements _$$VCEventConnectedImplCopyWith<$Res> {
  __$$VCEventConnectedImplCopyWithImpl(_$VCEventConnectedImpl _value,
      $Res Function(_$VCEventConnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionStatus = null,
  }) {
    return _then(_$VCEventConnectedImpl(
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

class _$VCEventConnectedImpl implements _VCEventConnected {
  const _$VCEventConnectedImpl(this.sessionStatus);

  @override
  final SessionStatus sessionStatus;

  @override
  String toString() {
    return 'VCEvent.connected(sessionStatus: $sessionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCEventConnectedImpl &&
            (identical(other.sessionStatus, sessionStatus) ||
                other.sessionStatus == sessionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCEventConnectedImplCopyWith<_$VCEventConnectedImpl> get copyWith =>
      __$$VCEventConnectedImplCopyWithImpl<_$VCEventConnectedImpl>(
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
      _$VCEventConnectedImpl;

  SessionStatus get sessionStatus;
  @JsonKey(ignore: true)
  _$$VCEventConnectedImplCopyWith<_$VCEventConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCEventDisconnectedImplCopyWith<$Res> {
  factory _$$VCEventDisconnectedImplCopyWith(_$VCEventDisconnectedImpl value,
          $Res Function(_$VCEventDisconnectedImpl) then) =
      __$$VCEventDisconnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VCEventDisconnectedImplCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$VCEventDisconnectedImpl>
    implements _$$VCEventDisconnectedImplCopyWith<$Res> {
  __$$VCEventDisconnectedImplCopyWithImpl(_$VCEventDisconnectedImpl _value,
      $Res Function(_$VCEventDisconnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VCEventDisconnectedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VCEventDisconnectedImpl implements _VCEventDisconnected {
  const _$VCEventDisconnectedImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'VCEvent.disconnected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCEventDisconnectedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCEventDisconnectedImplCopyWith<_$VCEventDisconnectedImpl> get copyWith =>
      __$$VCEventDisconnectedImplCopyWithImpl<_$VCEventDisconnectedImpl>(
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
      _$VCEventDisconnectedImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$VCEventDisconnectedImplCopyWith<_$VCEventDisconnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCEventSignEndSendTxImplCopyWith<$Res> {
  factory _$$VCEventSignEndSendTxImplCopyWith(_$VCEventSignEndSendTxImpl value,
          $Res Function(_$VCEventSignEndSendTxImpl) then) =
      __$$VCEventSignEndSendTxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$VCEventSignEndSendTxImplCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$VCEventSignEndSendTxImpl>
    implements _$$VCEventSignEndSendTxImplCopyWith<$Res> {
  __$$VCEventSignEndSendTxImplCopyWithImpl(_$VCEventSignEndSendTxImpl _value,
      $Res Function(_$VCEventSignEndSendTxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$VCEventSignEndSendTxImpl(
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

class _$VCEventSignEndSendTxImpl implements _VCEventSignEndSendTx {
  const _$VCEventSignEndSendTxImpl(this.request);

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCEvent.signAndSendTx(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCEventSignEndSendTxImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCEventSignEndSendTxImplCopyWith<_$VCEventSignEndSendTxImpl>
      get copyWith =>
          __$$VCEventSignEndSendTxImplCopyWithImpl<_$VCEventSignEndSendTxImpl>(
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
      _$VCEventSignEndSendTxImpl;

  JsonRpcRequest get request;
  @JsonKey(ignore: true)
  _$$VCEventSignEndSendTxImplCopyWith<_$VCEventSignEndSendTxImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCEventSignMessageImplCopyWith<$Res> {
  factory _$$VCEventSignMessageImplCopyWith(_$VCEventSignMessageImpl value,
          $Res Function(_$VCEventSignMessageImpl) then) =
      __$$VCEventSignMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JsonRpcRequest request});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$VCEventSignMessageImplCopyWithImpl<$Res>
    extends _$VCEventCopyWithImpl<$Res, _$VCEventSignMessageImpl>
    implements _$$VCEventSignMessageImplCopyWith<$Res> {
  __$$VCEventSignMessageImplCopyWithImpl(_$VCEventSignMessageImpl _value,
      $Res Function(_$VCEventSignMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$VCEventSignMessageImpl(
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

class _$VCEventSignMessageImpl implements _VCEventSignMessage {
  const _$VCEventSignMessageImpl(this.request);

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCEvent.signMessage(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCEventSignMessageImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCEventSignMessageImplCopyWith<_$VCEventSignMessageImpl> get copyWith =>
      __$$VCEventSignMessageImplCopyWithImpl<_$VCEventSignMessageImpl>(
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
      _$VCEventSignMessageImpl;

  JsonRpcRequest get request;
  @JsonKey(ignore: true)
  _$$VCEventSignMessageImplCopyWith<_$VCEventSignMessageImpl> get copyWith =>
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
abstract class _$$VCStateConnectingServerImplCopyWith<$Res> {
  factory _$$VCStateConnectingServerImplCopyWith(
          _$VCStateConnectingServerImpl value,
          $Res Function(_$VCStateConnectingServerImpl) then) =
      __$$VCStateConnectingServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bridgeUri});
}

/// @nodoc
class __$$VCStateConnectingServerImplCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$VCStateConnectingServerImpl>
    implements _$$VCStateConnectingServerImplCopyWith<$Res> {
  __$$VCStateConnectingServerImplCopyWithImpl(
      _$VCStateConnectingServerImpl _value,
      $Res Function(_$VCStateConnectingServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bridgeUri = null,
  }) {
    return _then(_$VCStateConnectingServerImpl(
      null == bridgeUri
          ? _value.bridgeUri
          : bridgeUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VCStateConnectingServerImpl extends _VCStateConnectingServer {
  const _$VCStateConnectingServerImpl(this.bridgeUri) : super._();

  @override
  final String bridgeUri;

  @override
  String toString() {
    return 'VCState.connectingToBridge(bridgeUri: $bridgeUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCStateConnectingServerImpl &&
            (identical(other.bridgeUri, bridgeUri) ||
                other.bridgeUri == bridgeUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bridgeUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCStateConnectingServerImplCopyWith<_$VCStateConnectingServerImpl>
      get copyWith => __$$VCStateConnectingServerImplCopyWithImpl<
          _$VCStateConnectingServerImpl>(this, _$identity);

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
      _$VCStateConnectingServerImpl;
  const _VCStateConnectingServer._() : super._();

  String get bridgeUri;
  @JsonKey(ignore: true)
  _$$VCStateConnectingServerImplCopyWith<_$VCStateConnectingServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCStatePendingApprovalImplCopyWith<$Res> {
  factory _$$VCStatePendingApprovalImplCopyWith(
          _$VCStatePendingApprovalImpl value,
          $Res Function(_$VCStatePendingApprovalImpl) then) =
      __$$VCStatePendingApprovalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$$VCStatePendingApprovalImplCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$VCStatePendingApprovalImpl>
    implements _$$VCStatePendingApprovalImplCopyWith<$Res> {
  __$$VCStatePendingApprovalImplCopyWithImpl(
      _$VCStatePendingApprovalImpl _value,
      $Res Function(_$VCStatePendingApprovalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionRequest = null,
  }) {
    return _then(_$VCStatePendingApprovalImpl(
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

class _$VCStatePendingApprovalImpl extends _VCStatePendingApproval {
  const _$VCStatePendingApprovalImpl(this.sessionRequest) : super._();

  @override
  final VCSessionRequest sessionRequest;

  @override
  String toString() {
    return 'VCState.pendingApproval(sessionRequest: $sessionRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCStatePendingApprovalImpl &&
            (identical(other.sessionRequest, sessionRequest) ||
                other.sessionRequest == sessionRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCStatePendingApprovalImplCopyWith<_$VCStatePendingApprovalImpl>
      get copyWith => __$$VCStatePendingApprovalImplCopyWithImpl<
          _$VCStatePendingApprovalImpl>(this, _$identity);

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
      _$VCStatePendingApprovalImpl;
  const _VCStatePendingApproval._() : super._();

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$$VCStatePendingApprovalImplCopyWith<_$VCStatePendingApprovalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCStateConnectingSessionImplCopyWith<$Res> {
  factory _$$VCStateConnectingSessionImplCopyWith(
          _$VCStateConnectingSessionImpl value,
          $Res Function(_$VCStateConnectingSessionImpl) then) =
      __$$VCStateConnectingSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VCSessionRequest sessionRequest});

  $VCSessionRequestCopyWith<$Res> get sessionRequest;
}

/// @nodoc
class __$$VCStateConnectingSessionImplCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$VCStateConnectingSessionImpl>
    implements _$$VCStateConnectingSessionImplCopyWith<$Res> {
  __$$VCStateConnectingSessionImplCopyWithImpl(
      _$VCStateConnectingSessionImpl _value,
      $Res Function(_$VCStateConnectingSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionRequest = null,
  }) {
    return _then(_$VCStateConnectingSessionImpl(
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

class _$VCStateConnectingSessionImpl extends _VCStateConnectingSession {
  const _$VCStateConnectingSessionImpl(this.sessionRequest) : super._();

  @override
  final VCSessionRequest sessionRequest;

  @override
  String toString() {
    return 'VCState.connectingSession(sessionRequest: $sessionRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCStateConnectingSessionImpl &&
            (identical(other.sessionRequest, sessionRequest) ||
                other.sessionRequest == sessionRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCStateConnectingSessionImplCopyWith<_$VCStateConnectingSessionImpl>
      get copyWith => __$$VCStateConnectingSessionImplCopyWithImpl<
          _$VCStateConnectingSessionImpl>(this, _$identity);

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
      final VCSessionRequest sessionRequest) = _$VCStateConnectingSessionImpl;
  const _VCStateConnectingSession._() : super._();

  VCSessionRequest get sessionRequest;
  @JsonKey(ignore: true)
  _$$VCStateConnectingSessionImplCopyWith<_$VCStateConnectingSessionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCStateConnectedImplCopyWith<$Res> {
  factory _$$VCStateConnectedImplCopyWith(_$VCStateConnectedImpl value,
          $Res Function(_$VCStateConnectedImpl) then) =
      __$$VCStateConnectedImplCopyWithImpl<$Res>;
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
class __$$VCStateConnectedImplCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$VCStateConnectedImpl>
    implements _$$VCStateConnectedImplCopyWith<$Res> {
  __$$VCStateConnectedImplCopyWithImpl(_$VCStateConnectedImpl _value,
      $Res Function(_$VCStateConnectedImpl) _then)
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
    return _then(_$VCStateConnectedImpl(
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

class _$VCStateConnectedImpl extends _VCStateConnected {
  const _$VCStateConnectedImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCStateConnectedImpl &&
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
  _$$VCStateConnectedImplCopyWith<_$VCStateConnectedImpl> get copyWith =>
      __$$VCStateConnectedImplCopyWithImpl<_$VCStateConnectedImpl>(
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
      final IList<VCHistoryItem> historyRequests}) = _$VCStateConnectedImpl;
  const _VCStateConnected._() : super._();

  SessionStatus get sessionStatus;
  PeerMeta? get peerMeta;
  VCRequest? get currentRequest;
  IList<VCRequest> get pendingRequests;
  IList<VCHistoryItem> get historyRequests;
  @JsonKey(ignore: true)
  _$$VCStateConnectedImplCopyWith<_$VCStateConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCStateDisconnectedImplCopyWith<$Res> {
  factory _$$VCStateDisconnectedImplCopyWith(_$VCStateDisconnectedImpl value,
          $Res Function(_$VCStateDisconnectedImpl) then) =
      __$$VCStateDisconnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$VCStateDisconnectedImplCopyWithImpl<$Res>
    extends _$VCStateCopyWithImpl<$Res, _$VCStateDisconnectedImpl>
    implements _$$VCStateDisconnectedImplCopyWith<$Res> {
  __$$VCStateDisconnectedImplCopyWithImpl(_$VCStateDisconnectedImpl _value,
      $Res Function(_$VCStateDisconnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$VCStateDisconnectedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VCStateDisconnectedImpl extends _VCStateDisconnected {
  const _$VCStateDisconnectedImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'VCState.disconnected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCStateDisconnectedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCStateDisconnectedImplCopyWith<_$VCStateDisconnectedImpl> get copyWith =>
      __$$VCStateDisconnectedImplCopyWithImpl<_$VCStateDisconnectedImpl>(
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
      _$VCStateDisconnectedImpl;
  const _VCStateDisconnected._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$VCStateDisconnectedImplCopyWith<_$VCStateDisconnectedImpl> get copyWith =>
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
abstract class _$$VCRequestTransactionImplCopyWith<$Res>
    implements $VCRequestCopyWith<$Res> {
  factory _$$VCRequestTransactionImplCopyWith(_$VCRequestTransactionImpl value,
          $Res Function(_$VCRequestTransactionImpl) then) =
      __$$VCRequestTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JsonRpcRequest request});

  @override
  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$VCRequestTransactionImplCopyWithImpl<$Res>
    extends _$VCRequestCopyWithImpl<$Res, _$VCRequestTransactionImpl>
    implements _$$VCRequestTransactionImplCopyWith<$Res> {
  __$$VCRequestTransactionImplCopyWithImpl(_$VCRequestTransactionImpl _value,
      $Res Function(_$VCRequestTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$VCRequestTransactionImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }
}

/// @nodoc

class _$VCRequestTransactionImpl extends _VCRequestTransaction {
  const _$VCRequestTransactionImpl(this.request) : super._();

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCRequest.transaction(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCRequestTransactionImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCRequestTransactionImplCopyWith<_$VCRequestTransactionImpl>
      get copyWith =>
          __$$VCRequestTransactionImplCopyWithImpl<_$VCRequestTransactionImpl>(
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
      _$VCRequestTransactionImpl;
  const _VCRequestTransaction._() : super._();

  @override
  JsonRpcRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$VCRequestTransactionImplCopyWith<_$VCRequestTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCRequestSignMessageImplCopyWith<$Res>
    implements $VCRequestCopyWith<$Res> {
  factory _$$VCRequestSignMessageImplCopyWith(_$VCRequestSignMessageImpl value,
          $Res Function(_$VCRequestSignMessageImpl) then) =
      __$$VCRequestSignMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JsonRpcRequest request});

  @override
  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$VCRequestSignMessageImplCopyWithImpl<$Res>
    extends _$VCRequestCopyWithImpl<$Res, _$VCRequestSignMessageImpl>
    implements _$$VCRequestSignMessageImplCopyWith<$Res> {
  __$$VCRequestSignMessageImplCopyWithImpl(_$VCRequestSignMessageImpl _value,
      $Res Function(_$VCRequestSignMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$VCRequestSignMessageImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest,
    ));
  }
}

/// @nodoc

class _$VCRequestSignMessageImpl extends _VCRequestSignMessage {
  const _$VCRequestSignMessageImpl(this.request) : super._();

  @override
  final JsonRpcRequest request;

  @override
  String toString() {
    return 'VCRequest.signMessage(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCRequestSignMessageImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCRequestSignMessageImplCopyWith<_$VCRequestSignMessageImpl>
      get copyWith =>
          __$$VCRequestSignMessageImplCopyWithImpl<_$VCRequestSignMessageImpl>(
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
      _$VCRequestSignMessageImpl;
  const _VCRequestSignMessage._() : super._();

  @override
  JsonRpcRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$VCRequestSignMessageImplCopyWith<_$VCRequestSignMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$VCTxRequestImplCopyWith<$Res>
    implements $VCTxRequestCopyWith<$Res> {
  factory _$$VCTxRequestImplCopyWith(
          _$VCTxRequestImpl value, $Res Function(_$VCTxRequestImpl) then) =
      __$$VCTxRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, SendTx tx});

  @override
  $SendTxCopyWith<$Res> get tx;
}

/// @nodoc
class __$$VCTxRequestImplCopyWithImpl<$Res>
    extends _$VCTxRequestCopyWithImpl<$Res, _$VCTxRequestImpl>
    implements _$$VCTxRequestImplCopyWith<$Res> {
  __$$VCTxRequestImplCopyWithImpl(
      _$VCTxRequestImpl _value, $Res Function(_$VCTxRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tx = null,
  }) {
    return _then(_$VCTxRequestImpl(
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

class _$VCTxRequestImpl extends _VCTxRequest {
  const _$VCTxRequestImpl({required this.id, required this.tx}) : super._();

  @override
  final int id;
  @override
  final SendTx tx;

  @override
  String toString() {
    return 'VCTxRequest(id: $id, tx: $tx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCTxRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tx, tx) || other.tx == tx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, tx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCTxRequestImplCopyWith<_$VCTxRequestImpl> get copyWith =>
      __$$VCTxRequestImplCopyWithImpl<_$VCTxRequestImpl>(this, _$identity);
}

abstract class _VCTxRequest extends VCTxRequest {
  const factory _VCTxRequest(
      {required final int id, required final SendTx tx}) = _$VCTxRequestImpl;
  const _VCTxRequest._() : super._();

  @override
  int get id;
  @override
  SendTx get tx;
  @override
  @JsonKey(ignore: true)
  _$$VCTxRequestImplCopyWith<_$VCTxRequestImpl> get copyWith =>
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
abstract class _$$VCTxResponseConfirmedImplCopyWith<$Res> {
  factory _$$VCTxResponseConfirmedImplCopyWith(
          _$VCTxResponseConfirmedImpl value,
          $Res Function(_$VCTxResponseConfirmedImpl) then) =
      __$$VCTxResponseConfirmedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountBlock accountBlock});

  $AccountBlockCopyWith<$Res> get accountBlock;
}

/// @nodoc
class __$$VCTxResponseConfirmedImplCopyWithImpl<$Res>
    extends _$VCTxResponseCopyWithImpl<$Res, _$VCTxResponseConfirmedImpl>
    implements _$$VCTxResponseConfirmedImplCopyWith<$Res> {
  __$$VCTxResponseConfirmedImplCopyWithImpl(_$VCTxResponseConfirmedImpl _value,
      $Res Function(_$VCTxResponseConfirmedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBlock = null,
  }) {
    return _then(_$VCTxResponseConfirmedImpl(
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

class _$VCTxResponseConfirmedImpl implements _VCTxResponseConfirmed {
  const _$VCTxResponseConfirmedImpl(this.accountBlock);

  @override
  final AccountBlock accountBlock;

  @override
  String toString() {
    return 'VCTxResponse.confirmed(accountBlock: $accountBlock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCTxResponseConfirmedImpl &&
            (identical(other.accountBlock, accountBlock) ||
                other.accountBlock == accountBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCTxResponseConfirmedImplCopyWith<_$VCTxResponseConfirmedImpl>
      get copyWith => __$$VCTxResponseConfirmedImplCopyWithImpl<
          _$VCTxResponseConfirmedImpl>(this, _$identity);

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
      _$VCTxResponseConfirmedImpl;

  AccountBlock get accountBlock;
  @JsonKey(ignore: true)
  _$$VCTxResponseConfirmedImplCopyWith<_$VCTxResponseConfirmedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCTxResponseCancelledImplCopyWith<$Res> {
  factory _$$VCTxResponseCancelledImplCopyWith(
          _$VCTxResponseCancelledImpl value,
          $Res Function(_$VCTxResponseCancelledImpl) then) =
      __$$VCTxResponseCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VCTxResponseCancelledImplCopyWithImpl<$Res>
    extends _$VCTxResponseCopyWithImpl<$Res, _$VCTxResponseCancelledImpl>
    implements _$$VCTxResponseCancelledImplCopyWith<$Res> {
  __$$VCTxResponseCancelledImplCopyWithImpl(_$VCTxResponseCancelledImpl _value,
      $Res Function(_$VCTxResponseCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VCTxResponseCancelledImpl implements _VCTxResponseCancelled {
  const _$VCTxResponseCancelledImpl();

  @override
  String toString() {
    return 'VCTxResponse.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCTxResponseCancelledImpl);
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
  const factory _VCTxResponseCancelled() = _$VCTxResponseCancelledImpl;
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
abstract class _$$VCSignRequestImplCopyWith<$Res>
    implements $VCSignRequestCopyWith<$Res> {
  factory _$$VCSignRequestImplCopyWith(
          _$VCSignRequestImpl value, $Res Function(_$VCSignRequestImpl) then) =
      __$$VCSignRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Uint8List data});
}

/// @nodoc
class __$$VCSignRequestImplCopyWithImpl<$Res>
    extends _$VCSignRequestCopyWithImpl<$Res, _$VCSignRequestImpl>
    implements _$$VCSignRequestImplCopyWith<$Res> {
  __$$VCSignRequestImplCopyWithImpl(
      _$VCSignRequestImpl _value, $Res Function(_$VCSignRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$VCSignRequestImpl(
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

class _$VCSignRequestImpl implements _VCSignRequest {
  const _$VCSignRequestImpl({required this.id, required this.data});

  @override
  final int id;
  @override
  final Uint8List data;

  @override
  String toString() {
    return 'VCSignRequest(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCSignRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCSignRequestImplCopyWith<_$VCSignRequestImpl> get copyWith =>
      __$$VCSignRequestImplCopyWithImpl<_$VCSignRequestImpl>(this, _$identity);
}

abstract class _VCSignRequest implements VCSignRequest {
  const factory _VCSignRequest(
      {required final int id,
      required final Uint8List data}) = _$VCSignRequestImpl;

  @override
  int get id;
  @override
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  _$$VCSignRequestImplCopyWith<_$VCSignRequestImpl> get copyWith =>
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
abstract class _$$SignedDataImplCopyWith<$Res>
    implements $SignedDataCopyWith<$Res> {
  factory _$$SignedDataImplCopyWith(
          _$SignedDataImpl value, $Res Function(_$SignedDataImpl) then) =
      __$$SignedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Uint8ListBase64Converter() Uint8List publicKey,
      @Uint8ListBase64Converter() Uint8List signature});
}

/// @nodoc
class __$$SignedDataImplCopyWithImpl<$Res>
    extends _$SignedDataCopyWithImpl<$Res, _$SignedDataImpl>
    implements _$$SignedDataImplCopyWith<$Res> {
  __$$SignedDataImplCopyWithImpl(
      _$SignedDataImpl _value, $Res Function(_$SignedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? signature = null,
  }) {
    return _then(_$SignedDataImpl(
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
class _$SignedDataImpl implements _SignedData {
  const _$SignedDataImpl(
      {@Uint8ListBase64Converter() required this.publicKey,
      @Uint8ListBase64Converter() required this.signature});

  factory _$SignedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedDataImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedDataImpl &&
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
  _$$SignedDataImplCopyWith<_$SignedDataImpl> get copyWith =>
      __$$SignedDataImplCopyWithImpl<_$SignedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedDataImplToJson(
      this,
    );
  }
}

abstract class _SignedData implements SignedData {
  const factory _SignedData(
          {@Uint8ListBase64Converter() required final Uint8List publicKey,
          @Uint8ListBase64Converter() required final Uint8List signature}) =
      _$SignedDataImpl;

  factory _SignedData.fromJson(Map<String, dynamic> json) =
      _$SignedDataImpl.fromJson;

  @override
  @Uint8ListBase64Converter()
  Uint8List get publicKey;
  @override
  @Uint8ListBase64Converter()
  Uint8List get signature;
  @override
  @JsonKey(ignore: true)
  _$$SignedDataImplCopyWith<_$SignedDataImpl> get copyWith =>
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
abstract class _$$VCSignResponseConfirmedImplCopyWith<$Res> {
  factory _$$VCSignResponseConfirmedImplCopyWith(
          _$VCSignResponseConfirmedImpl value,
          $Res Function(_$VCSignResponseConfirmedImpl) then) =
      __$$VCSignResponseConfirmedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignedData signedData});

  $SignedDataCopyWith<$Res> get signedData;
}

/// @nodoc
class __$$VCSignResponseConfirmedImplCopyWithImpl<$Res>
    extends _$VCSignResponseCopyWithImpl<$Res, _$VCSignResponseConfirmedImpl>
    implements _$$VCSignResponseConfirmedImplCopyWith<$Res> {
  __$$VCSignResponseConfirmedImplCopyWithImpl(
      _$VCSignResponseConfirmedImpl _value,
      $Res Function(_$VCSignResponseConfirmedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedData = null,
  }) {
    return _then(_$VCSignResponseConfirmedImpl(
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

class _$VCSignResponseConfirmedImpl implements _VCSignResponseConfirmed {
  const _$VCSignResponseConfirmedImpl(this.signedData);

  @override
  final SignedData signedData;

  @override
  String toString() {
    return 'VCSignResponse.confirmed(signedData: $signedData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCSignResponseConfirmedImpl &&
            (identical(other.signedData, signedData) ||
                other.signedData == signedData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signedData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCSignResponseConfirmedImplCopyWith<_$VCSignResponseConfirmedImpl>
      get copyWith => __$$VCSignResponseConfirmedImplCopyWithImpl<
          _$VCSignResponseConfirmedImpl>(this, _$identity);

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
      _$VCSignResponseConfirmedImpl;

  SignedData get signedData;
  @JsonKey(ignore: true)
  _$$VCSignResponseConfirmedImplCopyWith<_$VCSignResponseConfirmedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCSignResponseCancelledImplCopyWith<$Res> {
  factory _$$VCSignResponseCancelledImplCopyWith(
          _$VCSignResponseCancelledImpl value,
          $Res Function(_$VCSignResponseCancelledImpl) then) =
      __$$VCSignResponseCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VCSignResponseCancelledImplCopyWithImpl<$Res>
    extends _$VCSignResponseCopyWithImpl<$Res, _$VCSignResponseCancelledImpl>
    implements _$$VCSignResponseCancelledImplCopyWith<$Res> {
  __$$VCSignResponseCancelledImplCopyWithImpl(
      _$VCSignResponseCancelledImpl _value,
      $Res Function(_$VCSignResponseCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VCSignResponseCancelledImpl implements _VCSignResponseCancelled {
  const _$VCSignResponseCancelledImpl();

  @override
  String toString() {
    return 'VCSignResponse.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCSignResponseCancelledImpl);
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
  const factory _VCSignResponseCancelled() = _$VCSignResponseCancelledImpl;
}

/// @nodoc
mixin _$VCHistoryItem {
  Object get request => throw _privateConstructorUsedError;
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
abstract class _$$VCHistoryItemTxImplCopyWith<$Res> {
  factory _$$VCHistoryItemTxImplCopyWith(_$VCHistoryItemTxImpl value,
          $Res Function(_$VCHistoryItemTxImpl) then) =
      __$$VCHistoryItemTxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VCTxRequest request, VCTxResponse response, DateTime timestamp});

  $VCTxRequestCopyWith<$Res> get request;
  $VCTxResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$VCHistoryItemTxImplCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$VCHistoryItemTxImpl>
    implements _$$VCHistoryItemTxImplCopyWith<$Res> {
  __$$VCHistoryItemTxImplCopyWithImpl(
      _$VCHistoryItemTxImpl _value, $Res Function(_$VCHistoryItemTxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? response = null,
    Object? timestamp = null,
  }) {
    return _then(_$VCHistoryItemTxImpl(
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

class _$VCHistoryItemTxImpl extends _VCHistoryItemTx {
  const _$VCHistoryItemTxImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCHistoryItemTxImpl &&
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
  _$$VCHistoryItemTxImplCopyWith<_$VCHistoryItemTxImpl> get copyWith =>
      __$$VCHistoryItemTxImplCopyWithImpl<_$VCHistoryItemTxImpl>(
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
      required final DateTime timestamp}) = _$VCHistoryItemTxImpl;
  const _VCHistoryItemTx._() : super._();

  @override
  VCTxRequest get request;
  VCTxResponse get response;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$$VCHistoryItemTxImplCopyWith<_$VCHistoryItemTxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCHistoryItemSignImplCopyWith<$Res> {
  factory _$$VCHistoryItemSignImplCopyWith(_$VCHistoryItemSignImpl value,
          $Res Function(_$VCHistoryItemSignImpl) then) =
      __$$VCHistoryItemSignImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {VCSignRequest request, VCSignResponse response, DateTime timestamp});

  $VCSignRequestCopyWith<$Res> get request;
  $VCSignResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$VCHistoryItemSignImplCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$VCHistoryItemSignImpl>
    implements _$$VCHistoryItemSignImplCopyWith<$Res> {
  __$$VCHistoryItemSignImplCopyWithImpl(_$VCHistoryItemSignImpl _value,
      $Res Function(_$VCHistoryItemSignImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? response = null,
    Object? timestamp = null,
  }) {
    return _then(_$VCHistoryItemSignImpl(
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

class _$VCHistoryItemSignImpl extends _VCHistoryItemSign {
  const _$VCHistoryItemSignImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCHistoryItemSignImpl &&
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
  _$$VCHistoryItemSignImplCopyWith<_$VCHistoryItemSignImpl> get copyWith =>
      __$$VCHistoryItemSignImplCopyWithImpl<_$VCHistoryItemSignImpl>(
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
      required final DateTime timestamp}) = _$VCHistoryItemSignImpl;
  const _VCHistoryItemSign._() : super._();

  @override
  VCSignRequest get request;
  VCSignResponse get response;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$$VCHistoryItemSignImplCopyWith<_$VCHistoryItemSignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCHistoryItemInvalidImplCopyWith<$Res> {
  factory _$$VCHistoryItemInvalidImplCopyWith(_$VCHistoryItemInvalidImpl value,
          $Res Function(_$VCHistoryItemInvalidImpl) then) =
      __$$VCHistoryItemInvalidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JsonRpcRequest request, Object error, DateTime timestamp});

  $JsonRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$VCHistoryItemInvalidImplCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$VCHistoryItemInvalidImpl>
    implements _$$VCHistoryItemInvalidImplCopyWith<$Res> {
  __$$VCHistoryItemInvalidImplCopyWithImpl(_$VCHistoryItemInvalidImpl _value,
      $Res Function(_$VCHistoryItemInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? error = null,
    Object? timestamp = null,
  }) {
    return _then(_$VCHistoryItemInvalidImpl(
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

class _$VCHistoryItemInvalidImpl extends _VCHistoryItemInvalid {
  const _$VCHistoryItemInvalidImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCHistoryItemInvalidImpl &&
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
  _$$VCHistoryItemInvalidImplCopyWith<_$VCHistoryItemInvalidImpl>
      get copyWith =>
          __$$VCHistoryItemInvalidImplCopyWithImpl<_$VCHistoryItemInvalidImpl>(
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
      required final DateTime timestamp}) = _$VCHistoryItemInvalidImpl;
  const _VCHistoryItemInvalid._() : super._();

  @override
  JsonRpcRequest get request;
  Object get error;
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$$VCHistoryItemInvalidImplCopyWith<_$VCHistoryItemInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VCHistoryItemCurrentImplCopyWith<$Res> {
  factory _$$VCHistoryItemCurrentImplCopyWith(_$VCHistoryItemCurrentImpl value,
          $Res Function(_$VCHistoryItemCurrentImpl) then) =
      __$$VCHistoryItemCurrentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VCRequest request});

  $VCRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$VCHistoryItemCurrentImplCopyWithImpl<$Res>
    extends _$VCHistoryItemCopyWithImpl<$Res, _$VCHistoryItemCurrentImpl>
    implements _$$VCHistoryItemCurrentImplCopyWith<$Res> {
  __$$VCHistoryItemCurrentImplCopyWithImpl(_$VCHistoryItemCurrentImpl _value,
      $Res Function(_$VCHistoryItemCurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$VCHistoryItemCurrentImpl(
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

class _$VCHistoryItemCurrentImpl extends _VCHistoryItemCurrent {
  const _$VCHistoryItemCurrentImpl({required this.request}) : super._();

  @override
  final VCRequest request;

  @override
  String toString() {
    return 'VCHistoryItem.current(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCHistoryItemCurrentImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCHistoryItemCurrentImplCopyWith<_$VCHistoryItemCurrentImpl>
      get copyWith =>
          __$$VCHistoryItemCurrentImplCopyWithImpl<_$VCHistoryItemCurrentImpl>(
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
      _$VCHistoryItemCurrentImpl;
  const _VCHistoryItemCurrent._() : super._();

  @override
  VCRequest get request;
  @JsonKey(ignore: true)
  _$$VCHistoryItemCurrentImplCopyWith<_$VCHistoryItemCurrentImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$VCErrorImplCopyWith<$Res> implements $VCErrorCopyWith<$Res> {
  factory _$$VCErrorImplCopyWith(
          _$VCErrorImpl value, $Res Function(_$VCErrorImpl) then) =
      __$$VCErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? message});
}

/// @nodoc
class __$$VCErrorImplCopyWithImpl<$Res>
    extends _$VCErrorCopyWithImpl<$Res, _$VCErrorImpl>
    implements _$$VCErrorImplCopyWith<$Res> {
  __$$VCErrorImplCopyWithImpl(
      _$VCErrorImpl _value, $Res Function(_$VCErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_$VCErrorImpl(
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
class _$VCErrorImpl implements _VCError {
  const _$VCErrorImpl({required this.code, this.message});

  factory _$VCErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VCErrorImplFromJson(json);

  @override
  final int code;
  @override
  final String? message;

  @override
  String toString() {
    return 'VCError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCErrorImplCopyWith<_$VCErrorImpl> get copyWith =>
      __$$VCErrorImplCopyWithImpl<_$VCErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VCErrorImplToJson(
      this,
    );
  }
}

abstract class _VCError implements VCError {
  const factory _VCError({required final int code, final String? message}) =
      _$VCErrorImpl;

  factory _VCError.fromJson(Map<String, dynamic> json) = _$VCErrorImpl.fromJson;

  @override
  int get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$VCErrorImplCopyWith<_$VCErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
