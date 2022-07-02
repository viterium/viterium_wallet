// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletInfo _$WalletInfoFromJson(Map<String, dynamic> json) {
  return _WalletInfo.fromJson(json);
}

/// @nodoc
class _$WalletInfoTearOff {
  const _$WalletInfoTearOff();

  _WalletInfo call(
      {required String name,
      required String wid,
      required String accountsBoxKey,
      required String accountsEncryptionKey,
      required String accountInfoBoxKey,
      required String accountInfoEncryptionKey,
      required String selectionKey,
      required String publicKey}) {
    return _WalletInfo(
      name: name,
      wid: wid,
      accountsBoxKey: accountsBoxKey,
      accountsEncryptionKey: accountsEncryptionKey,
      accountInfoBoxKey: accountInfoBoxKey,
      accountInfoEncryptionKey: accountInfoEncryptionKey,
      selectionKey: selectionKey,
      publicKey: publicKey,
    );
  }

  WalletInfo fromJson(Map<String, Object?> json) {
    return WalletInfo.fromJson(json);
  }
}

/// @nodoc
const $WalletInfo = _$WalletInfoTearOff();

/// @nodoc
mixin _$WalletInfo {
  String get name => throw _privateConstructorUsedError;
  String get wid => throw _privateConstructorUsedError;
  String get accountsBoxKey => throw _privateConstructorUsedError;
  String get accountsEncryptionKey => throw _privateConstructorUsedError;
  String get accountInfoBoxKey => throw _privateConstructorUsedError;
  String get accountInfoEncryptionKey => throw _privateConstructorUsedError;
  String get selectionKey => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletInfoCopyWith<WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInfoCopyWith<$Res> {
  factory $WalletInfoCopyWith(
          WalletInfo value, $Res Function(WalletInfo) then) =
      _$WalletInfoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String wid,
      String accountsBoxKey,
      String accountsEncryptionKey,
      String accountInfoBoxKey,
      String accountInfoEncryptionKey,
      String selectionKey,
      String publicKey});
}

/// @nodoc
class _$WalletInfoCopyWithImpl<$Res> implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._value, this._then);

  final WalletInfo _value;
  // ignore: unused_field
  final $Res Function(WalletInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? wid = freezed,
    Object? accountsBoxKey = freezed,
    Object? accountsEncryptionKey = freezed,
    Object? accountInfoBoxKey = freezed,
    Object? accountInfoEncryptionKey = freezed,
    Object? selectionKey = freezed,
    Object? publicKey = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wid: wid == freezed
          ? _value.wid
          : wid // ignore: cast_nullable_to_non_nullable
              as String,
      accountsBoxKey: accountsBoxKey == freezed
          ? _value.accountsBoxKey
          : accountsBoxKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountsEncryptionKey: accountsEncryptionKey == freezed
          ? _value.accountsEncryptionKey
          : accountsEncryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountInfoBoxKey: accountInfoBoxKey == freezed
          ? _value.accountInfoBoxKey
          : accountInfoBoxKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountInfoEncryptionKey: accountInfoEncryptionKey == freezed
          ? _value.accountInfoEncryptionKey
          : accountInfoEncryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
      selectionKey: selectionKey == freezed
          ? _value.selectionKey
          : selectionKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WalletInfoCopyWith<$Res> implements $WalletInfoCopyWith<$Res> {
  factory _$WalletInfoCopyWith(
          _WalletInfo value, $Res Function(_WalletInfo) then) =
      __$WalletInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String wid,
      String accountsBoxKey,
      String accountsEncryptionKey,
      String accountInfoBoxKey,
      String accountInfoEncryptionKey,
      String selectionKey,
      String publicKey});
}

