// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TxState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxStateCopyWith<$Res> {
  factory $TxStateCopyWith(TxState value, $Res Function(TxState) then) =
      _$TxStateCopyWithImpl<$Res, TxState>;
}

/// @nodoc
class _$TxStateCopyWithImpl<$Res, $Val extends TxState>
    implements $TxStateCopyWith<$Res> {
  _$TxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TxStateUnknownCopyWith<$Res> {
  factory _$$_TxStateUnknownCopyWith(
          _$_TxStateUnknown value, $Res Function(_$_TxStateUnknown) then) =
      __$$_TxStateUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TxStateUnknownCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateUnknown>
    implements _$$_TxStateUnknownCopyWith<$Res> {
  __$$_TxStateUnknownCopyWithImpl(
      _$_TxStateUnknown _value, $Res Function(_$_TxStateUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TxStateUnknown implements _TxStateUnknown {
  const _$_TxStateUnknown();

  @override
  String toString() {
    return 'TxState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TxStateUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _TxStateUnknown implements TxState {
  const factory _TxStateUnknown() = _$_TxStateUnknown;
}

/// @nodoc
abstract class _$$_TxStateUnconfirmedCopyWith<$Res> {
  factory _$$_TxStateUnconfirmedCopyWith(_$_TxStateUnconfirmed value,
          $Res Function(_$_TxStateUnconfirmed) then) =
      __$$_TxStateUnconfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TxStateUnconfirmedCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateUnconfirmed>
    implements _$$_TxStateUnconfirmedCopyWith<$Res> {
  __$$_TxStateUnconfirmedCopyWithImpl(
      _$_TxStateUnconfirmed _value, $Res Function(_$_TxStateUnconfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TxStateUnconfirmed implements _TxStateUnconfirmed {
  const _$_TxStateUnconfirmed();

  @override
  String toString() {
    return 'TxState.unconfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TxStateUnconfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return unconfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return unconfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (unconfirmed != null) {
      return unconfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return unconfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return unconfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (unconfirmed != null) {
      return unconfirmed(this);
    }
    return orElse();
  }
}

abstract class _TxStateUnconfirmed implements TxState {
  const factory _TxStateUnconfirmed() = _$_TxStateUnconfirmed;
}

/// @nodoc
abstract class _$$_TxStateConfirmingCopyWith<$Res> {
  factory _$$_TxStateConfirmingCopyWith(_$_TxStateConfirming value,
          $Res Function(_$_TxStateConfirming) then) =
      __$$_TxStateConfirmingCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt confirmations});
}

/// @nodoc
class __$$_TxStateConfirmingCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateConfirming>
    implements _$$_TxStateConfirmingCopyWith<$Res> {
  __$$_TxStateConfirmingCopyWithImpl(
      _$_TxStateConfirming _value, $Res Function(_$_TxStateConfirming) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmations = null,
  }) {
    return _then(_$_TxStateConfirming(
      null == confirmations
          ? _value.confirmations
          : confirmations // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_TxStateConfirming implements _TxStateConfirming {
  const _$_TxStateConfirming(this.confirmations);

  @override
  final BigInt confirmations;

  @override
  String toString() {
    return 'TxState.confirming(confirmations: $confirmations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxStateConfirming &&
            (identical(other.confirmations, confirmations) ||
                other.confirmations == confirmations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxStateConfirmingCopyWith<_$_TxStateConfirming> get copyWith =>
      __$$_TxStateConfirmingCopyWithImpl<_$_TxStateConfirming>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return confirming(confirmations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return confirming?.call(confirmations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (confirming != null) {
      return confirming(confirmations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return confirming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return confirming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (confirming != null) {
      return confirming(this);
    }
    return orElse();
  }
}

abstract class _TxStateConfirming implements TxState {
  const factory _TxStateConfirming(final BigInt confirmations) =
      _$_TxStateConfirming;

  BigInt get confirmations;
  @JsonKey(ignore: true)
  _$$_TxStateConfirmingCopyWith<_$_TxStateConfirming> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TxStateConfirmedCopyWith<$Res> {
  factory _$$_TxStateConfirmedCopyWith(
          _$_TxStateConfirmed value, $Res Function(_$_TxStateConfirmed) then) =
      __$$_TxStateConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TxStateConfirmedCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res, _$_TxStateConfirmed>
    implements _$$_TxStateConfirmedCopyWith<$Res> {
  __$$_TxStateConfirmedCopyWithImpl(
      _$_TxStateConfirmed _value, $Res Function(_$_TxStateConfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TxStateConfirmed implements _TxStateConfirmed {
  const _$_TxStateConfirmed();

  @override
  String toString() {
    return 'TxState.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TxStateConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(BigInt confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? unconfirmed,
    TResult? Function(BigInt confirmations)? confirming,
    TResult? Function()? confirmed,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(BigInt confirmations)? confirming,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxStateUnknown value) unknown,
    required TResult Function(_TxStateUnconfirmed value) unconfirmed,
    required TResult Function(_TxStateConfirming value) confirming,
    required TResult Function(_TxStateConfirmed value) confirmed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxStateUnknown value)? unknown,
    TResult? Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult? Function(_TxStateConfirming value)? confirming,
    TResult? Function(_TxStateConfirmed value)? confirmed,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _TxStateConfirmed implements TxState {
  const factory _TxStateConfirmed() = _$_TxStateConfirmed;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @BlockTypeConverter()
  BlockType get blockType => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  Address get fromAddress => throw _privateConstructorUsedError;
  Address get toAddress => throw _privateConstructorUsedError;
  Hash get hash => throw _privateConstructorUsedError;
  BigInt get height => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  Token get tokenId => throw _privateConstructorUsedError;
  TokenInfo get tokenInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@BlockTypeConverter() BlockType blockType,
      Address address,
      Address fromAddress,
      Address toAddress,
      Hash hash,
      BigInt height,
      BigInt amount,
      Token tokenId,
      TokenInfo tokenInfo});

  $AddressCopyWith<$Res> get address;
  $AddressCopyWith<$Res> get fromAddress;
  $AddressCopyWith<$Res> get toAddress;
  $HashCopyWith<$Res> get hash;
  $TokenCopyWith<$Res> get tokenId;
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockType = null,
    Object? address = null,
    Object? fromAddress = null,
    Object? toAddress = null,
    Object? hash = null,
    Object? height = null,
    Object? amount = null,
    Object? tokenId = null,
    Object? tokenInfo = null,
  }) {
    return _then(_value.copyWith(
      blockType: null == blockType
          ? _value.blockType
          : blockType // ignore: cast_nullable_to_non_nullable
              as BlockType,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      fromAddress: null == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as Hash,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenInfo: null == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get fromAddress {
    return $AddressCopyWith<$Res>(_value.fromAddress, (value) {
      return _then(_value.copyWith(fromAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get toAddress {
    return $AddressCopyWith<$Res>(_value.toAddress, (value) {
      return _then(_value.copyWith(toAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HashCopyWith<$Res> get hash {
    return $HashCopyWith<$Res>(_value.hash, (value) {
      return _then(_value.copyWith(hash: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get tokenId {
    return $TokenCopyWith<$Res>(_value.tokenId, (value) {
      return _then(_value.copyWith(tokenId: value) as $Val);
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
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@BlockTypeConverter() BlockType blockType,
      Address address,
      Address fromAddress,
      Address toAddress,
      Hash hash,
      BigInt height,
      BigInt amount,
      Token tokenId,
      TokenInfo tokenInfo});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $AddressCopyWith<$Res> get fromAddress;
  @override
  $AddressCopyWith<$Res> get toAddress;
  @override
  $HashCopyWith<$Res> get hash;
  @override
  $TokenCopyWith<$Res> get tokenId;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockType = null,
    Object? address = null,
    Object? fromAddress = null,
    Object? toAddress = null,
    Object? hash = null,
    Object? height = null,
    Object? amount = null,
    Object? tokenId = null,
    Object? tokenInfo = null,
  }) {
    return _then(_$_Transaction(
      blockType: null == blockType
          ? _value.blockType
          : blockType // ignore: cast_nullable_to_non_nullable
              as BlockType,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      fromAddress: null == fromAddress
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      toAddress: null == toAddress
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as Hash,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenInfo: null == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {@BlockTypeConverter() required this.blockType,
      required this.address,
      required this.fromAddress,
      required this.toAddress,
      required this.hash,
      required this.height,
      required this.amount,
      required this.tokenId,
      required this.tokenInfo});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  @BlockTypeConverter()
  final BlockType blockType;
  @override
  final Address address;
  @override
  final Address fromAddress;
  @override
  final Address toAddress;
  @override
  final Hash hash;
  @override
  final BigInt height;
  @override
  final BigInt amount;
  @override
  final Token tokenId;
  @override
  final TokenInfo tokenInfo;

  @override
  String toString() {
    return 'Transaction(blockType: $blockType, address: $address, fromAddress: $fromAddress, toAddress: $toAddress, hash: $hash, height: $height, amount: $amount, tokenId: $tokenId, tokenInfo: $tokenInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.blockType, blockType) ||
                other.blockType == blockType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.fromAddress, fromAddress) ||
                other.fromAddress == fromAddress) &&
            (identical(other.toAddress, toAddress) ||
                other.toAddress == toAddress) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, blockType, address, fromAddress,
      toAddress, hash, height, amount, tokenId, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {@BlockTypeConverter() required final BlockType blockType,
      required final Address address,
      required final Address fromAddress,
      required final Address toAddress,
      required final Hash hash,
      required final BigInt height,
      required final BigInt amount,
      required final Token tokenId,
      required final TokenInfo tokenInfo}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  @BlockTypeConverter()
  BlockType get blockType;
  @override
  Address get address;
  @override
  Address get fromAddress;
  @override
  Address get toAddress;
  @override
  Hash get hash;
  @override
  BigInt get height;
  @override
  BigInt get amount;
  @override
  Token get tokenId;
  @override
  TokenInfo get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountHistory _$AccountHistoryFromJson(Map<String, dynamic> json) {
  return _AccountHistory.fromJson(json);
}

/// @nodoc
mixin _$AccountHistory {
  IMap<int, Transaction> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountHistoryCopyWith<AccountHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountHistoryCopyWith<$Res> {
  factory $AccountHistoryCopyWith(
          AccountHistory value, $Res Function(AccountHistory) then) =
      _$AccountHistoryCopyWithImpl<$Res, AccountHistory>;
  @useResult
  $Res call({IMap<int, Transaction> history});
}

/// @nodoc
class _$AccountHistoryCopyWithImpl<$Res, $Val extends AccountHistory>
    implements $AccountHistoryCopyWith<$Res> {
  _$AccountHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as IMap<int, Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountHistoryCopyWith<$Res>
    implements $AccountHistoryCopyWith<$Res> {
  factory _$$_AccountHistoryCopyWith(
          _$_AccountHistory value, $Res Function(_$_AccountHistory) then) =
      __$$_AccountHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IMap<int, Transaction> history});
}

/// @nodoc
class __$$_AccountHistoryCopyWithImpl<$Res>
    extends _$AccountHistoryCopyWithImpl<$Res, _$_AccountHistory>
    implements _$$_AccountHistoryCopyWith<$Res> {
  __$$_AccountHistoryCopyWithImpl(
      _$_AccountHistory _value, $Res Function(_$_AccountHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
  }) {
    return _then(_$_AccountHistory(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as IMap<int, Transaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountHistory implements _AccountHistory {
  const _$_AccountHistory({required this.history});

  factory _$_AccountHistory.fromJson(Map<String, dynamic> json) =>
      _$$_AccountHistoryFromJson(json);

  @override
  final IMap<int, Transaction> history;

  @override
  String toString() {
    return 'AccountHistory(history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountHistory &&
            (identical(other.history, history) || other.history == history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, history);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountHistoryCopyWith<_$_AccountHistory> get copyWith =>
      __$$_AccountHistoryCopyWithImpl<_$_AccountHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountHistoryToJson(
      this,
    );
  }
}

abstract class _AccountHistory implements AccountHistory {
  const factory _AccountHistory(
      {required final IMap<int, Transaction> history}) = _$_AccountHistory;

  factory _AccountHistory.fromJson(Map<String, dynamic> json) =
      _$_AccountHistory.fromJson;

  @override
  IMap<int, Transaction> get history;
  @override
  @JsonKey(ignore: true)
  _$$_AccountHistoryCopyWith<_$_AccountHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountTokenPair {
  Account get account => throw _privateConstructorUsedError;
  Token? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountTokenPairCopyWith<AccountTokenPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTokenPairCopyWith<$Res> {
  factory $AccountTokenPairCopyWith(
          AccountTokenPair value, $Res Function(AccountTokenPair) then) =
      _$AccountTokenPairCopyWithImpl<$Res, AccountTokenPair>;
  @useResult
  $Res call({Account account, Token? token});

  $AccountCopyWith<$Res> get account;
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class _$AccountTokenPairCopyWithImpl<$Res, $Val extends AccountTokenPair>
    implements $AccountTokenPairCopyWith<$Res> {
  _$AccountTokenPairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountTokenPairCopyWith<$Res>
    implements $AccountTokenPairCopyWith<$Res> {
  factory _$$_AccountTokenPairCopyWith(
          _$_AccountTokenPair value, $Res Function(_$_AccountTokenPair) then) =
      __$$_AccountTokenPairCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Account account, Token? token});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$$_AccountTokenPairCopyWithImpl<$Res>
    extends _$AccountTokenPairCopyWithImpl<$Res, _$_AccountTokenPair>
    implements _$$_AccountTokenPairCopyWith<$Res> {
  __$$_AccountTokenPairCopyWithImpl(
      _$_AccountTokenPair _value, $Res Function(_$_AccountTokenPair) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? token = freezed,
  }) {
    return _then(_$_AccountTokenPair(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ));
  }
}

/// @nodoc

class _$_AccountTokenPair implements _AccountTokenPair {
  const _$_AccountTokenPair({required this.account, this.token});

  @override
  final Account account;
  @override
  final Token? token;

  @override
  String toString() {
    return 'AccountTokenPair(account: $account, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountTokenPair &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountTokenPairCopyWith<_$_AccountTokenPair> get copyWith =>
      __$$_AccountTokenPairCopyWithImpl<_$_AccountTokenPair>(this, _$identity);
}

abstract class _AccountTokenPair implements AccountTokenPair {
  const factory _AccountTokenPair(
      {required final Account account,
      final Token? token}) = _$_AccountTokenPair;

  @override
  Account get account;
  @override
  Token? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AccountTokenPairCopyWith<_$_AccountTokenPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TxListItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountInfo unreceived) unreceived,
    required TResult Function(AccountBlock accountBlock) transaction,
    required TResult Function(bool hasMore) loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountInfo unreceived)? unreceived,
    TResult? Function(AccountBlock accountBlock)? transaction,
    TResult? Function(bool hasMore)? loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemUnreceived value) unreceived,
    required TResult Function(_TxListItemTransaction value) transaction,
    required TResult Function(_TxListItemLoader value) loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemUnreceived value)? unreceived,
    TResult? Function(_TxListItemTransaction value)? transaction,
    TResult? Function(_TxListItemLoader value)? loader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxListItemCopyWith<$Res> {
  factory $TxListItemCopyWith(
          TxListItem value, $Res Function(TxListItem) then) =
      _$TxListItemCopyWithImpl<$Res, TxListItem>;
}

/// @nodoc
class _$TxListItemCopyWithImpl<$Res, $Val extends TxListItem>
    implements $TxListItemCopyWith<$Res> {
  _$TxListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TxListItemUnreceivedCopyWith<$Res> {
  factory _$$_TxListItemUnreceivedCopyWith(_$_TxListItemUnreceived value,
          $Res Function(_$_TxListItemUnreceived) then) =
      __$$_TxListItemUnreceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountInfo unreceived});

  $AccountInfoCopyWith<$Res> get unreceived;
}

/// @nodoc
class __$$_TxListItemUnreceivedCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$_TxListItemUnreceived>
    implements _$$_TxListItemUnreceivedCopyWith<$Res> {
  __$$_TxListItemUnreceivedCopyWithImpl(_$_TxListItemUnreceived _value,
      $Res Function(_$_TxListItemUnreceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreceived = null,
  }) {
    return _then(_$_TxListItemUnreceived(
      null == unreceived
          ? _value.unreceived
          : unreceived // ignore: cast_nullable_to_non_nullable
              as AccountInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountInfoCopyWith<$Res> get unreceived {
    return $AccountInfoCopyWith<$Res>(_value.unreceived, (value) {
      return _then(_value.copyWith(unreceived: value));
    });
  }
}

/// @nodoc

class _$_TxListItemUnreceived extends _TxListItemUnreceived {
  _$_TxListItemUnreceived(this.unreceived) : super._();

  @override
  final AccountInfo unreceived;

  @override
  String toString() {
    return 'TxListItem.unreceived(unreceived: $unreceived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxListItemUnreceived &&
            (identical(other.unreceived, unreceived) ||
                other.unreceived == unreceived));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unreceived);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxListItemUnreceivedCopyWith<_$_TxListItemUnreceived> get copyWith =>
      __$$_TxListItemUnreceivedCopyWithImpl<_$_TxListItemUnreceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountInfo unreceived) unreceived,
    required TResult Function(AccountBlock accountBlock) transaction,
    required TResult Function(bool hasMore) loader,
  }) {
    return unreceived(this.unreceived);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountInfo unreceived)? unreceived,
    TResult? Function(AccountBlock accountBlock)? transaction,
    TResult? Function(bool hasMore)? loader,
  }) {
    return unreceived?.call(this.unreceived);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) {
    if (unreceived != null) {
      return unreceived(this.unreceived);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemUnreceived value) unreceived,
    required TResult Function(_TxListItemTransaction value) transaction,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return unreceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemUnreceived value)? unreceived,
    TResult? Function(_TxListItemTransaction value)? transaction,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return unreceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) {
    if (unreceived != null) {
      return unreceived(this);
    }
    return orElse();
  }
}

abstract class _TxListItemUnreceived extends TxListItem {
  factory _TxListItemUnreceived(final AccountInfo unreceived) =
      _$_TxListItemUnreceived;
  _TxListItemUnreceived._() : super._();

  AccountInfo get unreceived;
  @JsonKey(ignore: true)
  _$$_TxListItemUnreceivedCopyWith<_$_TxListItemUnreceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TxListItemTransactionCopyWith<$Res> {
  factory _$$_TxListItemTransactionCopyWith(_$_TxListItemTransaction value,
          $Res Function(_$_TxListItemTransaction) then) =
      __$$_TxListItemTransactionCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountBlock accountBlock});

  $AccountBlockCopyWith<$Res> get accountBlock;
}

/// @nodoc
class __$$_TxListItemTransactionCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$_TxListItemTransaction>
    implements _$$_TxListItemTransactionCopyWith<$Res> {
  __$$_TxListItemTransactionCopyWithImpl(_$_TxListItemTransaction _value,
      $Res Function(_$_TxListItemTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBlock = null,
  }) {
    return _then(_$_TxListItemTransaction(
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

class _$_TxListItemTransaction extends _TxListItemTransaction {
  _$_TxListItemTransaction(this.accountBlock) : super._();

  @override
  final AccountBlock accountBlock;

  @override
  String toString() {
    return 'TxListItem.transaction(accountBlock: $accountBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxListItemTransaction &&
            (identical(other.accountBlock, accountBlock) ||
                other.accountBlock == accountBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxListItemTransactionCopyWith<_$_TxListItemTransaction> get copyWith =>
      __$$_TxListItemTransactionCopyWithImpl<_$_TxListItemTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountInfo unreceived) unreceived,
    required TResult Function(AccountBlock accountBlock) transaction,
    required TResult Function(bool hasMore) loader,
  }) {
    return transaction(accountBlock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountInfo unreceived)? unreceived,
    TResult? Function(AccountBlock accountBlock)? transaction,
    TResult? Function(bool hasMore)? loader,
  }) {
    return transaction?.call(accountBlock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(accountBlock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemUnreceived value) unreceived,
    required TResult Function(_TxListItemTransaction value) transaction,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemUnreceived value)? unreceived,
    TResult? Function(_TxListItemTransaction value)? transaction,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return transaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }
}

abstract class _TxListItemTransaction extends TxListItem {
  factory _TxListItemTransaction(final AccountBlock accountBlock) =
      _$_TxListItemTransaction;
  _TxListItemTransaction._() : super._();

  AccountBlock get accountBlock;
  @JsonKey(ignore: true)
  _$$_TxListItemTransactionCopyWith<_$_TxListItemTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TxListItemLoaderCopyWith<$Res> {
  factory _$$_TxListItemLoaderCopyWith(
          _$_TxListItemLoader value, $Res Function(_$_TxListItemLoader) then) =
      __$$_TxListItemLoaderCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasMore});
}

/// @nodoc
class __$$_TxListItemLoaderCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res, _$_TxListItemLoader>
    implements _$$_TxListItemLoaderCopyWith<$Res> {
  __$$_TxListItemLoaderCopyWithImpl(
      _$_TxListItemLoader _value, $Res Function(_$_TxListItemLoader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasMore = null,
  }) {
    return _then(_$_TxListItemLoader(
      null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TxListItemLoader extends _TxListItemLoader {
  _$_TxListItemLoader(this.hasMore) : super._();

  @override
  final bool hasMore;

  @override
  String toString() {
    return 'TxListItem.loader(hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TxListItemLoader &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TxListItemLoaderCopyWith<_$_TxListItemLoader> get copyWith =>
      __$$_TxListItemLoaderCopyWithImpl<_$_TxListItemLoader>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountInfo unreceived) unreceived,
    required TResult Function(AccountBlock accountBlock) transaction,
    required TResult Function(bool hasMore) loader,
  }) {
    return loader(hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountInfo unreceived)? unreceived,
    TResult? Function(AccountBlock accountBlock)? transaction,
    TResult? Function(bool hasMore)? loader,
  }) {
    return loader?.call(hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TxListItemUnreceived value) unreceived,
    required TResult Function(_TxListItemTransaction value) transaction,
    required TResult Function(_TxListItemLoader value) loader,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TxListItemUnreceived value)? unreceived,
    TResult? Function(_TxListItemTransaction value)? transaction,
    TResult? Function(_TxListItemLoader value)? loader,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class _TxListItemLoader extends TxListItem {
  factory _TxListItemLoader(final bool hasMore) = _$_TxListItemLoader;
  _TxListItemLoader._() : super._();

  bool get hasMore;
  @JsonKey(ignore: true)
  _$$_TxListItemLoaderCopyWith<_$_TxListItemLoader> get copyWith =>
      throw _privateConstructorUsedError;
}
