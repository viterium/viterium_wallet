// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vitens_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VitensEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address minter, String name) mint,
    required TResult Function(Address from, Address to, String name) transfer,
    required TResult Function(String name) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address minter, String name)? mint,
    TResult? Function(Address from, Address to, String name)? transfer,
    TResult? Function(String name)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address minter, String name)? mint,
    TResult Function(Address from, Address to, String name)? transfer,
    TResult Function(String name)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitensEventMint value) mint,
    required TResult Function(_VitensEventTransfer value) transfer,
    required TResult Function(_VitensEventChange value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitensEventMint value)? mint,
    TResult? Function(_VitensEventTransfer value)? transfer,
    TResult? Function(_VitensEventChange value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitensEventMint value)? mint,
    TResult Function(_VitensEventTransfer value)? transfer,
    TResult Function(_VitensEventChange value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitensEventCopyWith<VitensEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitensEventCopyWith<$Res> {
  factory $VitensEventCopyWith(
          VitensEvent value, $Res Function(VitensEvent) then) =
      _$VitensEventCopyWithImpl<$Res, VitensEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$VitensEventCopyWithImpl<$Res, $Val extends VitensEvent>
    implements $VitensEventCopyWith<$Res> {
  _$VitensEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitensEventMintImplCopyWith<$Res>
    implements $VitensEventCopyWith<$Res> {
  factory _$$VitensEventMintImplCopyWith(_$VitensEventMintImpl value,
          $Res Function(_$VitensEventMintImpl) then) =
      __$$VitensEventMintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address minter, String name});

  $AddressCopyWith<$Res> get minter;
}

/// @nodoc
class __$$VitensEventMintImplCopyWithImpl<$Res>
    extends _$VitensEventCopyWithImpl<$Res, _$VitensEventMintImpl>
    implements _$$VitensEventMintImplCopyWith<$Res> {
  __$$VitensEventMintImplCopyWithImpl(
      _$VitensEventMintImpl _value, $Res Function(_$VitensEventMintImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minter = null,
    Object? name = null,
  }) {
    return _then(_$VitensEventMintImpl(
      minter: null == minter
          ? _value.minter
          : minter // ignore: cast_nullable_to_non_nullable
              as Address,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get minter {
    return $AddressCopyWith<$Res>(_value.minter, (value) {
      return _then(_value.copyWith(minter: value));
    });
  }
}

/// @nodoc

class _$VitensEventMintImpl implements _VitensEventMint {
  const _$VitensEventMintImpl({required this.minter, required this.name});

  @override
  final Address minter;
  @override
  final String name;

  @override
  String toString() {
    return 'VitensEvent.mint(minter: $minter, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitensEventMintImpl &&
            (identical(other.minter, minter) || other.minter == minter) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minter, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitensEventMintImplCopyWith<_$VitensEventMintImpl> get copyWith =>
      __$$VitensEventMintImplCopyWithImpl<_$VitensEventMintImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address minter, String name) mint,
    required TResult Function(Address from, Address to, String name) transfer,
    required TResult Function(String name) change,
  }) {
    return mint(minter, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address minter, String name)? mint,
    TResult? Function(Address from, Address to, String name)? transfer,
    TResult? Function(String name)? change,
  }) {
    return mint?.call(minter, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address minter, String name)? mint,
    TResult Function(Address from, Address to, String name)? transfer,
    TResult Function(String name)? change,
    required TResult orElse(),
  }) {
    if (mint != null) {
      return mint(minter, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitensEventMint value) mint,
    required TResult Function(_VitensEventTransfer value) transfer,
    required TResult Function(_VitensEventChange value) change,
  }) {
    return mint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitensEventMint value)? mint,
    TResult? Function(_VitensEventTransfer value)? transfer,
    TResult? Function(_VitensEventChange value)? change,
  }) {
    return mint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitensEventMint value)? mint,
    TResult Function(_VitensEventTransfer value)? transfer,
    TResult Function(_VitensEventChange value)? change,
    required TResult orElse(),
  }) {
    if (mint != null) {
      return mint(this);
    }
    return orElse();
  }
}

