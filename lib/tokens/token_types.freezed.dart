// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CachedTokenIcon _$CachedTokenIconFromJson(Map<String, dynamic> json) {
  return _CachedTokenIcon.fromJson(json);
}

/// @nodoc
class _$CachedTokenIconTearOff {
  const _$CachedTokenIconTearOff();

  _CachedTokenIcon call(
      {required TokenIcon icon, required DateTime cacheDate}) {
    return _CachedTokenIcon(
      icon: icon,
      cacheDate: cacheDate,
    );
  }

  CachedTokenIcon fromJson(Map<String, Object?> json) {
    return CachedTokenIcon.fromJson(json);
  }
}

/// @nodoc
const $CachedTokenIcon = _$CachedTokenIconTearOff();

/// @nodoc
mixin _$CachedTokenIcon {
  TokenIcon get icon => throw _privateConstructorUsedError;
  DateTime get cacheDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CachedTokenIconCopyWith<CachedTokenIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedTokenIconCopyWith<$Res> {
  factory $CachedTokenIconCopyWith(
          CachedTokenIcon value, $Res Function(CachedTokenIcon) then) =
      _$CachedTokenIconCopyWithImpl<$Res>;
  $Res call({TokenIcon icon, DateTime cacheDate});

  $TokenIconCopyWith<$Res> get icon;
}

/// @nodoc
class _$CachedTokenIconCopyWithImpl<$Res>
    implements $CachedTokenIconCopyWith<$Res> {
  _$CachedTokenIconCopyWithImpl(this._value, this._then);

  final CachedTokenIcon _value;
  // ignore: unused_field
  final $Res Function(CachedTokenIcon) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? cacheDate = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TokenIcon,
      cacheDate: cacheDate == freezed
          ? _value.cacheDate
          : cacheDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $TokenIconCopyWith<$Res> get icon {
    return $TokenIconCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value));
    });
  }
}

/// @nodoc
abstract class _$CachedTokenIconCopyWith<$Res>
    implements $CachedTokenIconCopyWith<$Res> {
  factory _$CachedTokenIconCopyWith(
          _CachedTokenIcon value, $Res Function(_CachedTokenIcon) then) =
      __$CachedTokenIconCopyWithImpl<$Res>;
  @override
  $Res call({TokenIcon icon, DateTime cacheDate});

  @override
  $TokenIconCopyWith<$Res> get icon;
}

/// @nodoc
class __$CachedTokenIconCopyWithImpl<$Res>
    extends _$CachedTokenIconCopyWithImpl<$Res>
    implements _$CachedTokenIconCopyWith<$Res> {
  __$CachedTokenIconCopyWithImpl(
      _CachedTokenIcon _value, $Res Function(_CachedTokenIcon) _then)
      : super(_value, (v) => _then(v as _CachedTokenIcon));

  @override
  _CachedTokenIcon get _value => super._value as _CachedTokenIcon;

  @override
  $Res call({
    Object? icon = freezed,
    Object? cacheDate = freezed,
  }) {
    return _then(_CachedTokenIcon(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TokenIcon,
      cacheDate: cacheDate == freezed
          ? _value.cacheDate
          : cacheDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CachedTokenIcon implements _CachedTokenIcon {
  const _$_CachedTokenIcon({required this.icon, required this.cacheDate});

  factory _$_CachedTokenIcon.fromJson(Map<String, dynamic> json) =>
      _$$_CachedTokenIconFromJson(json);

  @override
  final TokenIcon icon;
  @override
  final DateTime cacheDate;

  @override
  String toString() {
    return 'CachedTokenIcon(icon: $icon, cacheDate: $cacheDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CachedTokenIcon &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.cacheDate, cacheDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(cacheDate));

  @JsonKey(ignore: true)
  @override
  _$CachedTokenIconCopyWith<_CachedTokenIcon> get copyWith =>
      __$CachedTokenIconCopyWithImpl<_CachedTokenIcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CachedTokenIconToJson(this);
  }
}

abstract class _CachedTokenIcon implements CachedTokenIcon {
  const factory _CachedTokenIcon(
      {required TokenIcon icon,
      required DateTime cacheDate}) = _$_CachedTokenIcon;

  factory _CachedTokenIcon.fromJson(Map<String, dynamic> json) =
      _$_CachedTokenIcon.fromJson;

  @override
  TokenIcon get icon;
  @override
  DateTime get cacheDate;
  @override
  @JsonKey(ignore: true)
  _$CachedTokenIconCopyWith<_CachedTokenIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenIcon _$TokenIconFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'asset':
      return _TokenIconAsset.fromJson(json);
    case 'url':
      return _TokenIconUrl.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TokenIcon',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$TokenIconTearOff {
  const _$TokenIconTearOff();

  _TokenIconAsset asset({required String path}) {
    return _TokenIconAsset(
      path: path,
    );
  }

  _TokenIconUrl url({required String url}) {
    return _TokenIconUrl(
      url: url,
    );
  }

  TokenIcon fromJson(Map<String, Object?> json) {
    return TokenIcon.fromJson(json);
  }
}

/// @nodoc
const $TokenIcon = _$TokenIconTearOff();

/// @nodoc
mixin _$TokenIcon {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) asset,
    required TResult Function(String url) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? asset,
    TResult Function(String url)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? asset,
    TResult Function(String url)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenIconAsset value) asset,
    required TResult Function(_TokenIconUrl value) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenIconAsset value)? asset,
    TResult Function(_TokenIconUrl value)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenIconAsset value)? asset,
    TResult Function(_TokenIconUrl value)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenIconCopyWith<$Res> {
  factory $TokenIconCopyWith(TokenIcon value, $Res Function(TokenIcon) then) =
      _$TokenIconCopyWithImpl<$Res>;
}

/// @nodoc
class _$TokenIconCopyWithImpl<$Res> implements $TokenIconCopyWith<$Res> {
  _$TokenIconCopyWithImpl(this._value, this._then);

  final TokenIcon _value;
  // ignore: unused_field
  final $Res Function(TokenIcon) _then;
}

/// @nodoc
abstract class _$TokenIconAssetCopyWith<$Res> {
  factory _$TokenIconAssetCopyWith(
          _TokenIconAsset value, $Res Function(_TokenIconAsset) then) =
      __$TokenIconAssetCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class __$TokenIconAssetCopyWithImpl<$Res> extends _$TokenIconCopyWithImpl<$Res>
    implements _$TokenIconAssetCopyWith<$Res> {
  __$TokenIconAssetCopyWithImpl(
      _TokenIconAsset _value, $Res Function(_TokenIconAsset) _then)
      : super(_value, (v) => _then(v as _TokenIconAsset));

  @override
  _TokenIconAsset get _value => super._value as _TokenIconAsset;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_TokenIconAsset(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenIconAsset implements _TokenIconAsset {
  const _$_TokenIconAsset({required this.path, String? $type})
      : $type = $type ?? 'asset';

  factory _$_TokenIconAsset.fromJson(Map<String, dynamic> json) =>
      _$$_TokenIconAssetFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenIcon.asset(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenIconAsset &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$TokenIconAssetCopyWith<_TokenIconAsset> get copyWith =>
      __$TokenIconAssetCopyWithImpl<_TokenIconAsset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) asset,
    required TResult Function(String url) url,
  }) {
    return asset(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? asset,
    TResult Function(String url)? url,
  }) {
    return asset?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? asset,
    TResult Function(String url)? url,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenIconAsset value) asset,
    required TResult Function(_TokenIconUrl value) url,
  }) {
    return asset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenIconAsset value)? asset,
    TResult Function(_TokenIconUrl value)? url,
  }) {
    return asset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenIconAsset value)? asset,
    TResult Function(_TokenIconUrl value)? url,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenIconAssetToJson(this);
  }
}

