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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$SendTxSendTransferImplCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$$SendTxSendTransferImplCopyWith(_$SendTxSendTransferImpl value,
          $Res Function(_$SendTxSendTransferImpl) then) =
      __$$SendTxSendTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$SendTxSendTransferImplCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$SendTxSendTransferImpl>
    implements _$$SendTxSendTransferImplCopyWith<$Res> {
  __$$SendTxSendTransferImplCopyWithImpl(_$SendTxSendTransferImpl _value,
      $Res Function(_$SendTxSendTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawTx = null,
    Object? tokenInfo = null,
  }) {
    return _then(_$SendTxSendTransferImpl(
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

class _$SendTxSendTransferImpl extends _SendTxSendTransfer {
  const _$SendTxSendTransferImpl({required this.rawTx, required this.tokenInfo})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTxSendTransferImpl &&
            (identical(other.rawTx, rawTx) || other.rawTx == rawTx) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawTx, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTxSendTransferImplCopyWith<_$SendTxSendTransferImpl> get copyWith =>
      __$$SendTxSendTransferImplCopyWithImpl<_$SendTxSendTransferImpl>(
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
      required final TokenInfo tokenInfo}) = _$SendTxSendTransferImpl;
  const _SendTxSendTransfer._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$SendTxSendTransferImplCopyWith<_$SendTxSendTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTxCallContractImplCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$$SendTxCallContractImplCopyWith(_$SendTxCallContractImpl value,
          $Res Function(_$SendTxCallContractImpl) then) =
      __$$SendTxCallContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$SendTxCallContractImplCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$SendTxCallContractImpl>
    implements _$$SendTxCallContractImplCopyWith<$Res> {
  __$$SendTxCallContractImplCopyWithImpl(_$SendTxCallContractImpl _value,
      $Res Function(_$SendTxCallContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawTx = null,
    Object? tokenInfo = null,
  }) {
    return _then(_$SendTxCallContractImpl(
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

class _$SendTxCallContractImpl extends _SendTxCallContract {
  const _$SendTxCallContractImpl({required this.rawTx, required this.tokenInfo})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTxCallContractImpl &&
            (identical(other.rawTx, rawTx) || other.rawTx == rawTx) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawTx, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTxCallContractImplCopyWith<_$SendTxCallContractImpl> get copyWith =>
      __$$SendTxCallContractImplCopyWithImpl<_$SendTxCallContractImpl>(
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
      required final TokenInfo tokenInfo}) = _$SendTxCallContractImpl;
  const _SendTxCallContract._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$SendTxCallContractImplCopyWith<_$SendTxCallContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTxCreateContractImplCopyWith<$Res>
    implements $SendTxCopyWith<$Res> {
  factory _$$SendTxCreateContractImplCopyWith(_$SendTxCreateContractImpl value,
          $Res Function(_$SendTxCreateContractImpl) then) =
      __$$SendTxCreateContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RawTransaction rawTx, TokenInfo tokenInfo});

  @override
  $RawTransactionCopyWith<$Res> get rawTx;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$SendTxCreateContractImplCopyWithImpl<$Res>
    extends _$SendTxCopyWithImpl<$Res, _$SendTxCreateContractImpl>
    implements _$$SendTxCreateContractImplCopyWith<$Res> {
  __$$SendTxCreateContractImplCopyWithImpl(_$SendTxCreateContractImpl _value,
      $Res Function(_$SendTxCreateContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawTx = null,
    Object? tokenInfo = null,
  }) {
    return _then(_$SendTxCreateContractImpl(
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

class _$SendTxCreateContractImpl extends _SendTxCreateContract {
  const _$SendTxCreateContractImpl(
      {required this.rawTx, required this.tokenInfo})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTxCreateContractImpl &&
            (identical(other.rawTx, rawTx) || other.rawTx == rawTx) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawTx, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTxCreateContractImplCopyWith<_$SendTxCreateContractImpl>
      get copyWith =>
          __$$SendTxCreateContractImplCopyWithImpl<_$SendTxCreateContractImpl>(
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
      required final TokenInfo tokenInfo}) = _$SendTxCreateContractImpl;
  const _SendTxCreateContract._() : super._();

  @override
  RawTransaction get rawTx;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$SendTxCreateContractImplCopyWith<_$SendTxCreateContractImpl>
      get copyWith => throw _privateConstructorUsedError;
}
