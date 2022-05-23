// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'intro_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IntroStateTearOff {
  const _$IntroStateTearOff();

  _IntroStateInit init() {
    return const _IntroStateInit();
  }

  _IntroStatePush push({required IntroPage page}) {
    return _IntroStatePush(
      page: page,
    );
  }

  _IntroStatePop pop() {
    return const _IntroStatePop();
  }
}

/// @nodoc
const $IntroState = _$IntroStateTearOff();

/// @nodoc
mixin _$IntroState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(IntroPage page) push,
    required TResult Function() pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntroStateInit value) init,
    required TResult Function(_IntroStatePush value) push,
    required TResult Function(_IntroStatePop value) pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroStateCopyWith<$Res> {
  factory $IntroStateCopyWith(
          IntroState value, $Res Function(IntroState) then) =
      _$IntroStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IntroStateCopyWithImpl<$Res> implements $IntroStateCopyWith<$Res> {
  _$IntroStateCopyWithImpl(this._value, this._then);

  final IntroState _value;
  // ignore: unused_field
  final $Res Function(IntroState) _then;
}

/// @nodoc
abstract class _$IntroStateInitCopyWith<$Res> {
  factory _$IntroStateInitCopyWith(
          _IntroStateInit value, $Res Function(_IntroStateInit) then) =
      __$IntroStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$IntroStateInitCopyWithImpl<$Res> extends _$IntroStateCopyWithImpl<$Res>
    implements _$IntroStateInitCopyWith<$Res> {
  __$IntroStateInitCopyWithImpl(
      _IntroStateInit _value, $Res Function(_IntroStateInit) _then)
      : super(_value, (v) => _then(v as _IntroStateInit));

  @override
  _IntroStateInit get _value => super._value as _IntroStateInit;
}

/// @nodoc

class _$_IntroStateInit implements _IntroStateInit {
  const _$_IntroStateInit();

  @override
  String toString() {
    return 'IntroState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IntroStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(IntroPage page) push,
    required TResult Function() pop,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntroStateInit value) init,
    required TResult Function(_IntroStatePush value) push,
    required TResult Function(_IntroStatePop value) pop,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _IntroStateInit implements IntroState {
  const factory _IntroStateInit() = _$_IntroStateInit;
}

/// @nodoc
abstract class _$IntroStatePushCopyWith<$Res> {
  factory _$IntroStatePushCopyWith(
          _IntroStatePush value, $Res Function(_IntroStatePush) then) =
      __$IntroStatePushCopyWithImpl<$Res>;
  $Res call({IntroPage page});
}

/// @nodoc
class __$IntroStatePushCopyWithImpl<$Res> extends _$IntroStateCopyWithImpl<$Res>
    implements _$IntroStatePushCopyWith<$Res> {
  __$IntroStatePushCopyWithImpl(
      _IntroStatePush _value, $Res Function(_IntroStatePush) _then)
      : super(_value, (v) => _then(v as _IntroStatePush));

  @override
  _IntroStatePush get _value => super._value as _IntroStatePush;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_IntroStatePush(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as IntroPage,
    ));
  }
}

/// @nodoc

class _$_IntroStatePush implements _IntroStatePush {
  const _$_IntroStatePush({required this.page});

  @override
  final IntroPage page;

  @override
  String toString() {
    return 'IntroState.push(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntroStatePush &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$IntroStatePushCopyWith<_IntroStatePush> get copyWith =>
      __$IntroStatePushCopyWithImpl<_IntroStatePush>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(IntroPage page) push,
    required TResult Function() pop,
  }) {
    return push(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
  }) {
    return push?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntroStateInit value) init,
    required TResult Function(_IntroStatePush value) push,
    required TResult Function(_IntroStatePop value) pop,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class _IntroStatePush implements IntroState {
  const factory _IntroStatePush({required IntroPage page}) = _$_IntroStatePush;

  IntroPage get page;
  @JsonKey(ignore: true)
  _$IntroStatePushCopyWith<_IntroStatePush> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IntroStatePopCopyWith<$Res> {
  factory _$IntroStatePopCopyWith(
          _IntroStatePop value, $Res Function(_IntroStatePop) then) =
      __$IntroStatePopCopyWithImpl<$Res>;
}

/// @nodoc
class __$IntroStatePopCopyWithImpl<$Res> extends _$IntroStateCopyWithImpl<$Res>
    implements _$IntroStatePopCopyWith<$Res> {
  __$IntroStatePopCopyWithImpl(
      _IntroStatePop _value, $Res Function(_IntroStatePop) _then)
      : super(_value, (v) => _then(v as _IntroStatePop));

  @override
  _IntroStatePop get _value => super._value as _IntroStatePop;
}

/// @nodoc

class _$_IntroStatePop implements _IntroStatePop {
  const _$_IntroStatePop();

  @override
  String toString() {
    return 'IntroState.pop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IntroStatePop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(IntroPage page) push,
    required TResult Function() pop,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
  }) {
    return pop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(IntroPage page)? push,
    TResult Function()? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntroStateInit value) init,
    required TResult Function(_IntroStatePush value) push,
    required TResult Function(_IntroStatePop value) pop,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntroStateInit value)? init,
    TResult Function(_IntroStatePush value)? push,
    TResult Function(_IntroStatePop value)? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class _IntroStatePop implements IntroState {
  const factory _IntroStatePop() = _$_IntroStatePop;
}

/// @nodoc
class _$IntroDataTearOff {
  const _$IntroDataTearOff();

  _IntroData call(
      {String? mnemonic,
      String? userSeed,
      Future<String>? seed,
      String? name,
      String? pin,
      String? password,
      bool generated = false,
      bool completed = false}) {
    return _IntroData(
      mnemonic: mnemonic,
      userSeed: userSeed,
      seed: seed,
      name: name,
      pin: pin,
      password: password,
      generated: generated,
      completed: completed,
    );
  }
}

/// @nodoc
const $IntroData = _$IntroDataTearOff();

/// @nodoc
mixin _$IntroData {
  String? get mnemonic => throw _privateConstructorUsedError;
  String? get userSeed => throw _privateConstructorUsedError;
  Future<String>? get seed => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool get generated => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroDataCopyWith<IntroData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroDataCopyWith<$Res> {
  factory $IntroDataCopyWith(IntroData value, $Res Function(IntroData) then) =
      _$IntroDataCopyWithImpl<$Res>;
  $Res call(
      {String? mnemonic,
      String? userSeed,
      Future<String>? seed,
      String? name,
      String? pin,
      String? password,
      bool generated,
      bool completed});
}

/// @nodoc
class _$IntroDataCopyWithImpl<$Res> implements $IntroDataCopyWith<$Res> {
  _$IntroDataCopyWithImpl(this._value, this._then);

  final IntroData _value;
  // ignore: unused_field
  final $Res Function(IntroData) _then;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? userSeed = freezed,
    Object? seed = freezed,
    Object? name = freezed,
    Object? pin = freezed,
    Object? password = freezed,
    Object? generated = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      userSeed: userSeed == freezed
          ? _value.userSeed
          : userSeed // ignore: cast_nullable_to_non_nullable
              as String?,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as Future<String>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      generated: generated == freezed
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$IntroDataCopyWith<$Res> implements $IntroDataCopyWith<$Res> {
  factory _$IntroDataCopyWith(
          _IntroData value, $Res Function(_IntroData) then) =
      __$IntroDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? mnemonic,
      String? userSeed,
      Future<String>? seed,
      String? name,
      String? pin,
      String? password,
      bool generated,
      bool completed});
}

/// @nodoc
class __$IntroDataCopyWithImpl<$Res> extends _$IntroDataCopyWithImpl<$Res>
    implements _$IntroDataCopyWith<$Res> {
  __$IntroDataCopyWithImpl(_IntroData _value, $Res Function(_IntroData) _then)
      : super(_value, (v) => _then(v as _IntroData));

  @override
  _IntroData get _value => super._value as _IntroData;

  @override
  $Res call({
    Object? mnemonic = freezed,
    Object? userSeed = freezed,
    Object? seed = freezed,
    Object? name = freezed,
    Object? pin = freezed,
    Object? password = freezed,
    Object? generated = freezed,
    Object? completed = freezed,
  }) {
    return _then(_IntroData(
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      userSeed: userSeed == freezed
          ? _value.userSeed
          : userSeed // ignore: cast_nullable_to_non_nullable
              as String?,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as Future<String>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      generated: generated == freezed
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IntroData implements _IntroData {
  const _$_IntroData(
      {this.mnemonic,
      this.userSeed,
      this.seed,
      this.name,
      this.pin,
      this.password,
      this.generated = false,
      this.completed = false});

  @override
  final String? mnemonic;
  @override
  final String? userSeed;
  @override
  final Future<String>? seed;
  @override
  final String? name;
  @override
  final String? pin;
  @override
  final String? password;
  @JsonKey()
  @override
  final bool generated;
  @JsonKey()
  @override
  final bool completed;

  @override
  String toString() {
    return 'IntroData(mnemonic: $mnemonic, userSeed: $userSeed, seed: $seed, name: $name, pin: $pin, password: $password, generated: $generated, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntroData &&
            const DeepCollectionEquality().equals(other.mnemonic, mnemonic) &&
            const DeepCollectionEquality().equals(other.userSeed, userSeed) &&
            const DeepCollectionEquality().equals(other.seed, seed) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.pin, pin) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.generated, generated) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mnemonic),
      const DeepCollectionEquality().hash(userSeed),
      const DeepCollectionEquality().hash(seed),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pin),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(generated),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$IntroDataCopyWith<_IntroData> get copyWith =>
      __$IntroDataCopyWithImpl<_IntroData>(this, _$identity);
}

abstract class _IntroData implements IntroData {
  const factory _IntroData(
      {String? mnemonic,
      String? userSeed,
      Future<String>? seed,
      String? name,
      String? pin,
      String? password,
      bool generated,
      bool completed}) = _$_IntroData;

  @override
  String? get mnemonic;
  @override
  String? get userSeed;
  @override
  Future<String>? get seed;
  @override
  String? get name;
  @override
  String? get pin;
  @override
  String? get password;
  @override
  bool get generated;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$IntroDataCopyWith<_IntroData> get copyWith =>
      throw _privateConstructorUsedError;
}
