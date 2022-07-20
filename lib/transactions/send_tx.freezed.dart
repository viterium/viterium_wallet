// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendTxTearOff {
  const _$SendTxTearOff();

  _SendTxSendTransfer sendTransfer(
      {required RawTransaction rawTx, required TokenInfo tokenInfo}) {
    return _SendTxSendTransfer(
      rawTx: rawTx,
      tokenInfo: tokenInfo,
    );
  }

  _SendTxCallContract callContract(
      {required RawTransaction rawTx, required TokenInfo tokenInfo}) {
    return _SendTxCallContract(
      rawTx: rawTx,
      tokenInfo: tokenInfo,
    );
  }

  _SendTxCreateContract createContract(
      {required RawTransaction rawTx, required TokenInfo tokenInfo}) {
    return _SendTxCreateContract(
      rawTx: rawTx,
      tokenInfo: tokenInfo,
    );
  }
}

/// @nodoc
const $SendTx = _$SendTxTearOff();

/// @nodoc
mixin _$SendTx {
  RawTransaction get rawTx => throw _privateConstructorUsedError;
  TokenInfo get tokenInfo => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        sendTransfer,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        callContract,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        createContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendTxSendTransfer value) sendTransfer,
    required TResult Function(_SendTxCallContract value) callContract,
    required TResult Function(_SendTxCreateContract value) createContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendTxCopyWith<SendTx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTxCopyWith<$Res> {
  factory $SendTxCopyWith(SendTx value, $Res Function(SendTx) then) =
      _$SendTxCopyWithImpl<$Res>;
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  $RawTransactionCopyWith<$Res> get rawTx;
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class _$SendTxCopyWithImpl<$Res> implements $SendTxCopyWith<$Res> {
  _$SendTxCopyWithImpl(this._value, this._then);

  final SendTx _value;
  // ignore: unused_field
  final $Res Function(SendTx) _then;

  @override
  $Res call({
    Object? rawTx = freezed,
    Object? tokenInfo = freezed,
  }) {
    return _then(_value.copyWith(
      rawTx: rawTx == freezed
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: tokenInfo == freezed
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }

  @override
  $RawTransactionCopyWith<$Res> get rawTx {
    return $RawTransactionCopyWith<$Res>(_value.rawTx, (value) {
      return _then(_value.copyWith(rawTx: value));
    });
  }

  @override
  $TokenInfoCopyWith<$Res> get tokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.tokenInfo, (value) {
      return _then(_value.copyWith(tokenInfo: value));
    });
  }
}

/// @nodoc
abstract class _$SendTxSendTransferCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$SendTxSendTransferCopyWith(
          _SendTxSendTransfer value, $Res Function(_SendTxSendTransfer) then) =
      __$SendTxSendTransferCopyWithImpl<$Res>;
  @override
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$SendTxSendTransferCopyWithImpl<$Res> extends _$SendTxCopyWithImpl<$Res>
    implements _$SendTxSendTransferCopyWith<$Res> {
  __$SendTxSendTransferCopyWithImpl(
      _SendTxSendTransfer _value, $Res Function(_SendTxSendTransfer) _then)
      : super(_value, (v) => _then(v as _SendTxSendTransfer));

  @override
  _SendTxSendTransfer get _value => super._value as _SendTxSendTransfer;

  @override
  $Res call({
    Object? rawTx = freezed,
    Object? tokenInfo = freezed,
  }) {
    return _then(_SendTxSendTransfer(
      rawTx: rawTx == freezed
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: tokenInfo == freezed
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }
}

/// @nodoc

class _$_SendTxSendTransfer extends _SendTxSendTransfer {
  const _$_SendTxSendTransfer({required this.rawTx, required this.tokenInfo})
      : super._();

  @override
  final RawTransaction rawTx;
  @override
  final TokenInfo tokenInfo;

  @override
  String toString() {
    return 'SendTx.sendTransfer(rawTx: $rawTx, tokenInfo: $tokenInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendTxSendTransfer &&
            const DeepCollectionEquality().equals(other.rawTx, rawTx) &&
            const DeepCollectionEquality().equals(other.tokenInfo, tokenInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rawTx),
      const DeepCollectionEquality().hash(tokenInfo));

  @JsonKey(ignore: true)
  @override
  _$SendTxSendTransferCopyWith<_SendTxSendTransfer> get copyWith =>
      __$SendTxSendTransferCopyWithImpl<_SendTxSendTransfer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        sendTransfer,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        callContract,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        createContract,
  }) {
    return sendTransfer(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
  }) {
    return sendTransfer?.call(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
    required TResult orElse(),
  }) {
    if (sendTransfer != null) {
      return sendTransfer(rawTx, tokenInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendTxSendTransfer value) sendTransfer,
    required TResult Function(_SendTxCallContract value) callContract,
    required TResult Function(_SendTxCreateContract value) createContract,
  }) {
    return sendTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
  }) {
    return sendTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
    required TResult orElse(),
  }) {
    if (sendTransfer != null) {
      return sendTransfer(this);
    }
    return orElse();
  }
}

