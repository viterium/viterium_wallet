// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_sheet_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendSheetState {
  Address? get address => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  BigInt? get amount => throw _privateConstructorUsedError;
  TokenInfo get tokenInfo => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendSheetStateCopyWith<SendSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSheetStateCopyWith<$Res> {
  factory $SendSheetStateCopyWith(
          SendSheetState value, $Res Function(SendSheetState) then) =
      _$SendSheetStateCopyWithImpl<$Res, SendSheetState>;
  @useResult
  $Res call(
      {Address? address,
      Contact? contact,
      BigInt? amount,
      TokenInfo tokenInfo,
      String memo,
      String? data});

  $AddressCopyWith<$Res>? get address;
  $ContactCopyWith<$Res>? get contact;
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class _$SendSheetStateCopyWithImpl<$Res, $Val extends SendSheetState>
    implements $SendSheetStateCopyWith<$Res> {
  _$SendSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? contact = freezed,
    Object? amount = freezed,
    Object? tokenInfo = null,
    Object? memo = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      tokenInfo: null == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
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
abstract class _$$_SendSheetStateCopyWith<$Res>
    implements $SendSheetStateCopyWith<$Res> {
  factory _$$_SendSheetStateCopyWith(
          _$_SendSheetState value, $Res Function(_$_SendSheetState) then) =
      __$$_SendSheetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address? address,
      Contact? contact,
      BigInt? amount,
      TokenInfo tokenInfo,
      String memo,
      String? data});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$_SendSheetStateCopyWithImpl<$Res>
    extends _$SendSheetStateCopyWithImpl<$Res, _$_SendSheetState>
    implements _$$_SendSheetStateCopyWith<$Res> {
  __$$_SendSheetStateCopyWithImpl(
      _$_SendSheetState _value, $Res Function(_$_SendSheetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? contact = freezed,
    Object? amount = freezed,
    Object? tokenInfo = null,
    Object? memo = null,
    Object? data = freezed,
  }) {
    return _then(_$_SendSheetState(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      tokenInfo: null == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SendSheetState implements _SendSheetState {
  const _$_SendSheetState(
      {this.address,
      this.contact,
      this.amount,
      required this.tokenInfo,
      this.memo = '',
      this.data});

  @override
  final Address? address;
  @override
  final Contact? contact;
  @override
  final BigInt? amount;
  @override
  final TokenInfo tokenInfo;
  @override
  @JsonKey()
  final String memo;
  @override
  final String? data;

  @override
  String toString() {
    return 'SendSheetState(address: $address, contact: $contact, amount: $amount, tokenInfo: $tokenInfo, memo: $memo, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendSheetState &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, contact, amount, tokenInfo, memo, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendSheetStateCopyWith<_$_SendSheetState> get copyWith =>
      __$$_SendSheetStateCopyWithImpl<_$_SendSheetState>(this, _$identity);
}

abstract class _SendSheetState implements SendSheetState {
  const factory _SendSheetState(
      {final Address? address,
      final Contact? contact,
      final BigInt? amount,
      required final TokenInfo tokenInfo,
      final String memo,
      final String? data}) = _$_SendSheetState;

  @override
  Address? get address;
  @override
  Contact? get contact;
  @override
  BigInt? get amount;
  @override
  TokenInfo get tokenInfo;
  @override
  String get memo;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SendSheetStateCopyWith<_$_SendSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AmountState {
  String? get hint => throw _privateConstructorUsedError;
  String get validationText => throw _privateConstructorUsedError;
  bool get validAndUnfocused => throw _privateConstructorUsedError;
  bool get tokenButtonVisible => throw _privateConstructorUsedError;
  bool get maxButtonVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AmountStateCopyWith<AmountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountStateCopyWith<$Res> {
  factory $AmountStateCopyWith(
          AmountState value, $Res Function(AmountState) then) =
      _$AmountStateCopyWithImpl<$Res, AmountState>;
  @useResult
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool tokenButtonVisible,
      bool maxButtonVisible});
}

/// @nodoc
class _$AmountStateCopyWithImpl<$Res, $Val extends AmountState>
    implements $AmountStateCopyWith<$Res> {
  _$AmountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = null,
    Object? validAndUnfocused = null,
    Object? tokenButtonVisible = null,
    Object? maxButtonVisible = null,
  }) {
    return _then(_value.copyWith(
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: null == validationText
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: null == validAndUnfocused
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenButtonVisible: null == tokenButtonVisible
          ? _value.tokenButtonVisible
          : tokenButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      maxButtonVisible: null == maxButtonVisible
          ? _value.maxButtonVisible
          : maxButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AmountStateCopyWith<$Res>
    implements $AmountStateCopyWith<$Res> {
  factory _$$_AmountStateCopyWith(
          _$_AmountState value, $Res Function(_$_AmountState) then) =
      __$$_AmountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool tokenButtonVisible,
      bool maxButtonVisible});
}

/// @nodoc
class __$$_AmountStateCopyWithImpl<$Res>
    extends _$AmountStateCopyWithImpl<$Res, _$_AmountState>
    implements _$$_AmountStateCopyWith<$Res> {
  __$$_AmountStateCopyWithImpl(
      _$_AmountState _value, $Res Function(_$_AmountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = null,
    Object? validAndUnfocused = null,
    Object? tokenButtonVisible = null,
    Object? maxButtonVisible = null,
  }) {
    return _then(_$_AmountState(
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: null == validationText
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: null == validAndUnfocused
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenButtonVisible: null == tokenButtonVisible
          ? _value.tokenButtonVisible
          : tokenButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      maxButtonVisible: null == maxButtonVisible
          ? _value.maxButtonVisible
          : maxButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AmountState implements _AmountState {
  const _$_AmountState(
      {this.hint = '',
      this.validationText = '',
      this.validAndUnfocused = false,
      this.tokenButtonVisible = true,
      this.maxButtonVisible = true});

  @override
  @JsonKey()
  final String? hint;
  @override
  @JsonKey()
  final String validationText;
  @override
  @JsonKey()
  final bool validAndUnfocused;
  @override
  @JsonKey()
  final bool tokenButtonVisible;
  @override
  @JsonKey()
  final bool maxButtonVisible;

  @override
  String toString() {
    return 'AmountState(hint: $hint, validationText: $validationText, validAndUnfocused: $validAndUnfocused, tokenButtonVisible: $tokenButtonVisible, maxButtonVisible: $maxButtonVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountState &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.validationText, validationText) ||
                other.validationText == validationText) &&
            (identical(other.validAndUnfocused, validAndUnfocused) ||
                other.validAndUnfocused == validAndUnfocused) &&
            (identical(other.tokenButtonVisible, tokenButtonVisible) ||
                other.tokenButtonVisible == tokenButtonVisible) &&
            (identical(other.maxButtonVisible, maxButtonVisible) ||
                other.maxButtonVisible == maxButtonVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hint, validationText,
      validAndUnfocused, tokenButtonVisible, maxButtonVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountStateCopyWith<_$_AmountState> get copyWith =>
      __$$_AmountStateCopyWithImpl<_$_AmountState>(this, _$identity);
}

abstract class _AmountState implements AmountState {
  const factory _AmountState(
      {final String? hint,
      final String validationText,
      final bool validAndUnfocused,
      final bool tokenButtonVisible,
      final bool maxButtonVisible}) = _$_AmountState;

  @override
  String? get hint;
  @override
  String get validationText;
  @override
  bool get validAndUnfocused;
  @override
  bool get tokenButtonVisible;
  @override
  bool get maxButtonVisible;
  @override
  @JsonKey(ignore: true)
  _$$_AmountStateCopyWith<_$_AmountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  String? get hint => throw _privateConstructorUsedError;
  String get validationText => throw _privateConstructorUsedError;
  bool get validAndUnfocused => throw _privateConstructorUsedError;
  bool get contactButtonVisible => throw _privateConstructorUsedError;
  bool get pasteButtonVisible => throw _privateConstructorUsedError;
  List<Contact> get contacts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool contactButtonVisible,
      bool pasteButtonVisible,
      List<Contact> contacts});
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = null,
    Object? validAndUnfocused = null,
    Object? contactButtonVisible = null,
    Object? pasteButtonVisible = null,
    Object? contacts = null,
  }) {
    return _then(_value.copyWith(
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: null == validationText
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: null == validAndUnfocused
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      contactButtonVisible: null == contactButtonVisible
          ? _value.contactButtonVisible
          : contactButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: null == pasteButtonVisible
          ? _value.pasteButtonVisible
          : pasteButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressStateCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$_AddressStateCopyWith(
          _$_AddressState value, $Res Function(_$_AddressState) then) =
      __$$_AddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool contactButtonVisible,
      bool pasteButtonVisible,
      List<Contact> contacts});
}

/// @nodoc
class __$$_AddressStateCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$_AddressState>
    implements _$$_AddressStateCopyWith<$Res> {
  __$$_AddressStateCopyWithImpl(
      _$_AddressState _value, $Res Function(_$_AddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = null,
    Object? validAndUnfocused = null,
    Object? contactButtonVisible = null,
    Object? pasteButtonVisible = null,
    Object? contacts = null,
  }) {
    return _then(_$_AddressState(
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: null == validationText
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: null == validAndUnfocused
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      contactButtonVisible: null == contactButtonVisible
          ? _value.contactButtonVisible
          : contactButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: null == pasteButtonVisible
          ? _value.pasteButtonVisible
          : pasteButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_AddressState implements _AddressState {
  _$_AddressState(
      {this.hint = '',
      this.validationText = '',
      this.validAndUnfocused = false,
      this.contactButtonVisible = true,
      this.pasteButtonVisible = true,
      final List<Contact> contacts = const []})
      : _contacts = contacts;

  @override
  @JsonKey()
  final String? hint;
  @override
  @JsonKey()
  final String validationText;
  @override
  @JsonKey()
  final bool validAndUnfocused;
  @override
  @JsonKey()
  final bool contactButtonVisible;
  @override
  @JsonKey()
  final bool pasteButtonVisible;
  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'AddressState(hint: $hint, validationText: $validationText, validAndUnfocused: $validAndUnfocused, contactButtonVisible: $contactButtonVisible, pasteButtonVisible: $pasteButtonVisible, contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressState &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.validationText, validationText) ||
                other.validationText == validationText) &&
            (identical(other.validAndUnfocused, validAndUnfocused) ||
                other.validAndUnfocused == validAndUnfocused) &&
            (identical(other.contactButtonVisible, contactButtonVisible) ||
                other.contactButtonVisible == contactButtonVisible) &&
            (identical(other.pasteButtonVisible, pasteButtonVisible) ||
                other.pasteButtonVisible == pasteButtonVisible) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hint,
      validationText,
      validAndUnfocused,
      contactButtonVisible,
      pasteButtonVisible,
      const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      __$$_AddressStateCopyWithImpl<_$_AddressState>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  factory _AddressState(
      {final String? hint,
      final String validationText,
      final bool validAndUnfocused,
      final bool contactButtonVisible,
      final bool pasteButtonVisible,
      final List<Contact> contacts}) = _$_AddressState;

  @override
  String? get hint;
  @override
  String get validationText;
  @override
  bool get validAndUnfocused;
  @override
  bool get contactButtonVisible;
  @override
  bool get pasteButtonVisible;
  @override
  List<Contact> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemoState {
  String? get hint => throw _privateConstructorUsedError;
  String get validationText => throw _privateConstructorUsedError;
  bool get validAndUnfocused => throw _privateConstructorUsedError;
  bool get qrButtonVisible => throw _privateConstructorUsedError;
  bool get pasteButtonVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemoStateCopyWith<MemoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoStateCopyWith<$Res> {
  factory $MemoStateCopyWith(MemoState value, $Res Function(MemoState) then) =
      _$MemoStateCopyWithImpl<$Res, MemoState>;
  @useResult
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool qrButtonVisible,
      bool pasteButtonVisible});
}

/// @nodoc
class _$MemoStateCopyWithImpl<$Res, $Val extends MemoState>
    implements $MemoStateCopyWith<$Res> {
  _$MemoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = null,
    Object? validAndUnfocused = null,
    Object? qrButtonVisible = null,
    Object? pasteButtonVisible = null,
  }) {
    return _then(_value.copyWith(
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: null == validationText
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: null == validAndUnfocused
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      qrButtonVisible: null == qrButtonVisible
          ? _value.qrButtonVisible
          : qrButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: null == pasteButtonVisible
          ? _value.pasteButtonVisible
          : pasteButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemoStateCopyWith<$Res> implements $MemoStateCopyWith<$Res> {
  factory _$$_MemoStateCopyWith(
          _$_MemoState value, $Res Function(_$_MemoState) then) =
      __$$_MemoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool qrButtonVisible,
      bool pasteButtonVisible});
}

/// @nodoc
class __$$_MemoStateCopyWithImpl<$Res>
    extends _$MemoStateCopyWithImpl<$Res, _$_MemoState>
    implements _$$_MemoStateCopyWith<$Res> {
  __$$_MemoStateCopyWithImpl(
      _$_MemoState _value, $Res Function(_$_MemoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = null,
    Object? validAndUnfocused = null,
    Object? qrButtonVisible = null,
    Object? pasteButtonVisible = null,
  }) {
    return _then(_$_MemoState(
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: null == validationText
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: null == validAndUnfocused
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      qrButtonVisible: null == qrButtonVisible
          ? _value.qrButtonVisible
          : qrButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: null == pasteButtonVisible
          ? _value.pasteButtonVisible
          : pasteButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MemoState implements _MemoState {
  _$_MemoState(
      {this.hint = '',
      this.validationText = '',
      this.validAndUnfocused = false,
      this.qrButtonVisible = true,
      this.pasteButtonVisible = true});

  @override
  @JsonKey()
  final String? hint;
  @override
  @JsonKey()
  final String validationText;
  @override
  @JsonKey()
  final bool validAndUnfocused;
  @override
  @JsonKey()
  final bool qrButtonVisible;
  @override
  @JsonKey()
  final bool pasteButtonVisible;

  @override
  String toString() {
    return 'MemoState(hint: $hint, validationText: $validationText, validAndUnfocused: $validAndUnfocused, qrButtonVisible: $qrButtonVisible, pasteButtonVisible: $pasteButtonVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemoState &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.validationText, validationText) ||
                other.validationText == validationText) &&
            (identical(other.validAndUnfocused, validAndUnfocused) ||
                other.validAndUnfocused == validAndUnfocused) &&
            (identical(other.qrButtonVisible, qrButtonVisible) ||
                other.qrButtonVisible == qrButtonVisible) &&
            (identical(other.pasteButtonVisible, pasteButtonVisible) ||
                other.pasteButtonVisible == pasteButtonVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hint, validationText,
      validAndUnfocused, qrButtonVisible, pasteButtonVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemoStateCopyWith<_$_MemoState> get copyWith =>
      __$$_MemoStateCopyWithImpl<_$_MemoState>(this, _$identity);
}

abstract class _MemoState implements MemoState {
  factory _MemoState(
      {final String? hint,
      final String validationText,
      final bool validAndUnfocused,
      final bool qrButtonVisible,
      final bool pasteButtonVisible}) = _$_MemoState;

  @override
  String? get hint;
  @override
  String get validationText;
  @override
  bool get validAndUnfocused;
  @override
  bool get qrButtonVisible;
  @override
  bool get pasteButtonVisible;
  @override
  @JsonKey(ignore: true)
  _$$_MemoStateCopyWith<_$_MemoState> get copyWith =>
      throw _privateConstructorUsedError;
}