/// @nodoc
class __$WalletInfoCopyWithImpl<$Res> extends _$WalletInfoCopyWithImpl<$Res>
    implements _$WalletInfoCopyWith<$Res> {
  __$WalletInfoCopyWithImpl(
      _WalletInfo _value, $Res Function(_WalletInfo) _then)
      : super(_value, (v) => _then(v as _WalletInfo));

  @override
  _WalletInfo get _value => super._value as _WalletInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? wid = freezed,
    Object? accountsBoxKey = freezed,
    Object? accountsEncryptionKey = freezed,
    Object? accountInfoBoxKey = freezed,
    Object? accountInfoEncryptionKey = freezed,
    Object? selectionKey = freezed,
    Object? publicKey = freezed,
  }) {
    return _then(_WalletInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wid: wid == freezed
          ? _value.wid
          : wid // ignore: cast_nullable_to_non_nullable
              as String,
      accountsBoxKey: accountsBoxKey == freezed
          ? _value.accountsBoxKey
          : accountsBoxKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountsEncryptionKey: accountsEncryptionKey == freezed
          ? _value.accountsEncryptionKey
          : accountsEncryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountInfoBoxKey: accountInfoBoxKey == freezed
          ? _value.accountInfoBoxKey
          : accountInfoBoxKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountInfoEncryptionKey: accountInfoEncryptionKey == freezed
          ? _value.accountInfoEncryptionKey
          : accountInfoEncryptionKey // ignore: cast_nullable_to_non_nullable
              as String,
      selectionKey: selectionKey == freezed
          ? _value.selectionKey
          : selectionKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletInfo implements _WalletInfo {
  const _$_WalletInfo(
      {required this.name,
      required this.wid,
      required this.accountsBoxKey,
      required this.accountsEncryptionKey,
      required this.accountInfoBoxKey,
      required this.accountInfoEncryptionKey,
      required this.selectionKey,
      required this.publicKey});

  factory _$_WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WalletInfoFromJson(json);

  @override
  final String name;
  @override
  final String wid;
  @override
  final String accountsBoxKey;
  @override
  final String accountsEncryptionKey;
  @override
  final String accountInfoBoxKey;
  @override
  final String accountInfoEncryptionKey;
  @override
  final String selectionKey;
  @override
  final String publicKey;

  @override
  String toString() {
    return 'WalletInfo(name: $name, wid: $wid, accountsBoxKey: $accountsBoxKey, accountsEncryptionKey: $accountsEncryptionKey, accountInfoBoxKey: $accountInfoBoxKey, accountInfoEncryptionKey: $accountInfoEncryptionKey, selectionKey: $selectionKey, publicKey: $publicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.wid, wid) &&
            const DeepCollectionEquality()
                .equals(other.accountsBoxKey, accountsBoxKey) &&
            const DeepCollectionEquality()
                .equals(other.accountsEncryptionKey, accountsEncryptionKey) &&
            const DeepCollectionEquality()
                .equals(other.accountInfoBoxKey, accountInfoBoxKey) &&
            const DeepCollectionEquality().equals(
                other.accountInfoEncryptionKey, accountInfoEncryptionKey) &&
            const DeepCollectionEquality()
                .equals(other.selectionKey, selectionKey) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(wid),
      const DeepCollectionEquality().hash(accountsBoxKey),
      const DeepCollectionEquality().hash(accountsEncryptionKey),
      const DeepCollectionEquality().hash(accountInfoBoxKey),
      const DeepCollectionEquality().hash(accountInfoEncryptionKey),
      const DeepCollectionEquality().hash(selectionKey),
      const DeepCollectionEquality().hash(publicKey));

  @JsonKey(ignore: true)
  @override
  _$WalletInfoCopyWith<_WalletInfo> get copyWith =>
      __$WalletInfoCopyWithImpl<_WalletInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletInfoToJson(this);
  }
}

abstract class _WalletInfo implements WalletInfo {
  const factory _WalletInfo(
      {required String name,
      required String wid,
      required String accountsBoxKey,
      required String accountsEncryptionKey,
      required String accountInfoBoxKey,
      required String accountInfoEncryptionKey,
      required String selectionKey,
      required String publicKey}) = _$_WalletInfo;

  factory _WalletInfo.fromJson(Map<String, dynamic> json) =
      _$_WalletInfo.fromJson;

  @override
  String get name;
  @override
  String get wid;
  @override
  String get accountsBoxKey;
  @override
  String get accountsEncryptionKey;
  @override
  String get accountInfoBoxKey;
  @override
  String get accountInfoEncryptionKey;
  @override
  String get selectionKey;
  @override
  String get publicKey;
  @override
  @JsonKey(ignore: true)
  _$WalletInfoCopyWith<_WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletBundle _$WalletBundleFromJson(Map<String, dynamic> json) {
  return _WalletBundle.fromJson(json);
}

/// @nodoc
class _$WalletBundleTearOff {
  const _$WalletBundleTearOff();

  _WalletBundle call(
      {IList<WalletInfo> wallets = const IListConst<WalletInfo>([]),
      WalletInfo? selected}) {
    return _WalletBundle(
      wallets: wallets,
      selected: selected,
    );
  }

  WalletBundle fromJson(Map<String, Object?> json) {
    return WalletBundle.fromJson(json);
  }
}

/// @nodoc
const $WalletBundle = _$WalletBundleTearOff();

/// @nodoc
mixin _$WalletBundle {
  IList<WalletInfo> get wallets => throw _privateConstructorUsedError;
  WalletInfo? get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletBundleCopyWith<WalletBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBundleCopyWith<$Res> {
  factory $WalletBundleCopyWith(
          WalletBundle value, $Res Function(WalletBundle) then) =
      _$WalletBundleCopyWithImpl<$Res>;
  $Res call({IList<WalletInfo> wallets, WalletInfo? selected});

  $WalletInfoCopyWith<$Res>? get selected;
}

/// @nodoc
class _$WalletBundleCopyWithImpl<$Res> implements $WalletBundleCopyWith<$Res> {
  _$WalletBundleCopyWithImpl(this._value, this._then);

  final WalletBundle _value;
  // ignore: unused_field
  final $Res Function(WalletBundle) _then;

  @override
  $Res call({
    Object? wallets = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      wallets: wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
    ));
  }

  @override
  $WalletInfoCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $WalletInfoCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc
abstract class _$WalletBundleCopyWith<$Res>
    implements $WalletBundleCopyWith<$Res> {
  factory _$WalletBundleCopyWith(
          _WalletBundle value, $Res Function(_WalletBundle) then) =
      __$WalletBundleCopyWithImpl<$Res>;
  @override
  $Res call({IList<WalletInfo> wallets, WalletInfo? selected});

  @override
  $WalletInfoCopyWith<$Res>? get selected;
}

/// @nodoc
class __$WalletBundleCopyWithImpl<$Res> extends _$WalletBundleCopyWithImpl<$Res>
    implements _$WalletBundleCopyWith<$Res> {
  __$WalletBundleCopyWithImpl(
      _WalletBundle _value, $Res Function(_WalletBundle) _then)
      : super(_value, (v) => _then(v as _WalletBundle));

  @override
  _WalletBundle get _value => super._value as _WalletBundle;

  @override
  $Res call({
    Object? wallets = freezed,
    Object? selected = freezed,
  }) {
    return _then(_WalletBundle(
      wallets: wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as IList<WalletInfo>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletBundle implements _WalletBundle {
  const _$_WalletBundle(
      {this.wallets = const IListConst<WalletInfo>([]), this.selected});

  factory _$_WalletBundle.fromJson(Map<String, dynamic> json) =>
      _$$_WalletBundleFromJson(json);

  @JsonKey()
  @override
  final IList<WalletInfo> wallets;
  @override
  final WalletInfo? selected;

  @override
  String toString() {
    return 'WalletBundle(wallets: $wallets, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletBundle &&
            const DeepCollectionEquality().equals(other.wallets, wallets) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wallets),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$WalletBundleCopyWith<_WalletBundle> get copyWith =>
      __$WalletBundleCopyWithImpl<_WalletBundle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletBundleToJson(this);
  }
}

abstract class _WalletBundle implements WalletBundle {
  const factory _WalletBundle(
      {IList<WalletInfo> wallets, WalletInfo? selected}) = _$_WalletBundle;

  factory _WalletBundle.fromJson(Map<String, dynamic> json) =
      _$_WalletBundle.fromJson;

  @override
  IList<WalletInfo> get wallets;
  @override
  WalletInfo? get selected;
  @override
  @JsonKey(ignore: true)
  _$WalletBundleCopyWith<_WalletBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WalletDataTearOff {
  const _$WalletDataTearOff();

  _WalletData call(
      {required String name,
      required String seed,
      String? mnemonic,
      String? password}) {
    return _WalletData(
      name: name,
      seed: seed,
      mnemonic: mnemonic,
      password: password,
    );
  }
}

/// @nodoc
const $WalletData = _$WalletDataTearOff();

/// @nodoc
mixin _$WalletData {
  String get name => throw _privateConstructorUsedError;
  String get seed => throw _privateConstructorUsedError;
  String? get mnemonic => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletDataCopyWith<WalletData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDataCopyWith<$Res> {
  factory $WalletDataCopyWith(
          WalletData value, $Res Function(WalletData) then) =
      _$WalletDataCopyWithImpl<$Res>;
  $Res call({String name, String seed, String? mnemonic, String? password});
}

/// @nodoc
class _$WalletDataCopyWithImpl<$Res> implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(this._value, this._then);

  final WalletData _value;
  // ignore: unused_field
  final $Res Function(WalletData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? seed = freezed,
    Object? mnemonic = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WalletDataCopyWith<$Res> implements $WalletDataCopyWith<$Res> {
  factory _$WalletDataCopyWith(
          _WalletData value, $Res Function(_WalletData) then) =
      __$WalletDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, String seed, String? mnemonic, String? password});
}

/// @nodoc
class __$WalletDataCopyWithImpl<$Res> extends _$WalletDataCopyWithImpl<$Res>
    implements _$WalletDataCopyWith<$Res> {
  __$WalletDataCopyWithImpl(
      _WalletData _value, $Res Function(_WalletData) _then)
      : super(_value, (v) => _then(v as _WalletData));

  @override
  _WalletData get _value => super._value as _WalletData;

  @override
  $Res call({
    Object? name = freezed,
    Object? seed = freezed,
    Object? mnemonic = freezed,
    Object? password = freezed,
  }) {
    return _then(_WalletData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WalletData implements _WalletData {
  const _$_WalletData(
      {required this.name, required this.seed, this.mnemonic, this.password});

  @override
  final String name;
  @override
  final String seed;
  @override
  final String? mnemonic;
  @override
  final String? password;

  @override
  String toString() {
    return 'WalletData(name: $name, seed: $seed, mnemonic: $mnemonic, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.seed, seed) &&
            const DeepCollectionEquality().equals(other.mnemonic, mnemonic) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(seed),
      const DeepCollectionEquality().hash(mnemonic),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$WalletDataCopyWith<_WalletData> get copyWith =>
      __$WalletDataCopyWithImpl<_WalletData>(this, _$identity);
}

abstract class _WalletData implements WalletData {
  const factory _WalletData(
      {required String name,
      required String seed,
      String? mnemonic,
      String? password}) = _$_WalletData;

  @override
  String get name;
  @override
  String get seed;
  @override
  String? get mnemonic;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$WalletDataCopyWith<_WalletData> get copyWith =>
      throw _privateConstructorUsedError;
}
