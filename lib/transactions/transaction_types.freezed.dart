// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TxStateTearOff {
  const _$TxStateTearOff();

  _TxStateUnknown unknown() {
    return const _TxStateUnknown();
  }

  _TxStateUnconfirmed unconfirmed() {
    return const _TxStateUnconfirmed();
  }

  _TxStateConfirming confirming(int confirmations) {
    return _TxStateConfirming(
      confirmations,
    );
  }

  _TxStateConfirmed confirmed() {
    return const _TxStateConfirmed();
  }
}

/// @nodoc
const $TxState = _$TxStateTearOff();

/// @nodoc
mixin _$TxState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(int confirmations) confirming,
    required TResult Function() confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
    TResult Function()? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
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
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
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
      _$TxStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TxStateCopyWithImpl<$Res> implements $TxStateCopyWith<$Res> {
  _$TxStateCopyWithImpl(this._value, this._then);

  final TxState _value;
  // ignore: unused_field
  final $Res Function(TxState) _then;
}

/// @nodoc
abstract class _$TxStateUnknownCopyWith<$Res> {
  factory _$TxStateUnknownCopyWith(
          _TxStateUnknown value, $Res Function(_TxStateUnknown) then) =
      __$TxStateUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$TxStateUnknownCopyWithImpl<$Res> extends _$TxStateCopyWithImpl<$Res>
    implements _$TxStateUnknownCopyWith<$Res> {
  __$TxStateUnknownCopyWithImpl(
      _TxStateUnknown _value, $Res Function(_TxStateUnknown) _then)
      : super(_value, (v) => _then(v as _TxStateUnknown));

  @override
  _TxStateUnknown get _value => super._value as _TxStateUnknown;
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
        (other.runtimeType == runtimeType && other is _TxStateUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(int confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
    TResult Function()? confirmed,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
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
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
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
abstract class _$TxStateUnconfirmedCopyWith<$Res> {
  factory _$TxStateUnconfirmedCopyWith(
          _TxStateUnconfirmed value, $Res Function(_TxStateUnconfirmed) then) =
      __$TxStateUnconfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TxStateUnconfirmedCopyWithImpl<$Res>
    extends _$TxStateCopyWithImpl<$Res>
    implements _$TxStateUnconfirmedCopyWith<$Res> {
  __$TxStateUnconfirmedCopyWithImpl(
      _TxStateUnconfirmed _value, $Res Function(_TxStateUnconfirmed) _then)
      : super(_value, (v) => _then(v as _TxStateUnconfirmed));

  @override
  _TxStateUnconfirmed get _value => super._value as _TxStateUnconfirmed;
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
        (other.runtimeType == runtimeType && other is _TxStateUnconfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(int confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return unconfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
    TResult Function()? confirmed,
  }) {
    return unconfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
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
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
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
abstract class _$TxStateConfirmingCopyWith<$Res> {
  factory _$TxStateConfirmingCopyWith(
          _TxStateConfirming value, $Res Function(_TxStateConfirming) then) =
      __$TxStateConfirmingCopyWithImpl<$Res>;
  $Res call({int confirmations});
}

/// @nodoc
class __$TxStateConfirmingCopyWithImpl<$Res> extends _$TxStateCopyWithImpl<$Res>
    implements _$TxStateConfirmingCopyWith<$Res> {
  __$TxStateConfirmingCopyWithImpl(
      _TxStateConfirming _value, $Res Function(_TxStateConfirming) _then)
      : super(_value, (v) => _then(v as _TxStateConfirming));

  @override
  _TxStateConfirming get _value => super._value as _TxStateConfirming;

  @override
  $Res call({
    Object? confirmations = freezed,
  }) {
    return _then(_TxStateConfirming(
      confirmations == freezed
          ? _value.confirmations
          : confirmations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TxStateConfirming implements _TxStateConfirming {
  const _$_TxStateConfirming(this.confirmations);

  @override
  final int confirmations;

  @override
  String toString() {
    return 'TxState.confirming(confirmations: $confirmations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TxStateConfirming &&
            const DeepCollectionEquality()
                .equals(other.confirmations, confirmations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(confirmations));

  @JsonKey(ignore: true)
  @override
  _$TxStateConfirmingCopyWith<_TxStateConfirming> get copyWith =>
      __$TxStateConfirmingCopyWithImpl<_TxStateConfirming>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(int confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return confirming(confirmations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
    TResult Function()? confirmed,
  }) {
    return confirming?.call(confirmations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
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
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
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
  const factory _TxStateConfirming(int confirmations) = _$_TxStateConfirming;

  int get confirmations;
  @JsonKey(ignore: true)
  _$TxStateConfirmingCopyWith<_TxStateConfirming> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TxStateConfirmedCopyWith<$Res> {
  factory _$TxStateConfirmedCopyWith(
          _TxStateConfirmed value, $Res Function(_TxStateConfirmed) then) =
      __$TxStateConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TxStateConfirmedCopyWithImpl<$Res> extends _$TxStateCopyWithImpl<$Res>
    implements _$TxStateConfirmedCopyWith<$Res> {
  __$TxStateConfirmedCopyWithImpl(
      _TxStateConfirmed _value, $Res Function(_TxStateConfirmed) _then)
      : super(_value, (v) => _then(v as _TxStateConfirmed));

  @override
  _TxStateConfirmed get _value => super._value as _TxStateConfirmed;
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
        (other.runtimeType == runtimeType && other is _TxStateConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() unconfirmed,
    required TResult Function(int confirmations) confirming,
    required TResult Function() confirmed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
    TResult Function()? confirmed,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? unconfirmed,
    TResult Function(int confirmations)? confirming,
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
    TResult Function(_TxStateUnknown value)? unknown,
    TResult Function(_TxStateUnconfirmed value)? unconfirmed,
    TResult Function(_TxStateConfirming value)? confirming,
    TResult Function(_TxStateConfirmed value)? confirmed,
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
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {@BlockTypeConverter() required BlockType blockType,
      required Address address,
      required Address fromAddress,
      required Address toAddress,
      required Hash hash,
      required BigInt height,
      required BigInt amount,
      required Token tokenId,
      required TokenInfo tokenInfo}) {
    return _Transaction(
      blockType: blockType,
      address: address,
      fromAddress: fromAddress,
      toAddress: toAddress,
      hash: hash,
      height: height,
      amount: amount,
      tokenId: tokenId,
      tokenInfo: tokenInfo,
    );
  }

  Transaction fromJson(Map<String, Object?> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

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
      _$TransactionCopyWithImpl<$Res>;
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
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? blockType = freezed,
    Object? address = freezed,
    Object? fromAddress = freezed,
    Object? toAddress = freezed,
    Object? hash = freezed,
    Object? height = freezed,
    Object? amount = freezed,
    Object? tokenId = freezed,
    Object? tokenInfo = freezed,
  }) {
    return _then(_value.copyWith(
      blockType: blockType == freezed
          ? _value.blockType
          : blockType // ignore: cast_nullable_to_non_nullable
              as BlockType,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      fromAddress: fromAddress == freezed
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      toAddress: toAddress == freezed
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as Hash,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenInfo: tokenInfo == freezed
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get fromAddress {
    return $AddressCopyWith<$Res>(_value.fromAddress, (value) {
      return _then(_value.copyWith(fromAddress: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get toAddress {
    return $AddressCopyWith<$Res>(_value.toAddress, (value) {
      return _then(_value.copyWith(toAddress: value));
    });
  }

  @override
  $HashCopyWith<$Res> get hash {
    return $HashCopyWith<$Res>(_value.hash, (value) {
      return _then(_value.copyWith(hash: value));
    });
  }

  @override
  $TokenCopyWith<$Res> get tokenId {
    return $TokenCopyWith<$Res>(_value.tokenId, (value) {
      return _then(_value.copyWith(tokenId: value));
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
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
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
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? blockType = freezed,
    Object? address = freezed,
    Object? fromAddress = freezed,
    Object? toAddress = freezed,
    Object? hash = freezed,
    Object? height = freezed,
    Object? amount = freezed,
    Object? tokenId = freezed,
    Object? tokenInfo = freezed,
  }) {
    return _then(_Transaction(
      blockType: blockType == freezed
          ? _value.blockType
          : blockType // ignore: cast_nullable_to_non_nullable
              as BlockType,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      fromAddress: fromAddress == freezed
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      toAddress: toAddress == freezed
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as Hash,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenInfo: tokenInfo == freezed
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
            other is _Transaction &&
            const DeepCollectionEquality().equals(other.blockType, blockType) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.fromAddress, fromAddress) &&
            const DeepCollectionEquality().equals(other.toAddress, toAddress) &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.tokenId, tokenId) &&
            const DeepCollectionEquality().equals(other.tokenInfo, tokenInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(blockType),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(fromAddress),
      const DeepCollectionEquality().hash(toAddress),
      const DeepCollectionEquality().hash(hash),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(tokenId),
      const DeepCollectionEquality().hash(tokenInfo));

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {@BlockTypeConverter() required BlockType blockType,
      required Address address,
      required Address fromAddress,
      required Address toAddress,
      required Hash hash,
      required BigInt height,
      required BigInt amount,
      required Token tokenId,
      required TokenInfo tokenInfo}) = _$_Transaction;

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
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountHistory _$AccountHistoryFromJson(Map<String, dynamic> json) {
  return _AccountHistory.fromJson(json);
}

/// @nodoc
class _$AccountHistoryTearOff {
  const _$AccountHistoryTearOff();

  _AccountHistory call({required IMap<int, Transaction> history}) {
    return _AccountHistory(
      history: history,
    );
  }

  AccountHistory fromJson(Map<String, Object?> json) {
    return AccountHistory.fromJson(json);
  }
}

/// @nodoc
const $AccountHistory = _$AccountHistoryTearOff();

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
      _$AccountHistoryCopyWithImpl<$Res>;
  $Res call({IMap<int, Transaction> history});
}

/// @nodoc
class _$AccountHistoryCopyWithImpl<$Res>
    implements $AccountHistoryCopyWith<$Res> {
  _$AccountHistoryCopyWithImpl(this._value, this._then);

  final AccountHistory _value;
  // ignore: unused_field
  final $Res Function(AccountHistory) _then;

  @override
  $Res call({
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as IMap<int, Transaction>,
    ));
  }
}

/// @nodoc
abstract class _$AccountHistoryCopyWith<$Res>
    implements $AccountHistoryCopyWith<$Res> {
  factory _$AccountHistoryCopyWith(
          _AccountHistory value, $Res Function(_AccountHistory) then) =
      __$AccountHistoryCopyWithImpl<$Res>;
  @override
  $Res call({IMap<int, Transaction> history});
}

/// @nodoc
class __$AccountHistoryCopyWithImpl<$Res>
    extends _$AccountHistoryCopyWithImpl<$Res>
    implements _$AccountHistoryCopyWith<$Res> {
  __$AccountHistoryCopyWithImpl(
      _AccountHistory _value, $Res Function(_AccountHistory) _then)
      : super(_value, (v) => _then(v as _AccountHistory));

  @override
  _AccountHistory get _value => super._value as _AccountHistory;

  @override
  $Res call({
    Object? history = freezed,
  }) {
    return _then(_AccountHistory(
      history: history == freezed
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
            other is _AccountHistory &&
            const DeepCollectionEquality().equals(other.history, history));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(history));

  @JsonKey(ignore: true)
  @override
  _$AccountHistoryCopyWith<_AccountHistory> get copyWith =>
      __$AccountHistoryCopyWithImpl<_AccountHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountHistoryToJson(this);
  }
}

abstract class _AccountHistory implements AccountHistory {
  const factory _AccountHistory({required IMap<int, Transaction> history}) =
      _$_AccountHistory;

  factory _AccountHistory.fromJson(Map<String, dynamic> json) =
      _$_AccountHistory.fromJson;

  @override
  IMap<int, Transaction> get history;
  @override
  @JsonKey(ignore: true)
  _$AccountHistoryCopyWith<_AccountHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AccountTokenPairTearOff {
  const _$AccountTokenPairTearOff();

  _AccountTokenPair call({required Account account, Token? token}) {
    return _AccountTokenPair(
      account: account,
      token: token,
    );
  }
}

/// @nodoc
const $AccountTokenPair = _$AccountTokenPairTearOff();

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
      _$AccountTokenPairCopyWithImpl<$Res>;
  $Res call({Account account, Token? token});

  $AccountCopyWith<$Res> get account;
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class _$AccountTokenPairCopyWithImpl<$Res>
    implements $AccountTokenPairCopyWith<$Res> {
  _$AccountTokenPairCopyWithImpl(this._value, this._then);

  final AccountTokenPair _value;
  // ignore: unused_field
  final $Res Function(AccountTokenPair) _then;

  @override
  $Res call({
    Object? account = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }

  @override
  $TokenCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc
abstract class _$AccountTokenPairCopyWith<$Res>
    implements $AccountTokenPairCopyWith<$Res> {
  factory _$AccountTokenPairCopyWith(
          _AccountTokenPair value, $Res Function(_AccountTokenPair) then) =
      __$AccountTokenPairCopyWithImpl<$Res>;
  @override
  $Res call({Account account, Token? token});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$AccountTokenPairCopyWithImpl<$Res>
    extends _$AccountTokenPairCopyWithImpl<$Res>
    implements _$AccountTokenPairCopyWith<$Res> {
  __$AccountTokenPairCopyWithImpl(
      _AccountTokenPair _value, $Res Function(_AccountTokenPair) _then)
      : super(_value, (v) => _then(v as _AccountTokenPair));

  @override
  _AccountTokenPair get _value => super._value as _AccountTokenPair;

  @override
  $Res call({
    Object? account = freezed,
    Object? token = freezed,
  }) {
    return _then(_AccountTokenPair(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      token: token == freezed
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
            other is _AccountTokenPair &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$AccountTokenPairCopyWith<_AccountTokenPair> get copyWith =>
      __$AccountTokenPairCopyWithImpl<_AccountTokenPair>(this, _$identity);
}

abstract class _AccountTokenPair implements AccountTokenPair {
  const factory _AccountTokenPair({required Account account, Token? token}) =
      _$_AccountTokenPair;

  @override
  Account get account;
  @override
  Token? get token;
  @override
  @JsonKey(ignore: true)
  _$AccountTokenPairCopyWith<_AccountTokenPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TxListItemTearOff {
  const _$TxListItemTearOff();

  _TxListItemUnreceived unreceived(AccountInfo unreceived) {
    return _TxListItemUnreceived(
      unreceived,
    );
  }

  _TxListItemTransaction transaction(AccountBlock accountBlock) {
    return _TxListItemTransaction(
      accountBlock,
    );
  }

  _TxListItemLoader loader(bool hasMore) {
    return _TxListItemLoader(
      hasMore,
    );
  }
}

/// @nodoc
const $TxListItem = _$TxListItemTearOff();

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
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
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
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
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
      _$TxListItemCopyWithImpl<$Res>;
}

/// @nodoc
class _$TxListItemCopyWithImpl<$Res> implements $TxListItemCopyWith<$Res> {
  _$TxListItemCopyWithImpl(this._value, this._then);

  final TxListItem _value;
  // ignore: unused_field
  final $Res Function(TxListItem) _then;
}

/// @nodoc
abstract class _$TxListItemUnreceivedCopyWith<$Res> {
  factory _$TxListItemUnreceivedCopyWith(_TxListItemUnreceived value,
          $Res Function(_TxListItemUnreceived) then) =
      __$TxListItemUnreceivedCopyWithImpl<$Res>;
  $Res call({AccountInfo unreceived});

  $AccountInfoCopyWith<$Res> get unreceived;
}

/// @nodoc
class __$TxListItemUnreceivedCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res>
    implements _$TxListItemUnreceivedCopyWith<$Res> {
  __$TxListItemUnreceivedCopyWithImpl(
      _TxListItemUnreceived _value, $Res Function(_TxListItemUnreceived) _then)
      : super(_value, (v) => _then(v as _TxListItemUnreceived));

  @override
  _TxListItemUnreceived get _value => super._value as _TxListItemUnreceived;

  @override
  $Res call({
    Object? unreceived = freezed,
  }) {
    return _then(_TxListItemUnreceived(
      unreceived == freezed
          ? _value.unreceived
          : unreceived // ignore: cast_nullable_to_non_nullable
              as AccountInfo,
    ));
  }

  @override
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
            other is _TxListItemUnreceived &&
            const DeepCollectionEquality()
                .equals(other.unreceived, unreceived));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(unreceived));

  @JsonKey(ignore: true)
  @override
  _$TxListItemUnreceivedCopyWith<_TxListItemUnreceived> get copyWith =>
      __$TxListItemUnreceivedCopyWithImpl<_TxListItemUnreceived>(
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
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
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
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
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
  factory _TxListItemUnreceived(AccountInfo unreceived) =
      _$_TxListItemUnreceived;
  _TxListItemUnreceived._() : super._();

  AccountInfo get unreceived;
  @JsonKey(ignore: true)
  _$TxListItemUnreceivedCopyWith<_TxListItemUnreceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TxListItemTransactionCopyWith<$Res> {
  factory _$TxListItemTransactionCopyWith(_TxListItemTransaction value,
          $Res Function(_TxListItemTransaction) then) =
      __$TxListItemTransactionCopyWithImpl<$Res>;
  $Res call({AccountBlock accountBlock});

  $AccountBlockCopyWith<$Res> get accountBlock;
}

/// @nodoc
class __$TxListItemTransactionCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res>
    implements _$TxListItemTransactionCopyWith<$Res> {
  __$TxListItemTransactionCopyWithImpl(_TxListItemTransaction _value,
      $Res Function(_TxListItemTransaction) _then)
      : super(_value, (v) => _then(v as _TxListItemTransaction));

  @override
  _TxListItemTransaction get _value => super._value as _TxListItemTransaction;

  @override
  $Res call({
    Object? accountBlock = freezed,
  }) {
    return _then(_TxListItemTransaction(
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
            other is _TxListItemTransaction &&
            const DeepCollectionEquality()
                .equals(other.accountBlock, accountBlock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accountBlock));

  @JsonKey(ignore: true)
  @override
  _$TxListItemTransactionCopyWith<_TxListItemTransaction> get copyWith =>
      __$TxListItemTransactionCopyWithImpl<_TxListItemTransaction>(
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
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
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
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
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
  factory _TxListItemTransaction(AccountBlock accountBlock) =
      _$_TxListItemTransaction;
  _TxListItemTransaction._() : super._();

  AccountBlock get accountBlock;
  @JsonKey(ignore: true)
  _$TxListItemTransactionCopyWith<_TxListItemTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TxListItemLoaderCopyWith<$Res> {
  factory _$TxListItemLoaderCopyWith(
          _TxListItemLoader value, $Res Function(_TxListItemLoader) then) =
      __$TxListItemLoaderCopyWithImpl<$Res>;
  $Res call({bool hasMore});
}

/// @nodoc
class __$TxListItemLoaderCopyWithImpl<$Res>
    extends _$TxListItemCopyWithImpl<$Res>
    implements _$TxListItemLoaderCopyWith<$Res> {
  __$TxListItemLoaderCopyWithImpl(
      _TxListItemLoader _value, $Res Function(_TxListItemLoader) _then)
      : super(_value, (v) => _then(v as _TxListItemLoader));

  @override
  _TxListItemLoader get _value => super._value as _TxListItemLoader;

  @override
  $Res call({
    Object? hasMore = freezed,
  }) {
    return _then(_TxListItemLoader(
      hasMore == freezed
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
            other is _TxListItemLoader &&
            const DeepCollectionEquality().equals(other.hasMore, hasMore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasMore));

  @JsonKey(ignore: true)
  @override
  _$TxListItemLoaderCopyWith<_TxListItemLoader> get copyWith =>
      __$TxListItemLoaderCopyWithImpl<_TxListItemLoader>(this, _$identity);

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
    TResult Function(AccountInfo unreceived)? unreceived,
    TResult Function(AccountBlock accountBlock)? transaction,
    TResult Function(bool hasMore)? loader,
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
    TResult Function(_TxListItemUnreceived value)? unreceived,
    TResult Function(_TxListItemTransaction value)? transaction,
    TResult Function(_TxListItemLoader value)? loader,
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
  factory _TxListItemLoader(bool hasMore) = _$_TxListItemLoader;
  _TxListItemLoader._() : super._();

  bool get hasMore;
  @JsonKey(ignore: true)
  _$TxListItemLoaderCopyWith<_TxListItemLoader> get copyWith =>
      throw _privateConstructorUsedError;
}
