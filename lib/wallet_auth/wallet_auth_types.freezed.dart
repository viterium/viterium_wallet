// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_auth_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletStatusTearOff {
  const _$WalletStatusTearOff();

  _WalletStatusNoWallets noWallets() {
    return const _WalletStatusNoWallets();
  }

  _WalletStatusNoSelection noSelection({required IList<WalletInfo> wallets}) {
    return _WalletStatusNoSelection(
      wallets: wallets,
    );
  }

  _WalletStatusSelected selected({required WalletInfo wallet}) {
    return _WalletStatusSelected(
      wallet: wallet,
    );
  }
}

/// @nodoc
const $WalletStatus = _$WalletStatusTearOff();

/// @nodoc
mixin _$WalletStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStatusCopyWith<$Res> {
  factory $WalletStatusCopyWith(
          WalletStatus value, $Res Function(WalletStatus) then) =
      _$WalletStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletStatusCopyWithImpl<$Res> implements $WalletStatusCopyWith<$Res> {
  _$WalletStatusCopyWithImpl(this._value, this._then);

  final WalletStatus _value;
  // ignore: unused_field
  final $Res Function(WalletStatus) _then;
}

/// @nodoc
abstract class _$WalletStatusNoWalletsCopyWith<$Res> {
  factory _$WalletStatusNoWalletsCopyWith(_WalletStatusNoWallets value,
          $Res Function(_WalletStatusNoWallets) then) =
      __$WalletStatusNoWalletsCopyWithImpl<$Res>;
}

/// @nodoc
class __$WalletStatusNoWalletsCopyWithImpl<$Res>
    extends _$WalletStatusCopyWithImpl<$Res>
    implements _$WalletStatusNoWalletsCopyWith<$Res> {
  __$WalletStatusNoWalletsCopyWithImpl(_WalletStatusNoWallets _value,
      $Res Function(_WalletStatusNoWallets) _then)
      : super(_value, (v) => _then(v as _WalletStatusNoWallets));

  @override
  _WalletStatusNoWallets get _value => super._value as _WalletStatusNoWallets;
}

/// @nodoc

class _$_WalletStatusNoWallets implements _WalletStatusNoWallets {
  const _$_WalletStatusNoWallets();

  @override
  String toString() {
    return 'WalletStatus.noWallets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WalletStatusNoWallets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) {
    return noWallets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
  }) {
    return noWallets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) {
    if (noWallets != null) {
      return noWallets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) {
    return noWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
  }) {
    return noWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) {
    if (noWallets != null) {
      return noWallets(this);
    }
    return orElse();
  }
}

abstract class _WalletStatusNoWallets implements WalletStatus {
  const factory _WalletStatusNoWallets() = _$_WalletStatusNoWallets;
}

/// @nodoc
abstract class _$WalletStatusNoSelectionCopyWith<$Res> {
  factory _$WalletStatusNoSelectionCopyWith(_WalletStatusNoSelection value,
          $Res Function(_WalletStatusNoSelection) then) =
      __$WalletStatusNoSelectionCopyWithImpl<$Res>;
  $Res call({IList<WalletInfo> wallets});
}

/// @nodoc
class __$WalletStatusNoSelectionCopyWithImpl<$Res>
    extends _$WalletStatusCopyWithImpl<$Res>
    implements _$WalletStatusNoSelectionCopyWith<$Res> {
  __$WalletStatusNoSelectionCopyWithImpl(_WalletStatusNoSelection _value,
      $Res Function(_WalletStatusNoSelection) _then)
      : super(_value, (v) => _then(v as _WalletStatusNoSelection));

  @override
  _WalletStatusNoSelection get _value =>
      super._value as _WalletStatusNoSelection;

  @override
  $Res call({
    Object? wallets = freezed,
  }) {
    return _then(_WalletStatusNoSelection(
      wallets: wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>,
    ));
  }
}

/// @nodoc

class _$_WalletStatusNoSelection implements _WalletStatusNoSelection {
  const _$_WalletStatusNoSelection({required this.wallets});

  @override
  final IList<WalletInfo> wallets;

  @override
  String toString() {
    return 'WalletStatus.noSelection(wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletStatusNoSelection &&
            const DeepCollectionEquality().equals(other.wallets, wallets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallets));

