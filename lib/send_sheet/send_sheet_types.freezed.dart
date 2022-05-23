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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendSheetStateTearOff {
  const _$SendSheetStateTearOff();

  _SendSheetState call(
      {Address? address,
      Contact? contact,
      BigInt? amount,
      required TokenInfo tokenInfo,
      String memo = '',
      String? data}) {
    return _SendSheetState(
      address: address,
      contact: contact,
      amount: amount,
      tokenInfo: tokenInfo,
      memo: memo,
      data: data,
    );
  }
}

/// @nodoc
const $SendSheetState = _$SendSheetStateTearOff();

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
      _$SendSheetStateCopyWithImpl<$Res>;
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
class _$SendSheetStateCopyWithImpl<$Res>
    implements $SendSheetStateCopyWith<$Res> {
  _$SendSheetStateCopyWithImpl(this._value, this._then);

  final SendSheetState _value;
  // ignore: unused_field
  final $Res Function(SendSheetState) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? contact = freezed,
    Object? amount = freezed,
    Object? tokenInfo = freezed,
    Object? memo = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      tokenInfo: tokenInfo == freezed
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value));
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
abstract class _$SendSheetStateCopyWith<$Res>
    implements $SendSheetStateCopyWith<$Res> {
  factory _$SendSheetStateCopyWith(
          _SendSheetState value, $Res Function(_SendSheetState) then) =
      __$SendSheetStateCopyWithImpl<$Res>;
  @override
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
class __$SendSheetStateCopyWithImpl<$Res>
    extends _$SendSheetStateCopyWithImpl<$Res>
    implements _$SendSheetStateCopyWith<$Res> {
  __$SendSheetStateCopyWithImpl(
      _SendSheetState _value, $Res Function(_SendSheetState) _then)
      : super(_value, (v) => _then(v as _SendSheetState));

  @override
  _SendSheetState get _value => super._value as _SendSheetState;

  @override
  $Res call({
    Object? address = freezed,
    Object? contact = freezed,
    Object? amount = freezed,
    Object? tokenInfo = freezed,
    Object? memo = freezed,
    Object? data = freezed,
  }) {
    return _then(_SendSheetState(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      tokenInfo: tokenInfo == freezed
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
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
  @JsonKey()
  @override
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
            other is _SendSheetState &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.tokenInfo, tokenInfo) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(tokenInfo),
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$SendSheetStateCopyWith<_SendSheetState> get copyWith =>
      __$SendSheetStateCopyWithImpl<_SendSheetState>(this, _$identity);
}

abstract class _SendSheetState implements SendSheetState {
  const factory _SendSheetState(
      {Address? address,
      Contact? contact,
      BigInt? amount,
      required TokenInfo tokenInfo,
      String memo,
      String? data}) = _$_SendSheetState;

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
  _$SendSheetStateCopyWith<_SendSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AmountStateTearOff {
  const _$AmountStateTearOff();

  _AmountState call(
      {String? hint = '',
      String validationText = '',
      bool validAndUnfocused = false,
      bool tokenButtonVisible = true,
      bool maxButtonVisible = true}) {
    return _AmountState(
      hint: hint,
      validationText: validationText,
      validAndUnfocused: validAndUnfocused,
      tokenButtonVisible: tokenButtonVisible,
      maxButtonVisible: maxButtonVisible,
    );
  }
}

/// @nodoc
const $AmountState = _$AmountStateTearOff();

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
      _$AmountStateCopyWithImpl<$Res>;
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool tokenButtonVisible,
      bool maxButtonVisible});
}

/// @nodoc
class _$AmountStateCopyWithImpl<$Res> implements $AmountStateCopyWith<$Res> {
  _$AmountStateCopyWithImpl(this._value, this._then);

  final AmountState _value;
  // ignore: unused_field
  final $Res Function(AmountState) _then;

  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = freezed,
    Object? validAndUnfocused = freezed,
    Object? tokenButtonVisible = freezed,
    Object? maxButtonVisible = freezed,
  }) {
    return _then(_value.copyWith(
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: validationText == freezed
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: validAndUnfocused == freezed
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenButtonVisible: tokenButtonVisible == freezed
          ? _value.tokenButtonVisible
          : tokenButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      maxButtonVisible: maxButtonVisible == freezed
          ? _value.maxButtonVisible
          : maxButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AmountStateCopyWith<$Res>
    implements $AmountStateCopyWith<$Res> {
  factory _$AmountStateCopyWith(
          _AmountState value, $Res Function(_AmountState) then) =
      __$AmountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool tokenButtonVisible,
      bool maxButtonVisible});
}

/// @nodoc
class __$AmountStateCopyWithImpl<$Res> extends _$AmountStateCopyWithImpl<$Res>
    implements _$AmountStateCopyWith<$Res> {
  __$AmountStateCopyWithImpl(
      _AmountState _value, $Res Function(_AmountState) _then)
      : super(_value, (v) => _then(v as _AmountState));

  @override
  _AmountState get _value => super._value as _AmountState;

  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = freezed,
    Object? validAndUnfocused = freezed,
    Object? tokenButtonVisible = freezed,
    Object? maxButtonVisible = freezed,
  }) {
    return _then(_AmountState(
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: validationText == freezed
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: validAndUnfocused == freezed
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenButtonVisible: tokenButtonVisible == freezed
          ? _value.tokenButtonVisible
          : tokenButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      maxButtonVisible: maxButtonVisible == freezed
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

  @JsonKey()
  @override
  final String? hint;
  @JsonKey()
  @override
  final String validationText;
  @JsonKey()
  @override
  final bool validAndUnfocused;
  @JsonKey()
  @override
  final bool tokenButtonVisible;
  @JsonKey()
  @override
  final bool maxButtonVisible;

  @override
  String toString() {
    return 'AmountState(hint: $hint, validationText: $validationText, validAndUnfocused: $validAndUnfocused, tokenButtonVisible: $tokenButtonVisible, maxButtonVisible: $maxButtonVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AmountState &&
            const DeepCollectionEquality().equals(other.hint, hint) &&
            const DeepCollectionEquality()
                .equals(other.validationText, validationText) &&
            const DeepCollectionEquality()
                .equals(other.validAndUnfocused, validAndUnfocused) &&
            const DeepCollectionEquality()
                .equals(other.tokenButtonVisible, tokenButtonVisible) &&
            const DeepCollectionEquality()
                .equals(other.maxButtonVisible, maxButtonVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hint),
      const DeepCollectionEquality().hash(validationText),
      const DeepCollectionEquality().hash(validAndUnfocused),
      const DeepCollectionEquality().hash(tokenButtonVisible),
      const DeepCollectionEquality().hash(maxButtonVisible));

  @JsonKey(ignore: true)
  @override
  _$AmountStateCopyWith<_AmountState> get copyWith =>
      __$AmountStateCopyWithImpl<_AmountState>(this, _$identity);
}

abstract class _AmountState implements AmountState {
  const factory _AmountState(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool tokenButtonVisible,
      bool maxButtonVisible}) = _$_AmountState;

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
  _$AmountStateCopyWith<_AmountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddressStateTearOff {
  const _$AddressStateTearOff();

  _AddressState call(
      {String? hint = '',
      String validationText = '',
      bool validAndUnfocused = false,
      bool contactButtonVisible = true,
      bool pasteButtonVisible = true,
      List<Contact> contacts = const []}) {
    return _AddressState(
      hint: hint,
      validationText: validationText,
      validAndUnfocused: validAndUnfocused,
      contactButtonVisible: contactButtonVisible,
      pasteButtonVisible: pasteButtonVisible,
      contacts: contacts,
    );
  }
}

/// @nodoc
const $AddressState = _$AddressStateTearOff();

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
      _$AddressStateCopyWithImpl<$Res>;
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool contactButtonVisible,
      bool pasteButtonVisible,
      List<Contact> contacts});
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res> implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  final AddressState _value;
  // ignore: unused_field
  final $Res Function(AddressState) _then;

  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = freezed,
    Object? validAndUnfocused = freezed,
    Object? contactButtonVisible = freezed,
    Object? pasteButtonVisible = freezed,
    Object? contacts = freezed,
  }) {
    return _then(_value.copyWith(
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: validationText == freezed
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: validAndUnfocused == freezed
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      contactButtonVisible: contactButtonVisible == freezed
          ? _value.contactButtonVisible
          : contactButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: pasteButtonVisible == freezed
          ? _value.pasteButtonVisible
          : pasteButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc
abstract class _$AddressStateCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$AddressStateCopyWith(
          _AddressState value, $Res Function(_AddressState) then) =
      __$AddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool contactButtonVisible,
      bool pasteButtonVisible,
      List<Contact> contacts});
}