abstract class _VitensEventMint implements VitensEvent {
  const factory _VitensEventMint(
      {required final Address minter,
      required final String name}) = _$VitensEventMintImpl;

  Address get minter;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VitensEventMintImplCopyWith<_$VitensEventMintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitensEventTransferImplCopyWith<$Res>
    implements $VitensEventCopyWith<$Res> {
  factory _$$VitensEventTransferImplCopyWith(_$VitensEventTransferImpl value,
          $Res Function(_$VitensEventTransferImpl) then) =
      __$$VitensEventTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address from, Address to, String name});

  $AddressCopyWith<$Res> get from;
  $AddressCopyWith<$Res> get to;
}

/// @nodoc
class __$$VitensEventTransferImplCopyWithImpl<$Res>
    extends _$VitensEventCopyWithImpl<$Res, _$VitensEventTransferImpl>
    implements _$$VitensEventTransferImplCopyWith<$Res> {
  __$$VitensEventTransferImplCopyWithImpl(_$VitensEventTransferImpl _value,
      $Res Function(_$VitensEventTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? name = null,
  }) {
    return _then(_$VitensEventTransferImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Address,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Address,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get from {
    return $AddressCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
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

class _$VitensEventTransferImpl implements _VitensEventTransfer {
  const _$VitensEventTransferImpl(
      {required this.from, required this.to, required this.name});

  @override
  final Address from;
  @override
  final Address to;
  @override
  final String name;

  @override
  String toString() {
    return 'VitensEvent.transfer(from: $from, to: $to, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitensEventTransferImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitensEventTransferImplCopyWith<_$VitensEventTransferImpl> get copyWith =>
      __$$VitensEventTransferImplCopyWithImpl<_$VitensEventTransferImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address minter, String name) mint,
    required TResult Function(Address from, Address to, String name) transfer,
    required TResult Function(String name) change,
  }) {
    return transfer(from, to, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address minter, String name)? mint,
    TResult? Function(Address from, Address to, String name)? transfer,
    TResult? Function(String name)? change,
  }) {
    return transfer?.call(from, to, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address minter, String name)? mint,
    TResult Function(Address from, Address to, String name)? transfer,
    TResult Function(String name)? change,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(from, to, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitensEventMint value) mint,
    required TResult Function(_VitensEventTransfer value) transfer,
    required TResult Function(_VitensEventChange value) change,
  }) {
    return transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitensEventMint value)? mint,
    TResult? Function(_VitensEventTransfer value)? transfer,
    TResult? Function(_VitensEventChange value)? change,
  }) {
    return transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitensEventMint value)? mint,
    TResult Function(_VitensEventTransfer value)? transfer,
    TResult Function(_VitensEventChange value)? change,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(this);
    }
    return orElse();
  }
}

abstract class _VitensEventTransfer implements VitensEvent {
  const factory _VitensEventTransfer(
      {required final Address from,
      required final Address to,
      required final String name}) = _$VitensEventTransferImpl;