  @JsonKey(ignore: true)
  @override
  _$WalletStatusNoSelectionCopyWith<_WalletStatusNoSelection> get copyWith =>
      __$WalletStatusNoSelectionCopyWithImpl<_WalletStatusNoSelection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) {
    return noSelection(wallets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
  }) {
    return noSelection?.call(wallets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) {
    if (noSelection != null) {
      return noSelection(wallets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) {
    return noSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
  }) {
    return noSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) {
    if (noSelection != null) {
      return noSelection(this);
    }
    return orElse();
  }
}

abstract class _WalletStatusNoSelection implements WalletStatus {
  const factory _WalletStatusNoSelection({required IList<WalletInfo> wallets}) =
      _$_WalletStatusNoSelection;

  IList<WalletInfo> get wallets;
  @JsonKey(ignore: true)
  _$WalletStatusNoSelectionCopyWith<_WalletStatusNoSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WalletStatusSelectedCopyWith<$Res> {
  factory _$WalletStatusSelectedCopyWith(_WalletStatusSelected value,
          $Res Function(_WalletStatusSelected) then) =
      __$WalletStatusSelectedCopyWithImpl<$Res>;
  $Res call({WalletInfo wallet});

  $WalletInfoCopyWith<$Res> get wallet;
}

/// @nodoc
class __$WalletStatusSelectedCopyWithImpl<$Res>
    extends _$WalletStatusCopyWithImpl<$Res>
    implements _$WalletStatusSelectedCopyWith<$Res> {
  __$WalletStatusSelectedCopyWithImpl(
      _WalletStatusSelected _value, $Res Function(_WalletStatusSelected) _then)
      : super(_value, (v) => _then(v as _WalletStatusSelected));

  @override
  _WalletStatusSelected get _value => super._value as _WalletStatusSelected;

  @override
  $Res call({
    Object? wallet = freezed,
  }) {
    return _then(_WalletStatusSelected(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
    ));
  }

  @override
  $WalletInfoCopyWith<$Res> get wallet {
    return $WalletInfoCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc

class _$_WalletStatusSelected implements _WalletStatusSelected {
  const _$_WalletStatusSelected({required this.wallet});

  @override
  final WalletInfo wallet;

  @override
  String toString() {
    return 'WalletStatus.selected(wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletStatusSelected &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  _$WalletStatusSelectedCopyWith<_WalletStatusSelected> get copyWith =>
      __$WalletStatusSelectedCopyWithImpl<_WalletStatusSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noWallets,
    required TResult Function(IList<WalletInfo> wallets) noSelection,
    required TResult Function(WalletInfo wallet) selected,
  }) {
    return selected(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
  }) {
    return selected?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noWallets,
    TResult Function(IList<WalletInfo> wallets)? noSelection,
    TResult Function(WalletInfo wallet)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletStatusNoWallets value) noWallets,
    required TResult Function(_WalletStatusNoSelection value) noSelection,
    required TResult Function(_WalletStatusSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletStatusNoWallets value)? noWallets,
    TResult Function(_WalletStatusNoSelection value)? noSelection,
    TResult Function(_WalletStatusSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _WalletStatusSelected implements WalletStatus {
  const factory _WalletStatusSelected({required WalletInfo wallet}) =
      _$_WalletStatusSelected;

  WalletInfo get wallet;
  @JsonKey(ignore: true)
  _$WalletStatusSelectedCopyWith<_WalletStatusSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WalletAuthTearOff {
  const _$WalletAuthTearOff();

  _WalletAuth call(
      {required WalletInfo wallet,
      String? encryptedSecret,
      bool isLocked = true,
      bool isEncrypted = false,
      bool hasMnemonic = false}) {
    return _WalletAuth(
      wallet: wallet,
      encryptedSecret: encryptedSecret,
      isLocked: isLocked,
      isEncrypted: isEncrypted,
      hasMnemonic: hasMnemonic,
    );
  }
}

/// @nodoc
const $WalletAuth = _$WalletAuthTearOff();

/// @nodoc
mixin _$WalletAuth {
  WalletInfo get wallet => throw _privateConstructorUsedError;
  String? get encryptedSecret => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  bool get isEncrypted => throw _privateConstructorUsedError;
  bool get hasMnemonic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletAuthCopyWith<WalletAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletAuthCopyWith<$Res> {
  factory $WalletAuthCopyWith(
          WalletAuth value, $Res Function(WalletAuth) then) =
      _$WalletAuthCopyWithImpl<$Res>;
  $Res call(
      {WalletInfo wallet,
      String? encryptedSecret,
      bool isLocked,
      bool isEncrypted,
      bool hasMnemonic});

  $WalletInfoCopyWith<$Res> get wallet;
}

/// @nodoc
class _$WalletAuthCopyWithImpl<$Res> implements $WalletAuthCopyWith<$Res> {
  _$WalletAuthCopyWithImpl(this._value, this._then);

  final WalletAuth _value;
  // ignore: unused_field
  final $Res Function(WalletAuth) _then;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? encryptedSecret = freezed,
    Object? isLocked = freezed,
    Object? isEncrypted = freezed,
    Object? hasMnemonic = freezed,
  }) {
    return _then(_value.copyWith(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
      encryptedSecret: encryptedSecret == freezed
          ? _value.encryptedSecret
          : encryptedSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocked: isLocked == freezed
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isEncrypted: isEncrypted == freezed
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMnemonic: hasMnemonic == freezed
          ? _value.hasMnemonic
          : hasMnemonic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $WalletInfoCopyWith<$Res> get wallet {
    return $WalletInfoCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$WalletAuthCopyWith<$Res> implements $WalletAuthCopyWith<$Res> {
  factory _$WalletAuthCopyWith(
          _WalletAuth value, $Res Function(_WalletAuth) then) =
      __$WalletAuthCopyWithImpl<$Res>;
  @override
  $Res call(
      {WalletInfo wallet,
      String? encryptedSecret,
      bool isLocked,
      bool isEncrypted,
      bool hasMnemonic});

  @override
  $WalletInfoCopyWith<$Res> get wallet;
}

/// @nodoc
class __$WalletAuthCopyWithImpl<$Res> extends _$WalletAuthCopyWithImpl<$Res>
    implements _$WalletAuthCopyWith<$Res> {
  __$WalletAuthCopyWithImpl(
      _WalletAuth _value, $Res Function(_WalletAuth) _then)
      : super(_value, (v) => _then(v as _WalletAuth));

  @override
  _WalletAuth get _value => super._value as _WalletAuth;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? encryptedSecret = freezed,
    Object? isLocked = freezed,
    Object? isEncrypted = freezed,
    Object? hasMnemonic = freezed,
  }) {
    return _then(_WalletAuth(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
      encryptedSecret: encryptedSecret == freezed
          ? _value.encryptedSecret
          : encryptedSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocked: isLocked == freezed
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isEncrypted: isEncrypted == freezed
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMnemonic: hasMnemonic == freezed
          ? _value.hasMnemonic
          : hasMnemonic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WalletAuth implements _WalletAuth {
  const _$_WalletAuth(
      {required this.wallet,
      this.encryptedSecret,
      this.isLocked = true,
      this.isEncrypted = false,
      this.hasMnemonic = false});

  @override
  final WalletInfo wallet;
  @override
  final String? encryptedSecret;
  @JsonKey()
  @override
  final bool isLocked;
  @JsonKey()
  @override
  final bool isEncrypted;
  @JsonKey()
  @override
  final bool hasMnemonic;

  @override
  String toString() {
    return 'WalletAuth(wallet: $wallet, encryptedSecret: $encryptedSecret, isLocked: $isLocked, isEncrypted: $isEncrypted, hasMnemonic: $hasMnemonic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletAuth &&
            const DeepCollectionEquality().equals(other.wallet, wallet) &&
            const DeepCollectionEquality()
                .equals(other.encryptedSecret, encryptedSecret) &&
            const DeepCollectionEquality().equals(other.isLocked, isLocked) &&
            const DeepCollectionEquality()
                .equals(other.isEncrypted, isEncrypted) &&
            const DeepCollectionEquality()
                .equals(other.hasMnemonic, hasMnemonic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wallet),
      const DeepCollectionEquality().hash(encryptedSecret),
      const DeepCollectionEquality().hash(isLocked),
      const DeepCollectionEquality().hash(isEncrypted),
      const DeepCollectionEquality().hash(hasMnemonic));

  @JsonKey(ignore: true)
  @override
  _$WalletAuthCopyWith<_WalletAuth> get copyWith =>
      __$WalletAuthCopyWithImpl<_WalletAuth>(this, _$identity);
}

abstract class _WalletAuth implements WalletAuth {
  const factory _WalletAuth(
      {required WalletInfo wallet,
      String? encryptedSecret,
      bool isLocked,
      bool isEncrypted,
      bool hasMnemonic}) = _$_WalletAuth;

  @override
  WalletInfo get wallet;
  @override
  String? get encryptedSecret;
  @override
  bool get isLocked;
  @override
  bool get isEncrypted;
  @override
  bool get hasMnemonic;
  @override
  @JsonKey(ignore: true)
  _$WalletAuthCopyWith<_WalletAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