abstract class _SendTxSendTransfer extends SendTx {
  const factory _SendTxSendTransfer(
      {required RawTransaction rawTx,
      required TokenInfo tokenInfo}) = _$_SendTxSendTransfer;
  const _SendTxSendTransfer._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$SendTxSendTransferCopyWith<_SendTxSendTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendTxCallContractCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$SendTxCallContractCopyWith(
          _SendTxCallContract value, $Res Function(_SendTxCallContract) then) =
      __$SendTxCallContractCopyWithImpl<$Res>;
  @override
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$SendTxCallContractCopyWithImpl<$Res> extends _$SendTxCopyWithImpl<$Res>
    implements _$SendTxCallContractCopyWith<$Res> {
  __$SendTxCallContractCopyWithImpl(
      _SendTxCallContract _value, $Res Function(_SendTxCallContract) _then)
      : super(_value, (v) => _then(v as _SendTxCallContract));

  @override
  _SendTxCallContract get _value => super._value as _SendTxCallContract;

  @override
  $Res call({
    Object? rawTx = freezed,
    Object? tokenInfo = freezed,
  }) {
    return _then(_SendTxCallContract(
      rawTx: rawTx == freezed
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: tokenInfo == freezed
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }
}

/// @nodoc

class _$_SendTxCallContract extends _SendTxCallContract {
  const _$_SendTxCallContract({required this.rawTx, required this.tokenInfo})
      : super._();

  @override
  final RawTransaction rawTx;
  @override
  final TokenInfo tokenInfo;

  @override
  String toString() {
    return 'SendTx.callContract(rawTx: $rawTx, tokenInfo: $tokenInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendTxCallContract &&
            const DeepCollectionEquality().equals(other.rawTx, rawTx) &&
            const DeepCollectionEquality().equals(other.tokenInfo, tokenInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rawTx),
      const DeepCollectionEquality().hash(tokenInfo));

  @JsonKey(ignore: true)
  @override
  _$SendTxCallContractCopyWith<_SendTxCallContract> get copyWith =>
      __$SendTxCallContractCopyWithImpl<_SendTxCallContract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        sendTransfer,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        callContract,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        createContract,
  }) {
    return callContract(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
  }) {
    return callContract?.call(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
    required TResult orElse(),
  }) {
    if (callContract != null) {
      return callContract(rawTx, tokenInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendTxSendTransfer value) sendTransfer,
    required TResult Function(_SendTxCallContract value) callContract,
    required TResult Function(_SendTxCreateContract value) createContract,
  }) {
    return callContract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
  }) {
    return callContract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
    required TResult orElse(),
  }) {
    if (callContract != null) {
      return callContract(this);
    }
    return orElse();
  }
}

abstract class _SendTxCallContract extends SendTx {
  const factory _SendTxCallContract(
      {required RawTransaction rawTx,
      required TokenInfo tokenInfo}) = _$_SendTxCallContract;
  const _SendTxCallContract._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$SendTxCallContractCopyWith<_SendTxCallContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendTxCreateContractCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$SendTxCreateContractCopyWith(_SendTxCreateContract value,
          $Res Function(_SendTxCreateContract) then) =
      __$SendTxCreateContractCopyWithImpl<$Res>;
  @override
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$SendTxCreateContractCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res>
    implements _$SendTxCreateContractCopyWith<$Res> {
  __$SendTxCreateContractCopyWithImpl(
      _SendTxCreateContract _value, $Res Function(_SendTxCreateContract) _then)
      : super(_value, (v) => _then(v as _SendTxCreateContract));

  @override
  _SendTxCreateContract get _value => super._value as _SendTxCreateContract;

  @override
  $Res call({
    Object? rawTx = freezed,
    Object? tokenInfo = freezed,
  }) {
    return _then(_SendTxCreateContract(
      rawTx: rawTx == freezed
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: tokenInfo == freezed
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }
}

/// @nodoc

class _$_SendTxCreateContract extends _SendTxCreateContract {
  const _$_SendTxCreateContract({required this.rawTx, required this.tokenInfo})
      : super._();

  @override
  final RawTransaction rawTx;
  @override
  final TokenInfo tokenInfo;

  @override
  String toString() {
    return 'SendTx.createContract(rawTx: $rawTx, tokenInfo: $tokenInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendTxCreateContract &&
            const DeepCollectionEquality().equals(other.rawTx, rawTx) &&
            const DeepCollectionEquality().equals(other.tokenInfo, tokenInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rawTx),
      const DeepCollectionEquality().hash(tokenInfo));

  @JsonKey(ignore: true)
  @override
  _$SendTxCreateContractCopyWith<_SendTxCreateContract> get copyWith =>
      __$SendTxCreateContractCopyWithImpl<_SendTxCreateContract>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        sendTransfer,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        callContract,
    required TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)
        createContract,
  }) {
    return createContract(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
  }) {
    return createContract?.call(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult Function(RawTransaction rawTx, TokenInfo tokenInfo)? createContract,
    required TResult orElse(),
  }) {
    if (createContract != null) {
      return createContract(rawTx, tokenInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendTxSendTransfer value) sendTransfer,
    required TResult Function(_SendTxCallContract value) callContract,
    required TResult Function(_SendTxCreateContract value) createContract,
  }) {
    return createContract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
  }) {
    return createContract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendTxSendTransfer value)? sendTransfer,
    TResult Function(_SendTxCallContract value)? callContract,
    TResult Function(_SendTxCreateContract value)? createContract,
    required TResult orElse(),
  }) {
    if (createContract != null) {
      return createContract(this);
    }
    return orElse();
  }
}

abstract class _SendTxCreateContract extends SendTx {
  const factory _SendTxCreateContract(
      {required RawTransaction rawTx,
      required TokenInfo tokenInfo}) = _$_SendTxCreateContract;
  const _SendTxCreateContract._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$SendTxCreateContractCopyWith<_SendTxCreateContract> get copyWith =>
      throw _privateConstructorUsedError;
}
