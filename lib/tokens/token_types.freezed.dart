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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$CachedTokenIconImplCopyWith<$Res>
    implements $CachedTokenIconCopyWith<$Res> {
  factory _$$CachedTokenIconImplCopyWith(_$CachedTokenIconImpl value,
          $Res Function(_$CachedTokenIconImpl) then) =
      __$$CachedTokenIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenIcon icon, DateTime cacheDate});

  @override
  $TokenIconCopyWith<$Res> get icon;
}

/// @nodoc
class __$$CachedTokenIconImplCopyWithImpl<$Res>
    extends _$CachedTokenIconCopyWithImpl<$Res, _$CachedTokenIconImpl>
    implements _$$CachedTokenIconImplCopyWith<$Res> {
  __$$CachedTokenIconImplCopyWithImpl(
      _$CachedTokenIconImpl _value, $Res Function(_$CachedTokenIconImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? cacheDate = null,
  }) {
    return _then(_$CachedTokenIconImpl(
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
class _$CachedTokenIconImpl implements _CachedTokenIcon {
  const _$CachedTokenIconImpl({required this.icon, required this.cacheDate});

  factory _$CachedTokenIconImpl.fromJson(Map<String, dynamic> json) =>
      _$$CachedTokenIconImplFromJson(json);

  @override
  final TokenIcon icon;
  @override
  final DateTime cacheDate;

  @override
  String toString() {
    return 'CachedTokenIcon(icon: $icon, cacheDate: $cacheDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedTokenIconImpl &&
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
  _$$CachedTokenIconImplCopyWith<_$CachedTokenIconImpl> get copyWith =>
      __$$CachedTokenIconImplCopyWithImpl<_$CachedTokenIconImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CachedTokenIconImplToJson(
      this,
    );
  }
}

abstract class _CachedTokenIcon implements CachedTokenIcon {
  const factory _CachedTokenIcon(
      {required final TokenIcon icon,
      required final DateTime cacheDate}) = _$CachedTokenIconImpl;

  factory _CachedTokenIcon.fromJson(Map<String, dynamic> json) =
      _$CachedTokenIconImpl.fromJson;

  @override
  TokenIcon get icon;
  @override
  DateTime get cacheDate;
  @override
  @JsonKey(ignore: true)
  _$$CachedTokenIconImplCopyWith<_$CachedTokenIconImpl> get copyWith =>
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
abstract class _$$TokenIconAssetImplCopyWith<$Res> {
  factory _$$TokenIconAssetImplCopyWith(_$TokenIconAssetImpl value,
          $Res Function(_$TokenIconAssetImpl) then) =
      __$$TokenIconAssetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$TokenIconAssetImplCopyWithImpl<$Res>
    extends _$TokenIconCopyWithImpl<$Res, _$TokenIconAssetImpl>
    implements _$$TokenIconAssetImplCopyWith<$Res> {
  __$$TokenIconAssetImplCopyWithImpl(
      _$TokenIconAssetImpl _value, $Res Function(_$TokenIconAssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$TokenIconAssetImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenIconAssetImpl implements _TokenIconAsset {
  const _$TokenIconAssetImpl({required this.path, final String? $type})
      : $type = $type ?? 'asset';

  factory _$TokenIconAssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenIconAssetImplFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenIcon.asset(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenIconAssetImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenIconAssetImplCopyWith<_$TokenIconAssetImpl> get copyWith =>
      __$$TokenIconAssetImplCopyWithImpl<_$TokenIconAssetImpl>(
          this, _$identity);

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
    return _$$TokenIconAssetImplToJson(
      this,
    );
  }
}

abstract class _TokenIconAsset implements TokenIcon {
  const factory _TokenIconAsset({required final String path}) =
      _$TokenIconAssetImpl;

  factory _TokenIconAsset.fromJson(Map<String, dynamic> json) =
      _$TokenIconAssetImpl.fromJson;

  String get path;
  @JsonKey(ignore: true)
  _$$TokenIconAssetImplCopyWith<_$TokenIconAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenIconUrlImplCopyWith<$Res> {
  factory _$$TokenIconUrlImplCopyWith(
          _$TokenIconUrlImpl value, $Res Function(_$TokenIconUrlImpl) then) =
      __$$TokenIconUrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$TokenIconUrlImplCopyWithImpl<$Res>
    extends _$TokenIconCopyWithImpl<$Res, _$TokenIconUrlImpl>
    implements _$$TokenIconUrlImplCopyWith<$Res> {
  __$$TokenIconUrlImplCopyWithImpl(
      _$TokenIconUrlImpl _value, $Res Function(_$TokenIconUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$TokenIconUrlImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenIconUrlImpl implements _TokenIconUrl {
  const _$TokenIconUrlImpl({required this.url, final String? $type})
      : $type = $type ?? 'url';

  factory _$TokenIconUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenIconUrlImplFromJson(json);

  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TokenIcon.url(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenIconUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenIconUrlImplCopyWith<_$TokenIconUrlImpl> get copyWith =>
      __$$TokenIconUrlImplCopyWithImpl<_$TokenIconUrlImpl>(this, _$identity);

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
    return _$$TokenIconUrlImplToJson(
      this,
    );
  }
}

abstract class _TokenIconUrl implements TokenIcon {
  const factory _TokenIconUrl({required final String url}) = _$TokenIconUrlImpl;

  factory _TokenIconUrl.fromJson(Map<String, dynamic> json) =
      _$TokenIconUrlImpl.fromJson;

  String get url;
  @JsonKey(ignore: true)
  _$$TokenIconUrlImplCopyWith<_$TokenIconUrlImpl> get copyWith =>
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
abstract class _$$TokenStateImplCopyWith<$Res>
    implements $TokenStateCopyWith<$Res> {
  factory _$$TokenStateImplCopyWith(
          _$TokenStateImpl value, $Res Function(_$TokenStateImpl) then) =
      __$$TokenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, TokenInfo? tokenInfo});

  @override
  $TokenInfoCopyWith<$Res>? get tokenInfo;
}

/// @nodoc
class __$$TokenStateImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenStateImpl>
    implements _$$TokenStateImplCopyWith<$Res> {
  __$$TokenStateImplCopyWithImpl(
      _$TokenStateImpl _value, $Res Function(_$TokenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? tokenInfo = freezed,
  }) {
    return _then(_$TokenStateImpl(
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
class _$TokenStateImpl implements _TokenState {
  const _$TokenStateImpl({this.enabled = false, required this.tokenInfo});

  factory _$TokenStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenStateImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenStateImpl &&
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
  _$$TokenStateImplCopyWith<_$TokenStateImpl> get copyWith =>
      __$$TokenStateImplCopyWithImpl<_$TokenStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenStateImplToJson(
      this,
    );
  }
}

abstract class _TokenState implements TokenState {
  const factory _TokenState(
      {final bool enabled,
      required final TokenInfo? tokenInfo}) = _$TokenStateImpl;

  factory _TokenState.fromJson(Map<String, dynamic> json) =
      _$TokenStateImpl.fromJson;

  @override
  bool get enabled;
  @override
  TokenInfo? get tokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$TokenStateImplCopyWith<_$TokenStateImpl> get copyWith =>
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
abstract class _$$TokenStateMappingImplCopyWith<$Res>
    implements $TokenStateMappingCopyWith<$Res> {
  factory _$$TokenStateMappingImplCopyWith(_$TokenStateMappingImpl value,
          $Res Function(_$TokenStateMappingImpl) then) =
      __$$TokenStateMappingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IMap<String, TokenState> states});
}

/// @nodoc
class __$$TokenStateMappingImplCopyWithImpl<$Res>
    extends _$TokenStateMappingCopyWithImpl<$Res, _$TokenStateMappingImpl>
    implements _$$TokenStateMappingImplCopyWith<$Res> {
  __$$TokenStateMappingImplCopyWithImpl(_$TokenStateMappingImpl _value,
      $Res Function(_$TokenStateMappingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? states = null,
  }) {
    return _then(_$TokenStateMappingImpl(
      states: null == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as IMap<String, TokenState>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenStateMappingImpl implements _TokenStateMapping {
  const _$TokenStateMappingImpl({this.states = const IMapConst({})});

  factory _$TokenStateMappingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenStateMappingImplFromJson(json);

  @override
  @JsonKey()
  final IMap<String, TokenState> states;

  @override
  String toString() {
    return 'TokenStateMapping(states: $states)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenStateMappingImpl &&
            (identical(other.states, states) || other.states == states));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, states);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenStateMappingImplCopyWith<_$TokenStateMappingImpl> get copyWith =>
      __$$TokenStateMappingImplCopyWithImpl<_$TokenStateMappingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenStateMappingImplToJson(
      this,
    );
  }
}

abstract class _TokenStateMapping implements TokenStateMapping {
  const factory _TokenStateMapping({final IMap<String, TokenState> states}) =
      _$TokenStateMappingImpl;

  factory _TokenStateMapping.fromJson(Map<String, dynamic> json) =
      _$TokenStateMappingImpl.fromJson;

  @override
  IMap<String, TokenState> get states;
  @override
  @JsonKey(ignore: true)
  _$$TokenStateMappingImplCopyWith<_$TokenStateMappingImpl> get copyWith =>
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
abstract class _$$TokenInfoStateImplCopyWith<$Res>
    implements $TokenInfoStateCopyWith<$Res> {
  factory _$$TokenInfoStateImplCopyWith(_$TokenInfoStateImpl value,
          $Res Function(_$TokenInfoStateImpl) then) =
      __$$TokenInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenInfo info, TokenState state});

  @override
  $TokenInfoCopyWith<$Res> get info;
  @override
  $TokenStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$TokenInfoStateImplCopyWithImpl<$Res>
    extends _$TokenInfoStateCopyWithImpl<$Res, _$TokenInfoStateImpl>
    implements _$$TokenInfoStateImplCopyWith<$Res> {
  __$$TokenInfoStateImplCopyWithImpl(
      _$TokenInfoStateImpl _value, $Res Function(_$TokenInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? state = null,
  }) {
    return _then(_$TokenInfoStateImpl(
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

class _$TokenInfoStateImpl implements _TokenInfoState {
  const _$TokenInfoStateImpl({required this.info, required this.state});

  @override
  final TokenInfo info;
  @override
  final TokenState state;

  @override
  String toString() {
    return 'TokenInfoState(info: $info, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenInfoStateImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenInfoStateImplCopyWith<_$TokenInfoStateImpl> get copyWith =>
      __$$TokenInfoStateImplCopyWithImpl<_$TokenInfoStateImpl>(
          this, _$identity);
}

abstract class _TokenInfoState implements TokenInfoState {
  const factory _TokenInfoState(
      {required final TokenInfo info,
      required final TokenState state}) = _$TokenInfoStateImpl;

  @override
  TokenInfo get info;
  @override
  TokenState get state;
  @override
  @JsonKey(ignore: true)
  _$$TokenInfoStateImplCopyWith<_$TokenInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