/// @nodoc
class __$AddressStateCopyWithImpl<$Res> extends _$AddressStateCopyWithImpl<$Res>
    implements _$AddressStateCopyWith<$Res> {
  __$AddressStateCopyWithImpl(
      _AddressState _value, $Res Function(_AddressState) _then)
      : super(_value, (v) => _then(v as _AddressState));

  @override
  _AddressState get _value => super._value as _AddressState;

  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = freezed,
    Object? validAndUnfocused = freezed,
    Object? contactButtonVisible = freezed,
    Object? pasteButtonVisible = freezed,
    Object? contacts = freezed,
  }) {
    return _then(_AddressState(
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: validationText == freezed
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: validAndUnfocused == freezed
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      contactButtonVisible: contactButtonVisible == freezed
          ? _value.contactButtonVisible
          : contactButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: pasteButtonVisible == freezed
          ? _value.pasteButtonVisible
          : pasteButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      contacts: contacts == freezed
          ? _value.contacts
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
      this.contacts = const []});

  @JsonKey()
  @override
  final String? hint;
  @JsonKey()
  @override
  final String validationText;
  @JsonKey()
  @override
  final bool validAndUnfocused;
  @JsonKey()
  @override
  final bool contactButtonVisible;
  @JsonKey()
  @override
  final bool pasteButtonVisible;
  @JsonKey()
  @override
  final List<Contact> contacts;

  @override
  String toString() {
    return 'AddressState(hint: $hint, validationText: $validationText, validAndUnfocused: $validAndUnfocused, contactButtonVisible: $contactButtonVisible, pasteButtonVisible: $pasteButtonVisible, contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressState &&
            const DeepCollectionEquality().equals(other.hint, hint) &&
            const DeepCollectionEquality()
                .equals(other.validationText, validationText) &&
            const DeepCollectionEquality()
                .equals(other.validAndUnfocused, validAndUnfocused) &&
            const DeepCollectionEquality()
                .equals(other.contactButtonVisible, contactButtonVisible) &&
            const DeepCollectionEquality()
                .equals(other.pasteButtonVisible, pasteButtonVisible) &&
            const DeepCollectionEquality().equals(other.contacts, contacts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hint),
      const DeepCollectionEquality().hash(validationText),
      const DeepCollectionEquality().hash(validAndUnfocused),
      const DeepCollectionEquality().hash(contactButtonVisible),
      const DeepCollectionEquality().hash(pasteButtonVisible),
      const DeepCollectionEquality().hash(contacts));

  @JsonKey(ignore: true)
  @override
  _$AddressStateCopyWith<_AddressState> get copyWith =>
      __$AddressStateCopyWithImpl<_AddressState>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  factory _AddressState(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool contactButtonVisible,
      bool pasteButtonVisible,
      List<Contact> contacts}) = _$_AddressState;

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
  _$AddressStateCopyWith<_AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MemoStateTearOff {
  const _$MemoStateTearOff();

  _MemoState call(
      {String? hint = '',
      String validationText = '',
      bool validAndUnfocused = false,
      bool qrButtonVisible = true,
      bool pasteButtonVisible = true}) {
    return _MemoState(
      hint: hint,
      validationText: validationText,
      validAndUnfocused: validAndUnfocused,
      qrButtonVisible: qrButtonVisible,
      pasteButtonVisible: pasteButtonVisible,
    );
  }
}