abstract class _TokenIconAsset implements TokenIcon {
  const factory _TokenIconAsset({required String path}) = _$_TokenIconAsset;

  factory _TokenIconAsset.fromJson(Map<String, dynamic> json) =
      _$_TokenIconAsset.fromJson;

  String get path;
  @JsonKey(ignore: true)
  _$TokenIconAssetCopyWith<_TokenIconAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TokenIconUrlCopyWith<$Res> {
  factory _$TokenIconUrlCopyWith(
          _TokenIconUrl value, $Res Function(_TokenIconUrl) then) =
      __$TokenIconUrlCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$TokenIconUrlCopyWithImpl<$Res> extends _$TokenIconCopyWithImpl<$Res>
    implements _$TokenIconUrlCopyWith<$Res> {
  __$TokenIconUrlCopyWithImpl(
      _TokenIconUrl _value, $Res Function(_TokenIconUrl) _then)
      : super(_value, (v) => _then(v as _TokenIconUrl));

  @override
  _TokenIconUrl get _value => super._value as _TokenIconUrl;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_TokenIconUrl(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenIconUrl implements _TokenIconUrl {
  const _$_TokenIconUrl({required this.url, String? $type})
      : $type = $type ?? 'url';

  factory _$_TokenIconUrl.fromJson(Map<String, dynamic> json) =>
      _$$_TokenIconUrlFromJson(json);

  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenIcon.url(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenIconUrl &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$TokenIconUrlCopyWith<_TokenIconUrl> get copyWith =>
      __$TokenIconUrlCopyWithImpl<_TokenIconUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) asset,
    required TResult Function(String url) url,
  }) {
    return url(this.url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? asset,
    TResult Function(String url)? url,
  }) {
    return url?.call(this.url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? asset,
    TResult Function(String url)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TokenIconAsset value) asset,
    required TResult Function(_TokenIconUrl value) url,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TokenIconAsset value)? asset,
    TResult Function(_TokenIconUrl value)? url,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TokenIconAsset value)? asset,
    TResult Function(_TokenIconUrl value)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenIconUrlToJson(this);
  }
}

abstract class _TokenIconUrl implements TokenIcon {
  const factory _TokenIconUrl({required String url}) = _$_TokenIconUrl;

  factory _TokenIconUrl.fromJson(Map<String, dynamic> json) =
      _$_TokenIconUrl.fromJson;

  String get url;
  @JsonKey(ignore: true)
  _$TokenIconUrlCopyWith<_TokenIconUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