  Address get from;
  Address get to;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VitensEventTransferImplCopyWith<_$VitensEventTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitensEventChangeImplCopyWith<$Res>
    implements $VitensEventCopyWith<$Res> {
  factory _$$VitensEventChangeImplCopyWith(_$VitensEventChangeImpl value,
          $Res Function(_$VitensEventChangeImpl) then) =
      __$$VitensEventChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$VitensEventChangeImplCopyWithImpl<$Res>
    extends _$VitensEventCopyWithImpl<$Res, _$VitensEventChangeImpl>
    implements _$$VitensEventChangeImplCopyWith<$Res> {
  __$$VitensEventChangeImplCopyWithImpl(_$VitensEventChangeImpl _value,
      $Res Function(_$VitensEventChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$VitensEventChangeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VitensEventChangeImpl implements _VitensEventChange {
  const _$VitensEventChangeImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'VitensEvent.change(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitensEventChangeImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitensEventChangeImplCopyWith<_$VitensEventChangeImpl> get copyWith =>
      __$$VitensEventChangeImplCopyWithImpl<_$VitensEventChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address minter, String name) mint,
    required TResult Function(Address from, Address to, String name) transfer,
    required TResult Function(String name) change,
  }) {
    return change(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address minter, String name)? mint,
    TResult? Function(Address from, Address to, String name)? transfer,
    TResult? Function(String name)? change,
  }) {
    return change?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address minter, String name)? mint,
    TResult Function(Address from, Address to, String name)? transfer,
    TResult Function(String name)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitensEventMint value) mint,
    required TResult Function(_VitensEventTransfer value) transfer,
    required TResult Function(_VitensEventChange value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitensEventMint value)? mint,
    TResult? Function(_VitensEventTransfer value)? transfer,
    TResult? Function(_VitensEventChange value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitensEventMint value)? mint,
    TResult Function(_VitensEventTransfer value)? transfer,
    TResult Function(_VitensEventChange value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _VitensEventChange implements VitensEvent {
  const factory _VitensEventChange({required final String name}) =
      _$VitensEventChangeImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VitensEventChangeImplCopyWith<_$VitensEventChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VitensState _$VitensStateFromJson(Map<String, dynamic> json) {
  return _VitensState.fromJson(json);
}

/// @nodoc
mixin _$VitensState {
  Map<String, String> get names => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VitensStateCopyWith<VitensState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitensStateCopyWith<$Res> {
  factory $VitensStateCopyWith(
          VitensState value, $Res Function(VitensState) then) =
      _$VitensStateCopyWithImpl<$Res, VitensState>;
  @useResult
  $Res call({Map<String, String> names, int height});
}

/// @nodoc
class _$VitensStateCopyWithImpl<$Res, $Val extends VitensState>
    implements $VitensStateCopyWith<$Res> {
  _$VitensStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitensStateImplCopyWith<$Res>
    implements $VitensStateCopyWith<$Res> {
  factory _$$VitensStateImplCopyWith(
          _$VitensStateImpl value, $Res Function(_$VitensStateImpl) then) =
      __$$VitensStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> names, int height});
}

/// @nodoc
class __$$VitensStateImplCopyWithImpl<$Res>
    extends _$VitensStateCopyWithImpl<$Res, _$VitensStateImpl>
    implements _$$VitensStateImplCopyWith<$Res> {
  __$$VitensStateImplCopyWithImpl(
      _$VitensStateImpl _value, $Res Function(_$VitensStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
    Object? height = null,
  }) {
    return _then(_$VitensStateImpl(
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VitensStateImpl implements _VitensState {
  const _$VitensStateImpl(
      {final Map<String, String> names = const {}, this.height = 0})
      : _names = names;

  factory _$VitensStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VitensStateImplFromJson(json);

  final Map<String, String> _names;
  @override
  @JsonKey()
  Map<String, String> get names {
    if (_names is EqualUnmodifiableMapView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_names);
  }

  @override
  @JsonKey()
  final int height;

  @override
  String toString() {
    return 'VitensState(names: $names, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitensStateImpl &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_names), height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitensStateImplCopyWith<_$VitensStateImpl> get copyWith =>
      __$$VitensStateImplCopyWithImpl<_$VitensStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VitensStateImplToJson(
      this,
    );
  }
}

abstract class _VitensState implements VitensState {
  const factory _VitensState(
      {final Map<String, String> names, final int height}) = _$VitensStateImpl;

  factory _VitensState.fromJson(Map<String, dynamic> json) =
      _$VitensStateImpl.fromJson;

  @override
  Map<String, String> get names;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$VitensStateImplCopyWith<_$VitensStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