/// @nodoc
const $MemoState = _$MemoStateTearOff();

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
      _$MemoStateCopyWithImpl<$Res>;
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool qrButtonVisible,
      bool pasteButtonVisible});
}

/// @nodoc
class _$MemoStateCopyWithImpl<$Res> implements $MemoStateCopyWith<$Res> {
  _$MemoStateCopyWithImpl(this._value, this._then);

  final MemoState _value;
  // ignore: unused_field
  final $Res Function(MemoState) _then;

  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = freezed,
    Object? validAndUnfocused = freezed,
    Object? qrButtonVisible = freezed,
    Object? pasteButtonVisible = freezed,
  }) {
    return _then(_value.copyWith(
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: validationText == freezed
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: validAndUnfocused == freezed
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      qrButtonVisible: qrButtonVisible == freezed
          ? _value.qrButtonVisible
          : qrButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: pasteButtonVisible == freezed
          ? _value.pasteButtonVisible
          : pasteButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MemoStateCopyWith<$Res> implements $MemoStateCopyWith<$Res> {
  factory _$MemoStateCopyWith(
          _MemoState value, $Res Function(_MemoState) then) =
      __$MemoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool qrButtonVisible,
      bool pasteButtonVisible});
}

/// @nodoc
class __$MemoStateCopyWithImpl<$Res> extends _$MemoStateCopyWithImpl<$Res>
    implements _$MemoStateCopyWith<$Res> {
  __$MemoStateCopyWithImpl(_MemoState _value, $Res Function(_MemoState) _then)
      : super(_value, (v) => _then(v as _MemoState));

  @override
  _MemoState get _value => super._value as _MemoState;

  @override
  $Res call({
    Object? hint = freezed,
    Object? validationText = freezed,
    Object? validAndUnfocused = freezed,
    Object? qrButtonVisible = freezed,
    Object? pasteButtonVisible = freezed,
  }) {
    return _then(_MemoState(
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      validationText: validationText == freezed
          ? _value.validationText
          : validationText // ignore: cast_nullable_to_non_nullable
              as String,
      validAndUnfocused: validAndUnfocused == freezed
          ? _value.validAndUnfocused
          : validAndUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      qrButtonVisible: qrButtonVisible == freezed
          ? _value.qrButtonVisible
          : qrButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pasteButtonVisible: pasteButtonVisible == freezed
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

  @JsonKey()
  @override
  final String? hint;
  @JsonKey()
  @override
  final String validationText;
  @JsonKey()
  @override
  final bool validAndUnfocused;
  @JsonKey()
  @override
  final bool qrButtonVisible;
  @JsonKey()
  @override
  final bool pasteButtonVisible;

  @override
  String toString() {
    return 'MemoState(hint: $hint, validationText: $validationText, validAndUnfocused: $validAndUnfocused, qrButtonVisible: $qrButtonVisible, pasteButtonVisible: $pasteButtonVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemoState &&
            const DeepCollectionEquality().equals(other.hint, hint) &&
            const DeepCollectionEquality()
                .equals(other.validationText, validationText) &&
            const DeepCollectionEquality()
                .equals(other.validAndUnfocused, validAndUnfocused) &&
            const DeepCollectionEquality()
                .equals(other.qrButtonVisible, qrButtonVisible) &&
            const DeepCollectionEquality()
                .equals(other.pasteButtonVisible, pasteButtonVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hint),
      const DeepCollectionEquality().hash(validationText),
      const DeepCollectionEquality().hash(validAndUnfocused),
      const DeepCollectionEquality().hash(qrButtonVisible),
      const DeepCollectionEquality().hash(pasteButtonVisible));

  @JsonKey(ignore: true)
  @override
  _$MemoStateCopyWith<_MemoState> get copyWith =>
      __$MemoStateCopyWithImpl<_MemoState>(this, _$identity);
}

abstract class _MemoState implements MemoState {
  factory _MemoState(
      {String? hint,
      String validationText,
      bool validAndUnfocused,
      bool qrButtonVisible,
      bool pasteButtonVisible}) = _$_MemoState;

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
  _$MemoStateCopyWith<_MemoState> get copyWith =>
      throw _privateConstructorUsedError;
}
