// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vinu_pay_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VinuPayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)
        invoicePaid,
    required TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)
        nameTransferred,
    required TResult Function(String txId, Address merchantAddress) newInvoice,
    required TResult Function(
            Uint8List role, Address previousHolder, Address newHolder)
        roleHolderChanged,
    required TResult Function(Address to, BigInt amount) treasuryWithdrawal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)?
        invoicePaid,
    TResult? Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult? Function(String txId, Address merchantAddress)? newInvoice,
    TResult? Function(
            Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult? Function(Address to, BigInt amount)? treasuryWithdrawal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String txId, Address merchantAddress, Address payerAddress,
            BigInt amount)?
        invoicePaid,
    TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult Function(String txId, Address merchantAddress)? newInvoice,
    TResult Function(Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult Function(Address to, BigInt amount)? treasuryWithdrawal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VinuPayEventInvoicePaid value) invoicePaid,
    required TResult Function(_VinuPayEventNameTransferred value)
        nameTransferred,
    required TResult Function(_VinuPayEventNewInvoice value) newInvoice,
    required TResult Function(_VinuPayEventRoleHolderChanged value)
        roleHolderChanged,
    required TResult Function(_VinuPayEventTreasuryWithdrawal value)
        treasuryWithdrawal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult? Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult? Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult? Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult? Function(_VinuPayEventTreasuryWithdrawal value)?
        treasuryWithdrawal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult Function(_VinuPayEventTreasuryWithdrawal value)? treasuryWithdrawal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinuPayEventCopyWith<$Res> {
  factory $VinuPayEventCopyWith(
          VinuPayEvent value, $Res Function(VinuPayEvent) then) =
      _$VinuPayEventCopyWithImpl<$Res, VinuPayEvent>;
}

/// @nodoc
class _$VinuPayEventCopyWithImpl<$Res, $Val extends VinuPayEvent>
    implements $VinuPayEventCopyWith<$Res> {
  _$VinuPayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VinuPayEventInvoicePaidImplCopyWith<$Res> {
  factory _$$VinuPayEventInvoicePaidImplCopyWith(
          _$VinuPayEventInvoicePaidImpl value,
          $Res Function(_$VinuPayEventInvoicePaidImpl) then) =
      __$$VinuPayEventInvoicePaidImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String txId,
      Address merchantAddress,
      Address payerAddress,
      BigInt amount});

  $AddressCopyWith<$Res> get merchantAddress;
  $AddressCopyWith<$Res> get payerAddress;
}

