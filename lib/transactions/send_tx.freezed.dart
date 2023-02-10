// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)?
        createContract,
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
    TResult? Function(_SendTxSendTransfer value)? sendTransfer,
    TResult? Function(_SendTxCallContract value)? callContract,
    TResult? Function(_SendTxCreateContract value)? createContract,
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
      _$SendTxCopyWithImpl<$Res, SendTx>;
  @useResult
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  $RawTransactionCopyWith<$Res> get rawTx;
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class _$SendTxCopyWithImpl<$Res, $Val extends SendTx>
    implements $SendTxCopyWith<$Res> {
  _$SendTxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawTx = null,
    Object? tokenInfo = null,
  }) {
    return _then(_value.copyWith(
      rawTx: null == rawTx
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: null == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RawTransactionCopyWith<$Res> get rawTx {
    return $RawTransactionCopyWith<$Res>(_value.rawTx, (value) {
      return _then(_value.copyWith(rawTx: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get tokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.tokenInfo, (value) {
      return _then(_value.copyWith(tokenInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SendTxSendTransferCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$$_SendTxSendTransferCopyWith(_$_SendTxSendTransfer value,
          $Res Function(_$_SendTxSendTransfer) then) =
      __$$_SendTxSendTransferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$_SendTxSendTransferCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$_SendTxSendTransfer>
    implements _$$_SendTxSendTransferCopyWith<$Res> {
  __$$_SendTxSendTransferCopyWithImpl(
      _$_SendTxSendTransfer _value, $Res Function(_$_SendTxSendTransfer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawTx = null,
    Object? tokenInfo = null,
  }) {
    return _then(_$_SendTxSendTransfer(
      rawTx: null == rawTx
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: null == tokenInfo
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
            other is _$_SendTxSendTransfer &&
            (identical(other.rawTx, rawTx) || other.rawTx == rawTx) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawTx, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendTxSendTransferCopyWith<_$_SendTxSendTransfer> get copyWith =>
      __$$_SendTxSendTransferCopyWithImpl<_$_SendTxSendTransfer>(
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
    return sendTransfer(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)?
        createContract,
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
    TResult? Function(_SendTxSendTransfer value)? sendTransfer,
    TResult? Function(_SendTxCallContract value)? callContract,
    TResult? Function(_SendTxCreateContract value)? createContract,
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
      {required final RawTransaction rawTx,
      required final TokenInfo tokenInfo}) = _$_SendTxSendTransfer;
  const _SendTxSendTransfer._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$_SendTxSendTransferCopyWith<_$_SendTxSendTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendTxCallContractCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$$_SendTxCallContractCopyWith(_$_SendTxCallContract value,
          $Res Function(_$_SendTxCallContract) then) =
      __$$_SendTxCallContractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$_SendTxCallContractCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$_SendTxCallContract>
    implements _$$_SendTxCallContractCopyWith<$Res> {
  __$$_SendTxCallContractCopyWithImpl(
      _$_SendTxCallContract _value, $Res Function(_$_SendTxCallContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawTx = null,
    Object? tokenInfo = null,
  }) {
    return _then(_$_SendTxCallContract(
      rawTx: null == rawTx
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: null == tokenInfo
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
            other is _$_SendTxCallContract &&
            (identical(other.rawTx, rawTx) || other.rawTx == rawTx) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawTx, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendTxCallContractCopyWith<_$_SendTxCallContract> get copyWith =>
      __$$_SendTxCallContractCopyWithImpl<_$_SendTxCallContract>(
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
    return callContract(rawTx, tokenInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)?
        createContract,
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
    TResult? Function(_SendTxSendTransfer value)? sendTransfer,
    TResult? Function(_SendTxCallContract value)? callContract,
    TResult? Function(_SendTxCreateContract value)? createContract,
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
      {required final RawTransaction rawTx,
      required final TokenInfo tokenInfo}) = _$_SendTxCallContract;
  const _SendTxCallContract._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$_SendTxCallContractCopyWith<_$_SendTxCallContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendTxCreateContractCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$$_SendTxCreateContractCopyWith(_$_SendTxCreateContract value,
          $Res Function(_$_SendTxCreateContract) then) =
      __$$_SendTxCreateContractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$_SendTxCreateContractCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$_SendTxCreateContract>
    implements _$$_SendTxCreateContractCopyWith<$Res> {
  __$$_SendTxCreateContractCopyWithImpl(_$_SendTxCreateContract _value,
      $Res Function(_$_SendTxCreateContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawTx = null,
    Object? tokenInfo = null,
  }) {
    return _then(_$_SendTxCreateContract(
      rawTx: null == rawTx
          ? _value.rawTx
          : rawTx // ignore: cast_nullable_to_non_nullable
              as RawTransaction,
      tokenInfo: null == tokenInfo
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
            other is _$_SendTxCreateContract &&
            (identical(other.rawTx, rawTx) || other.rawTx == rawTx) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawTx, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendTxCreateContractCopyWith<_$_SendTxCreateContract> get copyWith =>
      __$$_SendTxCreateContractCopyWithImpl<_$_SendTxCreateContract>(
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
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? sendTransfer,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)? callContract,
    TResult? Function(RawTransaction rawTx, TokenInfo tokenInfo)?
        createContract,
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
    TResult? Function(_SendTxSendTransfer value)? sendTransfer,
    TResult? Function(_SendTxCallContract value)? callContract,
    TResult? Function(_SendTxCreateContract value)? createContract,
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
      {required final RawTransaction rawTx,
      required final TokenInfo tokenInfo}) = _$_SendTxCreateContract;
  const _SendTxCreateContract._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$_SendTxCreateContractCopyWith<_$_SendTxCreateContract> get copyWith =>
      throw _privateConstructorUsedError;
}
