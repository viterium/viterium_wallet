// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CachedTokenIcon _$CachedTokenIconFromJson(Map<String, dynamic> json) {
  return _CachedTokenIcon.fromJson(json);
}

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
      _$CachedTokenIconCopyWithImpl<$Res, CachedTokenIcon>;
  @useResult
  $Res call({TokenIcon icon, DateTime cacheDate});

  $TokenIconCopyWith<$Res> get icon;
}

/// @nodoc
class _$CachedTokenIconCopyWithImpl<$Res, $Val extends CachedTokenIcon>
    implements $CachedTokenIconCopyWith<$Res> {
  _$CachedTokenIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? cacheDate = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TokenIcon,
      cacheDate: null == cacheDate
          ? _value.cacheDate
          : cacheDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenIconCopyWith<$Res> get icon {
    return $TokenIconCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CachedTokenIconCopyWith<$Res>
    implements $CachedTokenIconCopyWith<$Res> {
  factory _$$_CachedTokenIconCopyWith(
          _$_CachedTokenIcon value, $Res Function(_$_CachedTokenIcon) then) =
      __$$_CachedTokenIconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenIcon icon, DateTime cacheDate});

  @override
  $TokenIconCopyWith<$Res> get icon;
}

/// @nodoc
class __$$_CachedTokenIconCopyWithImpl<$Res>
    extends _$CachedTokenIconCopyWithImpl<$Res, _$_CachedTokenIcon>
    implements _$$_CachedTokenIconCopyWith<$Res> {
  __$$_CachedTokenIconCopyWithImpl(
      _$_CachedTokenIcon _value, $Res Function(_$_CachedTokenIcon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? cacheDate = null,
  }) {
    return _then(_$_CachedTokenIcon(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TokenIcon,
      cacheDate: null == cacheDate
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
            other is _$_CachedTokenIcon &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.cacheDate, cacheDate) ||
                other.cacheDate == cacheDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, cacheDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CachedTokenIconCopyWith<_$_CachedTokenIcon> get copyWith =>
      __$$_CachedTokenIconCopyWithImpl<_$_CachedTokenIcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CachedTokenIconToJson(
      this,
    );
  }
}

abstract class _CachedTokenIcon implements CachedTokenIcon {
  const factory _CachedTokenIcon(
      {required final TokenIcon icon,
      required final DateTime cacheDate}) = _$_CachedTokenIcon;

  factory _CachedTokenIcon.fromJson(Map<String, dynamic> json) =
      _$_CachedTokenIcon.fromJson;

  @override
  TokenIcon get icon;
  @override
  DateTime get cacheDate;
  @override
  @JsonKey(ignore: true)
  _$$_CachedTokenIconCopyWith<_$_CachedTokenIcon> get copyWith =>
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
mixin _$TokenIcon {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) asset,
    required TResult Function(String url) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? asset,
    TResult? Function(String url)? url,
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
    TResult? Function(_TokenIconAsset value)? asset,
    TResult? Function(_TokenIconUrl value)? url,
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
      _$TokenIconCopyWithImpl<$Res, TokenIcon>;
}

/// @nodoc
class _$TokenIconCopyWithImpl<$Res, $Val extends TokenIcon>
    implements $TokenIconCopyWith<$Res> {
  _$TokenIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TokenIconAssetCopyWith<$Res> {
  factory _$$_TokenIconAssetCopyWith(
          _$_TokenIconAsset value, $Res Function(_$_TokenIconAsset) then) =
      __$$_TokenIconAssetCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_TokenIconAssetCopyWithImpl<$Res>
    extends _$TokenIconCopyWithImpl<$Res, _$_TokenIconAsset>
    implements _$$_TokenIconAssetCopyWith<$Res> {
  __$$_TokenIconAssetCopyWithImpl(
      _$_TokenIconAsset _value, $Res Function(_$_TokenIconAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_TokenIconAsset(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenIconAsset implements _TokenIconAsset {
  const _$_TokenIconAsset({required this.path, final String? $type})
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
            other is _$_TokenIconAsset &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenIconAssetCopyWith<_$_TokenIconAsset> get copyWith =>
      __$$_TokenIconAssetCopyWithImpl<_$_TokenIconAsset>(this, _$identity);

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
    TResult? Function(String path)? asset,
    TResult? Function(String url)? url,
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
    TResult? Function(_TokenIconAsset value)? asset,
    TResult? Function(_TokenIconUrl value)? url,
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
    return _$$_TokenIconAssetToJson(
      this,
    );
  }
}

abstract class _TokenIconAsset implements TokenIcon {
  const factory _TokenIconAsset({required final String path}) =
      _$_TokenIconAsset;

  factory _TokenIconAsset.fromJson(Map<String, dynamic> json) =
      _$_TokenIconAsset.fromJson;

  String get path;
  @JsonKey(ignore: true)
  _$$_TokenIconAssetCopyWith<_$_TokenIconAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TokenIconUrlCopyWith<$Res> {
  factory _$$_TokenIconUrlCopyWith(
          _$_TokenIconUrl value, $Res Function(_$_TokenIconUrl) then) =
      __$$_TokenIconUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_TokenIconUrlCopyWithImpl<$Res>
    extends _$TokenIconCopyWithImpl<$Res, _$_TokenIconUrl>
    implements _$$_TokenIconUrlCopyWith<$Res> {
  __$$_TokenIconUrlCopyWithImpl(
      _$_TokenIconUrl _value, $Res Function(_$_TokenIconUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_TokenIconUrl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenIconUrl implements _TokenIconUrl {
  const _$_TokenIconUrl({required this.url, final String? $type})
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
            other is _$_TokenIconUrl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenIconUrlCopyWith<_$_TokenIconUrl> get copyWith =>
      __$$_TokenIconUrlCopyWithImpl<_$_TokenIconUrl>(this, _$identity);

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
    TResult? Function(String path)? asset,
    TResult? Function(String url)? url,
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
    TResult? Function(_TokenIconAsset value)? asset,
    TResult? Function(_TokenIconUrl value)? url,
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
    return _$$_TokenIconUrlToJson(
      this,
    );
  }
}

abstract class _TokenIconUrl implements TokenIcon {
  const factory _TokenIconUrl({required final String url}) = _$_TokenIconUrl;

  factory _TokenIconUrl.fromJson(Map<String, dynamic> json) =
      _$_TokenIconUrl.fromJson;

  String get url;
  @JsonKey(ignore: true)
  _$$_TokenIconUrlCopyWith<_$_TokenIconUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenState _$TokenStateFromJson(Map<String, dynamic> json) {
  return _TokenState.fromJson(json);
}

/// @nodoc
mixin _$TokenState {
  bool get enabled => throw _privateConstructorUsedError;
  TokenInfo? get tokenInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenStateCopyWith<TokenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateCopyWith<$Res> {
  factory $TokenStateCopyWith(
          TokenState value, $Res Function(TokenState) then) =
      _$TokenStateCopyWithImpl<$Res, TokenState>;
  @useResult
  $Res call({bool enabled, TokenInfo? tokenInfo});

  $TokenInfoCopyWith<$Res>? get tokenInfo;
}

/// @nodoc
class _$TokenStateCopyWithImpl<$Res, $Val extends TokenState>
    implements $TokenStateCopyWith<$Res> {
  _$TokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? tokenInfo = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenInfo: freezed == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res>? get tokenInfo {
    if (_value.tokenInfo == null) {
      return null;
    }

    return $TokenInfoCopyWith<$Res>(_value.tokenInfo!, (value) {
      return _then(_value.copyWith(tokenInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokenStateCopyWith<$Res>
    implements $TokenStateCopyWith<$Res> {
  factory _$$_TokenStateCopyWith(
          _$_TokenState value, $Res Function(_$_TokenState) then) =
      __$$_TokenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, TokenInfo? tokenInfo});

  @override
  $TokenInfoCopyWith<$Res>? get tokenInfo;
}

/// @nodoc
class __$$_TokenStateCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$_TokenState>
    implements _$$_TokenStateCopyWith<$Res> {
  __$$_TokenStateCopyWithImpl(
      _$_TokenState _value, $Res Function(_$_TokenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? tokenInfo = freezed,
  }) {
    return _then(_$_TokenState(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenInfo: freezed == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenState implements _TokenState {
  const _$_TokenState({this.enabled = false, required this.tokenInfo});

  factory _$_TokenState.fromJson(Map<String, dynamic> json) =>
      _$$_TokenStateFromJson(json);

  @override
  @JsonKey()
  final bool enabled;
  @override
  final TokenInfo? tokenInfo;

  @override
  String toString() {
    return 'TokenState(enabled: $enabled, tokenInfo: $tokenInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenState &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, tokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenStateCopyWith<_$_TokenState> get copyWith =>
      __$$_TokenStateCopyWithImpl<_$_TokenState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenStateToJson(
      this,
    );
  }
}

abstract class _TokenState implements TokenState {
  const factory _TokenState(
      {final bool enabled,
      required final TokenInfo? tokenInfo}) = _$_TokenState;

  factory _TokenState.fromJson(Map<String, dynamic> json) =
      _$_TokenState.fromJson;

  @override
  bool get enabled;
  @override
  TokenInfo? get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$_TokenStateCopyWith<_$_TokenState> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenStateMapping _$TokenStateMappingFromJson(Map<String, dynamic> json) {
  return _TokenStateMapping.fromJson(json);
}

/// @nodoc
mixin _$TokenStateMapping {
  IMap<String, TokenState> get states => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenStateMappingCopyWith<TokenStateMapping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateMappingCopyWith<$Res> {
  factory $TokenStateMappingCopyWith(
          TokenStateMapping value, $Res Function(TokenStateMapping) then) =
      _$TokenStateMappingCopyWithImpl<$Res, TokenStateMapping>;
  @useResult
  $Res call({IMap<String, TokenState> states});
}

/// @nodoc
class _$TokenStateMappingCopyWithImpl<$Res, $Val extends TokenStateMapping>
    implements $TokenStateMappingCopyWith<$Res> {
  _$TokenStateMappingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? states = null,
  }) {
    return _then(_value.copyWith(
      states: null == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as IMap<String, TokenState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenStateMappingCopyWith<$Res>
    implements $TokenStateMappingCopyWith<$Res> {
  factory _$$_TokenStateMappingCopyWith(_$_TokenStateMapping value,
          $Res Function(_$_TokenStateMapping) then) =
      __$$_TokenStateMappingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IMap<String, TokenState> states});
}

/// @nodoc
class __$$_TokenStateMappingCopyWithImpl<$Res>
    extends _$TokenStateMappingCopyWithImpl<$Res, _$_TokenStateMapping>
    implements _$$_TokenStateMappingCopyWith<$Res> {
  __$$_TokenStateMappingCopyWithImpl(
      _$_TokenStateMapping _value, $Res Function(_$_TokenStateMapping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? states = null,
  }) {
    return _then(_$_TokenStateMapping(
      states: null == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as IMap<String, TokenState>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenStateMapping implements _TokenStateMapping {
  const _$_TokenStateMapping({this.states = const IMapConst({})});

  factory _$_TokenStateMapping.fromJson(Map<String, dynamic> json) =>
      _$$_TokenStateMappingFromJson(json);

  @override
  @JsonKey()
  final IMap<String, TokenState> states;

  @override
  String toString() {
    return 'TokenStateMapping(states: $states)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenStateMapping &&
            (identical(other.states, states) || other.states == states));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, states);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenStateMappingCopyWith<_$_TokenStateMapping> get copyWith =>
      __$$_TokenStateMappingCopyWithImpl<_$_TokenStateMapping>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenStateMappingToJson(
      this,
    );
  }
}

abstract class _TokenStateMapping implements TokenStateMapping {
  const factory _TokenStateMapping({final IMap<String, TokenState> states}) =
      _$_TokenStateMapping;

  factory _TokenStateMapping.fromJson(Map<String, dynamic> json) =
      _$_TokenStateMapping.fromJson;

  @override
  IMap<String, TokenState> get states;
  @override
  @JsonKey(ignore: true)
  _$$_TokenStateMappingCopyWith<_$_TokenStateMapping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TokenInfoState {
  TokenInfo get info => throw _privateConstructorUsedError;
  TokenState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenInfoStateCopyWith<TokenInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenInfoStateCopyWith<$Res> {
  factory $TokenInfoStateCopyWith(
          TokenInfoState value, $Res Function(TokenInfoState) then) =
      _$TokenInfoStateCopyWithImpl<$Res, TokenInfoState>;
  @useResult
  $Res call({TokenInfo info, TokenState state});

  $TokenInfoCopyWith<$Res> get info;
  $TokenStateCopyWith<$Res> get state;
}

/// @nodoc
class _$TokenInfoStateCopyWithImpl<$Res, $Val extends TokenInfoState>
    implements $TokenInfoStateCopyWith<$Res> {
  _$TokenInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TokenState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get info {
    return $TokenInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenStateCopyWith<$Res> get state {
    return $TokenStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokenInfoStateCopyWith<$Res>
    implements $TokenInfoStateCopyWith<$Res> {
  factory _$$_TokenInfoStateCopyWith(
          _$_TokenInfoState value, $Res Function(_$_TokenInfoState) then) =
      __$$_TokenInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenInfo info, TokenState state});

  @override
  $TokenInfoCopyWith<$Res> get info;
  @override
  $TokenStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_TokenInfoStateCopyWithImpl<$Res>
    extends _$TokenInfoStateCopyWithImpl<$Res, _$_TokenInfoState>
    implements _$$_TokenInfoStateCopyWith<$Res> {
  __$$_TokenInfoStateCopyWithImpl(
      _$_TokenInfoState _value, $Res Function(_$_TokenInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? state = null,
  }) {
    return _then(_$_TokenInfoState(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TokenState,
    ));
  }
}

/// @nodoc

class _$_TokenInfoState implements _TokenInfoState {
  const _$_TokenInfoState({required this.info, required this.state});

  @override
  final TokenInfo info;
  @override
  final TokenState state;

  @override
  String toString() {
    return 'TokenInfoState(info: $info, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenInfoState &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenInfoStateCopyWith<_$_TokenInfoState> get copyWith =>
      __$$_TokenInfoStateCopyWithImpl<_$_TokenInfoState>(this, _$identity);
}

abstract class _TokenInfoState implements TokenInfoState {
  const factory _TokenInfoState(
      {required final TokenInfo info,
      required final TokenState state}) = _$_TokenInfoState;

  @override
  TokenInfo get info;
  @override
  TokenState get state;
  @override
  @JsonKey(ignore: true)
  _$$_TokenInfoStateCopyWith<_$_TokenInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