/// @nodoc
class __$$VinuPayEventInvoicePaidImplCopyWithImpl<$Res>
    extends _$VinuPayEventCopyWithImpl<$Res, _$VinuPayEventInvoicePaidImpl>
    implements _$$VinuPayEventInvoicePaidImplCopyWith<$Res> {
  __$$VinuPayEventInvoicePaidImplCopyWithImpl(
      _$VinuPayEventInvoicePaidImpl _value,
      $Res Function(_$VinuPayEventInvoicePaidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? merchantAddress = null,
    Object? payerAddress = null,
    Object? amount = null,
  }) {
    return _then(_$VinuPayEventInvoicePaidImpl(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantAddress: null == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      payerAddress: null == payerAddress
          ? _value.payerAddress
          : payerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get merchantAddress {
    return $AddressCopyWith<$Res>(_value.merchantAddress, (value) {
      return _then(_value.copyWith(merchantAddress: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get payerAddress {
    return $AddressCopyWith<$Res>(_value.payerAddress, (value) {
      return _then(_value.copyWith(payerAddress: value));
    });
  }
}

/// @nodoc

class _$VinuPayEventInvoicePaidImpl implements _VinuPayEventInvoicePaid {
  const _$VinuPayEventInvoicePaidImpl(
      {required this.txId,
      required this.merchantAddress,
      required this.payerAddress,
      required this.amount});

  @override
  final String txId;
  @override
  final Address merchantAddress;
  @override
  final Address payerAddress;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VinuPayEvent.invoicePaid(txId: $txId, merchantAddress: $merchantAddress, payerAddress: $payerAddress, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuPayEventInvoicePaidImpl &&
            (identical(other.txId, txId) || other.txId == txId) &&
            (identical(other.merchantAddress, merchantAddress) ||
                other.merchantAddress == merchantAddress) &&
            (identical(other.payerAddress, payerAddress) ||
                other.payerAddress == payerAddress) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, txId, merchantAddress, payerAddress, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VinuPayEventInvoicePaidImplCopyWith<_$VinuPayEventInvoicePaidImpl>
      get copyWith => __$$VinuPayEventInvoicePaidImplCopyWithImpl<
          _$VinuPayEventInvoicePaidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)
        invoicePaid,
    required TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)
        nameTransferred,
    required TResult Function(String txId, Address merchantAddress) newInvoice,
    required TResult Function(
            Uint8List role, Address previousHolder, Address newHolder)
        roleHolderChanged,
    required TResult Function(Address to, BigInt amount) treasuryWithdrawal,
  }) {
    return invoicePaid(txId, merchantAddress, payerAddress, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)?
        invoicePaid,
    TResult? Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult? Function(String txId, Address merchantAddress)? newInvoice,
    TResult? Function(
            Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult? Function(Address to, BigInt amount)? treasuryWithdrawal,
  }) {
    return invoicePaid?.call(txId, merchantAddress, payerAddress, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String txId, Address merchantAddress, Address payerAddress,
            BigInt amount)?
        invoicePaid,
    TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult Function(String txId, Address merchantAddress)? newInvoice,
    TResult Function(Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult Function(Address to, BigInt amount)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (invoicePaid != null) {
      return invoicePaid(txId, merchantAddress, payerAddress, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VinuPayEventInvoicePaid value) invoicePaid,
    required TResult Function(_VinuPayEventNameTransferred value)
        nameTransferred,
    required TResult Function(_VinuPayEventNewInvoice value) newInvoice,
    required TResult Function(_VinuPayEventRoleHolderChanged value)
        roleHolderChanged,
    required TResult Function(_VinuPayEventTreasuryWithdrawal value)
        treasuryWithdrawal,
  }) {
    return invoicePaid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult? Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult? Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult? Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult? Function(_VinuPayEventTreasuryWithdrawal value)?
        treasuryWithdrawal,
  }) {
    return invoicePaid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult Function(_VinuPayEventTreasuryWithdrawal value)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (invoicePaid != null) {
      return invoicePaid(this);
    }
    return orElse();
  }
}

abstract class _VinuPayEventInvoicePaid implements VinuPayEvent {
  const factory _VinuPayEventInvoicePaid(
      {required final String txId,
      required final Address merchantAddress,
      required final Address payerAddress,
      required final BigInt amount}) = _$VinuPayEventInvoicePaidImpl;

  String get txId;
  Address get merchantAddress;
  Address get payerAddress;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$$VinuPayEventInvoicePaidImplCopyWith<_$VinuPayEventInvoicePaidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VinuPayEventNameTransferredImplCopyWith<$Res> {
  factory _$$VinuPayEventNameTransferredImplCopyWith(
          _$VinuPayEventNameTransferredImpl value,
          $Res Function(_$VinuPayEventNameTransferredImpl) then) =
      __$$VinuPayEventNameTransferredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress});

  $AddressCopyWith<$Res> get oldOwnerAddress;
  $AddressCopyWith<$Res> get newOwnerAddress;
}

/// @nodoc
class __$$VinuPayEventNameTransferredImplCopyWithImpl<$Res>
    extends _$VinuPayEventCopyWithImpl<$Res, _$VinuPayEventNameTransferredImpl>
    implements _$$VinuPayEventNameTransferredImplCopyWith<$Res> {
  __$$VinuPayEventNameTransferredImplCopyWithImpl(
      _$VinuPayEventNameTransferredImpl _value,
      $Res Function(_$VinuPayEventNameTransferredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameId = null,
    Object? oldOwnerAddress = null,
    Object? newOwnerAddress = null,
  }) {
    return _then(_$VinuPayEventNameTransferredImpl(
      nameId: null == nameId
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      oldOwnerAddress: null == oldOwnerAddress
          ? _value.oldOwnerAddress
          : oldOwnerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      newOwnerAddress: null == newOwnerAddress
          ? _value.newOwnerAddress
          : newOwnerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get oldOwnerAddress {
    return $AddressCopyWith<$Res>(_value.oldOwnerAddress, (value) {
      return _then(_value.copyWith(oldOwnerAddress: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get newOwnerAddress {
    return $AddressCopyWith<$Res>(_value.newOwnerAddress, (value) {
      return _then(_value.copyWith(newOwnerAddress: value));
    });
  }
}

/// @nodoc

class _$VinuPayEventNameTransferredImpl
    implements _VinuPayEventNameTransferred {
  const _$VinuPayEventNameTransferredImpl(
      {required this.nameId,
      required this.oldOwnerAddress,
      required this.newOwnerAddress});

  @override
  final BigInt nameId;
  @override
  final Address oldOwnerAddress;
  @override
  final Address newOwnerAddress;

  @override
  String toString() {
    return 'VinuPayEvent.nameTransferred(nameId: $nameId, oldOwnerAddress: $oldOwnerAddress, newOwnerAddress: $newOwnerAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuPayEventNameTransferredImpl &&
            (identical(other.nameId, nameId) || other.nameId == nameId) &&
            (identical(other.oldOwnerAddress, oldOwnerAddress) ||
                other.oldOwnerAddress == oldOwnerAddress) &&
            (identical(other.newOwnerAddress, newOwnerAddress) ||
                other.newOwnerAddress == newOwnerAddress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nameId, oldOwnerAddress, newOwnerAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VinuPayEventNameTransferredImplCopyWith<_$VinuPayEventNameTransferredImpl>
      get copyWith => __$$VinuPayEventNameTransferredImplCopyWithImpl<
          _$VinuPayEventNameTransferredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)
        invoicePaid,
    required TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)
        nameTransferred,
    required TResult Function(String txId, Address merchantAddress) newInvoice,
    required TResult Function(
            Uint8List role, Address previousHolder, Address newHolder)
        roleHolderChanged,
    required TResult Function(Address to, BigInt amount) treasuryWithdrawal,
  }) {
    return nameTransferred(nameId, oldOwnerAddress, newOwnerAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)?
        invoicePaid,
    TResult? Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult? Function(String txId, Address merchantAddress)? newInvoice,
    TResult? Function(
            Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult? Function(Address to, BigInt amount)? treasuryWithdrawal,
  }) {
    return nameTransferred?.call(nameId, oldOwnerAddress, newOwnerAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String txId, Address merchantAddress, Address payerAddress,
            BigInt amount)?
        invoicePaid,
    TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult Function(String txId, Address merchantAddress)? newInvoice,
    TResult Function(Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult Function(Address to, BigInt amount)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (nameTransferred != null) {
      return nameTransferred(nameId, oldOwnerAddress, newOwnerAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VinuPayEventInvoicePaid value) invoicePaid,
    required TResult Function(_VinuPayEventNameTransferred value)
        nameTransferred,
    required TResult Function(_VinuPayEventNewInvoice value) newInvoice,
    required TResult Function(_VinuPayEventRoleHolderChanged value)
        roleHolderChanged,
    required TResult Function(_VinuPayEventTreasuryWithdrawal value)
        treasuryWithdrawal,
  }) {
    return nameTransferred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult? Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult? Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult? Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult? Function(_VinuPayEventTreasuryWithdrawal value)?
        treasuryWithdrawal,
  }) {
    return nameTransferred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult Function(_VinuPayEventTreasuryWithdrawal value)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (nameTransferred != null) {
      return nameTransferred(this);
    }
    return orElse();
  }
}

abstract class _VinuPayEventNameTransferred implements VinuPayEvent {
  const factory _VinuPayEventNameTransferred(
          {required final BigInt nameId,
          required final Address oldOwnerAddress,
          required final Address newOwnerAddress}) =
      _$VinuPayEventNameTransferredImpl;

  BigInt get nameId;
  Address get oldOwnerAddress;
  Address get newOwnerAddress;
  @JsonKey(ignore: true)
  _$$VinuPayEventNameTransferredImplCopyWith<_$VinuPayEventNameTransferredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VinuPayEventNewInvoiceImplCopyWith<$Res> {
  factory _$$VinuPayEventNewInvoiceImplCopyWith(
          _$VinuPayEventNewInvoiceImpl value,
          $Res Function(_$VinuPayEventNewInvoiceImpl) then) =
      __$$VinuPayEventNewInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String txId, Address merchantAddress});

  $AddressCopyWith<$Res> get merchantAddress;
}

/// @nodoc
class __$$VinuPayEventNewInvoiceImplCopyWithImpl<$Res>
    extends _$VinuPayEventCopyWithImpl<$Res, _$VinuPayEventNewInvoiceImpl>
    implements _$$VinuPayEventNewInvoiceImplCopyWith<$Res> {
  __$$VinuPayEventNewInvoiceImplCopyWithImpl(
      _$VinuPayEventNewInvoiceImpl _value,
      $Res Function(_$VinuPayEventNewInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? merchantAddress = null,
  }) {
    return _then(_$VinuPayEventNewInvoiceImpl(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantAddress: null == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get merchantAddress {
    return $AddressCopyWith<$Res>(_value.merchantAddress, (value) {
      return _then(_value.copyWith(merchantAddress: value));
    });
  }
}

/// @nodoc

class _$VinuPayEventNewInvoiceImpl implements _VinuPayEventNewInvoice {
  const _$VinuPayEventNewInvoiceImpl(
      {required this.txId, required this.merchantAddress});

  @override
  final String txId;
  @override
  final Address merchantAddress;

  @override
  String toString() {
    return 'VinuPayEvent.newInvoice(txId: $txId, merchantAddress: $merchantAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuPayEventNewInvoiceImpl &&
            (identical(other.txId, txId) || other.txId == txId) &&
            (identical(other.merchantAddress, merchantAddress) ||
                other.merchantAddress == merchantAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, txId, merchantAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VinuPayEventNewInvoiceImplCopyWith<_$VinuPayEventNewInvoiceImpl>
      get copyWith => __$$VinuPayEventNewInvoiceImplCopyWithImpl<
          _$VinuPayEventNewInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)
        invoicePaid,
    required TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)
        nameTransferred,
    required TResult Function(String txId, Address merchantAddress) newInvoice,
    required TResult Function(
            Uint8List role, Address previousHolder, Address newHolder)
        roleHolderChanged,
    required TResult Function(Address to, BigInt amount) treasuryWithdrawal,
  }) {
    return newInvoice(txId, merchantAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)?
        invoicePaid,
    TResult? Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult? Function(String txId, Address merchantAddress)? newInvoice,
    TResult? Function(
            Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult? Function(Address to, BigInt amount)? treasuryWithdrawal,
  }) {
    return newInvoice?.call(txId, merchantAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String txId, Address merchantAddress, Address payerAddress,
            BigInt amount)?
        invoicePaid,
    TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult Function(String txId, Address merchantAddress)? newInvoice,
    TResult Function(Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult Function(Address to, BigInt amount)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (newInvoice != null) {
      return newInvoice(txId, merchantAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VinuPayEventInvoicePaid value) invoicePaid,
    required TResult Function(_VinuPayEventNameTransferred value)
        nameTransferred,
    required TResult Function(_VinuPayEventNewInvoice value) newInvoice,
    required TResult Function(_VinuPayEventRoleHolderChanged value)
        roleHolderChanged,
    required TResult Function(_VinuPayEventTreasuryWithdrawal value)
        treasuryWithdrawal,
  }) {
    return newInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult? Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult? Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult? Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult? Function(_VinuPayEventTreasuryWithdrawal value)?
        treasuryWithdrawal,
  }) {
    return newInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult Function(_VinuPayEventTreasuryWithdrawal value)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (newInvoice != null) {
      return newInvoice(this);
    }
    return orElse();
  }
}

abstract class _VinuPayEventNewInvoice implements VinuPayEvent {
  const factory _VinuPayEventNewInvoice(
      {required final String txId,
      required final Address merchantAddress}) = _$VinuPayEventNewInvoiceImpl;

  String get txId;
  Address get merchantAddress;
  @JsonKey(ignore: true)
  _$$VinuPayEventNewInvoiceImplCopyWith<_$VinuPayEventNewInvoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VinuPayEventRoleHolderChangedImplCopyWith<$Res> {
  factory _$$VinuPayEventRoleHolderChangedImplCopyWith(
          _$VinuPayEventRoleHolderChangedImpl value,
          $Res Function(_$VinuPayEventRoleHolderChangedImpl) then) =
      __$$VinuPayEventRoleHolderChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List role, Address previousHolder, Address newHolder});

  $AddressCopyWith<$Res> get previousHolder;
  $AddressCopyWith<$Res> get newHolder;
}

/// @nodoc
class __$$VinuPayEventRoleHolderChangedImplCopyWithImpl<$Res>
    extends _$VinuPayEventCopyWithImpl<$Res,
        _$VinuPayEventRoleHolderChangedImpl>
    implements _$$VinuPayEventRoleHolderChangedImplCopyWith<$Res> {
  __$$VinuPayEventRoleHolderChangedImplCopyWithImpl(
      _$VinuPayEventRoleHolderChangedImpl _value,
      $Res Function(_$VinuPayEventRoleHolderChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? previousHolder = null,
    Object? newHolder = null,
  }) {
    return _then(_$VinuPayEventRoleHolderChangedImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      previousHolder: null == previousHolder
          ? _value.previousHolder
          : previousHolder // ignore: cast_nullable_to_non_nullable
              as Address,
      newHolder: null == newHolder
          ? _value.newHolder
          : newHolder // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get previousHolder {
    return $AddressCopyWith<$Res>(_value.previousHolder, (value) {
      return _then(_value.copyWith(previousHolder: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get newHolder {
    return $AddressCopyWith<$Res>(_value.newHolder, (value) {
      return _then(_value.copyWith(newHolder: value));
    });
  }
}

/// @nodoc

class _$VinuPayEventRoleHolderChangedImpl
    implements _VinuPayEventRoleHolderChanged {
  const _$VinuPayEventRoleHolderChangedImpl(
      {required this.role,
      required this.previousHolder,
      required this.newHolder});

  @override
  final Uint8List role;
  @override
  final Address previousHolder;
  @override
  final Address newHolder;

  @override
  String toString() {
    return 'VinuPayEvent.roleHolderChanged(role: $role, previousHolder: $previousHolder, newHolder: $newHolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuPayEventRoleHolderChangedImpl &&
            const DeepCollectionEquality().equals(other.role, role) &&
            (identical(other.previousHolder, previousHolder) ||
                other.previousHolder == previousHolder) &&
            (identical(other.newHolder, newHolder) ||
                other.newHolder == newHolder));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(role), previousHolder, newHolder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VinuPayEventRoleHolderChangedImplCopyWith<
          _$VinuPayEventRoleHolderChangedImpl>
      get copyWith => __$$VinuPayEventRoleHolderChangedImplCopyWithImpl<
          _$VinuPayEventRoleHolderChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)
        invoicePaid,
    required TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)
        nameTransferred,
    required TResult Function(String txId, Address merchantAddress) newInvoice,
    required TResult Function(
            Uint8List role, Address previousHolder, Address newHolder)
        roleHolderChanged,
    required TResult Function(Address to, BigInt amount) treasuryWithdrawal,
  }) {
    return roleHolderChanged(role, previousHolder, newHolder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)?
        invoicePaid,
    TResult? Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult? Function(String txId, Address merchantAddress)? newInvoice,
    TResult? Function(
            Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult? Function(Address to, BigInt amount)? treasuryWithdrawal,
  }) {
    return roleHolderChanged?.call(role, previousHolder, newHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String txId, Address merchantAddress, Address payerAddress,
            BigInt amount)?
        invoicePaid,
    TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult Function(String txId, Address merchantAddress)? newInvoice,
    TResult Function(Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult Function(Address to, BigInt amount)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (roleHolderChanged != null) {
      return roleHolderChanged(role, previousHolder, newHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VinuPayEventInvoicePaid value) invoicePaid,
    required TResult Function(_VinuPayEventNameTransferred value)
        nameTransferred,
    required TResult Function(_VinuPayEventNewInvoice value) newInvoice,
    required TResult Function(_VinuPayEventRoleHolderChanged value)
        roleHolderChanged,
    required TResult Function(_VinuPayEventTreasuryWithdrawal value)
        treasuryWithdrawal,
  }) {
    return roleHolderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult? Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult? Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult? Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult? Function(_VinuPayEventTreasuryWithdrawal value)?
        treasuryWithdrawal,
  }) {
    return roleHolderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult Function(_VinuPayEventTreasuryWithdrawal value)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (roleHolderChanged != null) {
      return roleHolderChanged(this);
    }
    return orElse();
  }
}

abstract class _VinuPayEventRoleHolderChanged implements VinuPayEvent {
  const factory _VinuPayEventRoleHolderChanged(
      {required final Uint8List role,
      required final Address previousHolder,
      required final Address newHolder}) = _$VinuPayEventRoleHolderChangedImpl;

  Uint8List get role;
  Address get previousHolder;
  Address get newHolder;
  @JsonKey(ignore: true)
  _$$VinuPayEventRoleHolderChangedImplCopyWith<
          _$VinuPayEventRoleHolderChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VinuPayEventTreasuryWithdrawalImplCopyWith<$Res> {
  factory _$$VinuPayEventTreasuryWithdrawalImplCopyWith(
          _$VinuPayEventTreasuryWithdrawalImpl value,
          $Res Function(_$VinuPayEventTreasuryWithdrawalImpl) then) =
      __$$VinuPayEventTreasuryWithdrawalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address to, BigInt amount});

  $AddressCopyWith<$Res> get to;
}

/// @nodoc
class __$$VinuPayEventTreasuryWithdrawalImplCopyWithImpl<$Res>
    extends _$VinuPayEventCopyWithImpl<$Res,
        _$VinuPayEventTreasuryWithdrawalImpl>
    implements _$$VinuPayEventTreasuryWithdrawalImplCopyWith<$Res> {
  __$$VinuPayEventTreasuryWithdrawalImplCopyWithImpl(
      _$VinuPayEventTreasuryWithdrawalImpl _value,
      $Res Function(_$VinuPayEventTreasuryWithdrawalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? amount = null,
  }) {
    return _then(_$VinuPayEventTreasuryWithdrawalImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get to {
    return $AddressCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc

class _$VinuPayEventTreasuryWithdrawalImpl
    implements _VinuPayEventTreasuryWithdrawal {
  const _$VinuPayEventTreasuryWithdrawalImpl(
      {required this.to, required this.amount});

  @override
  final Address to;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VinuPayEvent.treasuryWithdrawal(to: $to, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuPayEventTreasuryWithdrawalImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VinuPayEventTreasuryWithdrawalImplCopyWith<
          _$VinuPayEventTreasuryWithdrawalImpl>
      get copyWith => __$$VinuPayEventTreasuryWithdrawalImplCopyWithImpl<
          _$VinuPayEventTreasuryWithdrawalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)
        invoicePaid,
    required TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)
        nameTransferred,
    required TResult Function(String txId, Address merchantAddress) newInvoice,
    required TResult Function(
            Uint8List role, Address previousHolder, Address newHolder)
        roleHolderChanged,
    required TResult Function(Address to, BigInt amount) treasuryWithdrawal,
  }) {
    return treasuryWithdrawal(to, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String txId, Address merchantAddress,
            Address payerAddress, BigInt amount)?
        invoicePaid,
    TResult? Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult? Function(String txId, Address merchantAddress)? newInvoice,
    TResult? Function(
            Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult? Function(Address to, BigInt amount)? treasuryWithdrawal,
  }) {
    return treasuryWithdrawal?.call(to, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String txId, Address merchantAddress, Address payerAddress,
            BigInt amount)?
        invoicePaid,
    TResult Function(
            BigInt nameId, Address oldOwnerAddress, Address newOwnerAddress)?
        nameTransferred,
    TResult Function(String txId, Address merchantAddress)? newInvoice,
    TResult Function(Uint8List role, Address previousHolder, Address newHolder)?
        roleHolderChanged,
    TResult Function(Address to, BigInt amount)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (treasuryWithdrawal != null) {
      return treasuryWithdrawal(to, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VinuPayEventInvoicePaid value) invoicePaid,
    required TResult Function(_VinuPayEventNameTransferred value)
        nameTransferred,
    required TResult Function(_VinuPayEventNewInvoice value) newInvoice,
    required TResult Function(_VinuPayEventRoleHolderChanged value)
        roleHolderChanged,
    required TResult Function(_VinuPayEventTreasuryWithdrawal value)
        treasuryWithdrawal,
  }) {
    return treasuryWithdrawal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult? Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult? Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult? Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult? Function(_VinuPayEventTreasuryWithdrawal value)?
        treasuryWithdrawal,
  }) {
    return treasuryWithdrawal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuPayEventInvoicePaid value)? invoicePaid,
    TResult Function(_VinuPayEventNameTransferred value)? nameTransferred,
    TResult Function(_VinuPayEventNewInvoice value)? newInvoice,
    TResult Function(_VinuPayEventRoleHolderChanged value)? roleHolderChanged,
    TResult Function(_VinuPayEventTreasuryWithdrawal value)? treasuryWithdrawal,
    required TResult orElse(),
  }) {
    if (treasuryWithdrawal != null) {
      return treasuryWithdrawal(this);
    }
    return orElse();
  }
}

abstract class _VinuPayEventTreasuryWithdrawal implements VinuPayEvent {
  const factory _VinuPayEventTreasuryWithdrawal(
      {required final Address to,
      required final BigInt amount}) = _$VinuPayEventTreasuryWithdrawalImpl;

  Address get to;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$$VinuPayEventTreasuryWithdrawalImplCopyWith<
          _$VinuPayEventTreasuryWithdrawalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VinuPayName {
  Address get ownerAddress => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isTrusted => throw _privateConstructorUsedError;
  BigInt get nameId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VinuPayNameCopyWith<VinuPayName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinuPayNameCopyWith<$Res> {
  factory $VinuPayNameCopyWith(
          VinuPayName value, $Res Function(VinuPayName) then) =
      _$VinuPayNameCopyWithImpl<$Res, VinuPayName>;
  @useResult
  $Res call({Address ownerAddress, String name, bool isTrusted, BigInt nameId});

  $AddressCopyWith<$Res> get ownerAddress;
}

/// @nodoc
class _$VinuPayNameCopyWithImpl<$Res, $Val extends VinuPayName>
    implements $VinuPayNameCopyWith<$Res> {
  _$VinuPayNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? name = null,
    Object? isTrusted = null,
    Object? nameId = null,
  }) {
    return _then(_value.copyWith(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isTrusted: null == isTrusted
          ? _value.isTrusted
          : isTrusted // ignore: cast_nullable_to_non_nullable
              as bool,
      nameId: null == nameId
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get ownerAddress {
    return $AddressCopyWith<$Res>(_value.ownerAddress, (value) {
      return _then(_value.copyWith(ownerAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VinuPayNameImplCopyWith<$Res>
    implements $VinuPayNameCopyWith<$Res> {
  factory _$$VinuPayNameImplCopyWith(
          _$VinuPayNameImpl value, $Res Function(_$VinuPayNameImpl) then) =
      __$$VinuPayNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address ownerAddress, String name, bool isTrusted, BigInt nameId});

  @override
  $AddressCopyWith<$Res> get ownerAddress;
}

/// @nodoc
class __$$VinuPayNameImplCopyWithImpl<$Res>
    extends _$VinuPayNameCopyWithImpl<$Res, _$VinuPayNameImpl>
    implements _$$VinuPayNameImplCopyWith<$Res> {
  __$$VinuPayNameImplCopyWithImpl(
      _$VinuPayNameImpl _value, $Res Function(_$VinuPayNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? name = null,
    Object? isTrusted = null,
    Object? nameId = null,
  }) {
    return _then(_$VinuPayNameImpl(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isTrusted: null == isTrusted
          ? _value.isTrusted
          : isTrusted // ignore: cast_nullable_to_non_nullable
              as bool,
      nameId: null == nameId
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$VinuPayNameImpl implements _VinuPayName {
  const _$VinuPayNameImpl(
      {required this.ownerAddress,
      required this.name,
      required this.isTrusted,
      required this.nameId});

  @override
  final Address ownerAddress;
  @override
  final String name;
  @override
  final bool isTrusted;
  @override
  final BigInt nameId;

  @override
  String toString() {
    return 'VinuPayName(ownerAddress: $ownerAddress, name: $name, isTrusted: $isTrusted, nameId: $nameId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuPayNameImpl &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isTrusted, isTrusted) ||
                other.isTrusted == isTrusted) &&
            (identical(other.nameId, nameId) || other.nameId == nameId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, ownerAddress, name, isTrusted, nameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VinuPayNameImplCopyWith<_$VinuPayNameImpl> get copyWith =>
      __$$VinuPayNameImplCopyWithImpl<_$VinuPayNameImpl>(this, _$identity);
}

abstract class _VinuPayName implements VinuPayName {
  const factory _VinuPayName(
      {required final Address ownerAddress,
      required final String name,
      required final bool isTrusted,
      required final BigInt nameId}) = _$VinuPayNameImpl;

  @override
  Address get ownerAddress;
  @override
  String get name;
  @override
  bool get isTrusted;
  @override
  BigInt get nameId;
  @override
  @JsonKey(ignore: true)
  _$$VinuPayNameImplCopyWith<_$VinuPayNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VinuPayTransaction {
  Address get destination => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  BigInt get nameId => throw _privateConstructorUsedError;
  BigInt get expireBlock => throw _privateConstructorUsedError;
  Token get txToken => throw _privateConstructorUsedError;
  BigInt get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VinuPayTransactionCopyWith<VinuPayTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinuPayTransactionCopyWith<$Res> {
  factory $VinuPayTransactionCopyWith(
          VinuPayTransaction value, $Res Function(VinuPayTransaction) then) =
      _$VinuPayTransactionCopyWithImpl<$Res, VinuPayTransaction>;
  @useResult
  $Res call(
      {Address destination,
      BigInt amount,
      BigInt nameId,
      BigInt expireBlock,
      Token txToken,
      BigInt status});

  $AddressCopyWith<$Res> get destination;
  $TokenCopyWith<$Res> get txToken;
}

/// @nodoc
class _$VinuPayTransactionCopyWithImpl<$Res, $Val extends VinuPayTransaction>
    implements $VinuPayTransactionCopyWith<$Res> {
  _$VinuPayTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? nameId = null,
    Object? expireBlock = null,
    Object? txToken = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      nameId: null == nameId
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      expireBlock: null == expireBlock
          ? _value.expireBlock
          : expireBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      txToken: null == txToken
          ? _value.txToken
          : txToken // ignore: cast_nullable_to_non_nullable
              as Token,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get destination {
    return $AddressCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get txToken {
    return $TokenCopyWith<$Res>(_value.txToken, (value) {
      return _then(_value.copyWith(txToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VinuPayTransactionImplCopyWith<$Res>
    implements $VinuPayTransactionCopyWith<$Res> {
  factory _$$VinuPayTransactionImplCopyWith(_$VinuPayTransactionImpl value,
          $Res Function(_$VinuPayTransactionImpl) then) =
      __$$VinuPayTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address destination,
      BigInt amount,
      BigInt nameId,
      BigInt expireBlock,
      Token txToken,
      BigInt status});

  @override
  $AddressCopyWith<$Res> get destination;
  @override
  $TokenCopyWith<$Res> get txToken;
}

/// @nodoc
class __$$VinuPayTransactionImplCopyWithImpl<$Res>
    extends _$VinuPayTransactionCopyWithImpl<$Res, _$VinuPayTransactionImpl>
    implements _$$VinuPayTransactionImplCopyWith<$Res> {
  __$$VinuPayTransactionImplCopyWithImpl(_$VinuPayTransactionImpl _value,
      $Res Function(_$VinuPayTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? nameId = null,
    Object? expireBlock = null,
    Object? txToken = null,
    Object? status = null,
  }) {
    return _then(_$VinuPayTransactionImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      nameId: null == nameId
          ? _value.nameId
          : nameId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      expireBlock: null == expireBlock
          ? _value.expireBlock
          : expireBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      txToken: null == txToken
          ? _value.txToken
          : txToken // ignore: cast_nullable_to_non_nullable
              as Token,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$VinuPayTransactionImpl implements _VinuPayTransaction {
  const _$VinuPayTransactionImpl(
      {required this.destination,
      required this.amount,
      required this.nameId,
      required this.expireBlock,
      required this.txToken,
      required this.status});

  @override
  final Address destination;
  @override
  final BigInt amount;
  @override
  final BigInt nameId;
  @override
  final BigInt expireBlock;
  @override
  final Token txToken;
  @override
  final BigInt status;

  @override
  String toString() {
    return 'VinuPayTransaction(destination: $destination, amount: $amount, nameId: $nameId, expireBlock: $expireBlock, txToken: $txToken, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuPayTransactionImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.nameId, nameId) || other.nameId == nameId) &&
            (identical(other.expireBlock, expireBlock) ||
                other.expireBlock == expireBlock) &&
            (identical(other.txToken, txToken) || other.txToken == txToken) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, destination, amount, nameId, expireBlock, txToken, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VinuPayTransactionImplCopyWith<_$VinuPayTransactionImpl> get copyWith =>
      __$$VinuPayTransactionImplCopyWithImpl<_$VinuPayTransactionImpl>(
          this, _$identity);
}

abstract class _VinuPayTransaction implements VinuPayTransaction {
  const factory _VinuPayTransaction(
      {required final Address destination,
      required final BigInt amount,
      required final BigInt nameId,
      required final BigInt expireBlock,
      required final Token txToken,
      required final BigInt status}) = _$VinuPayTransactionImpl;

  @override
  Address get destination;
  @override
  BigInt get amount;
  @override
  BigInt get nameId;
  @override
  BigInt get expireBlock;
  @override
  Token get txToken;
  @override
  BigInt get status;
  @override
  @JsonKey(ignore: true)
  _$$VinuPayTransactionImplCopyWith<_$VinuPayTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
