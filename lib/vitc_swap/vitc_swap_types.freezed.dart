// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vitc_swap_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VitcSwapTokenCache _$VitcSwapTokenCacheFromJson(Map<String, dynamic> json) {
  return _VitcSwapTokenCache.fromJson(json);
}

/// @nodoc
mixin _$VitcSwapTokenCache {
  IList<String> get tradingTokens => throw _privateConstructorUsedError;
  int get lastHeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VitcSwapTokenCacheCopyWith<VitcSwapTokenCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcSwapTokenCacheCopyWith<$Res> {
  factory $VitcSwapTokenCacheCopyWith(
          VitcSwapTokenCache value, $Res Function(VitcSwapTokenCache) then) =
      _$VitcSwapTokenCacheCopyWithImpl<$Res, VitcSwapTokenCache>;
  @useResult
  $Res call({IList<String> tradingTokens, int lastHeight});
}

/// @nodoc
class _$VitcSwapTokenCacheCopyWithImpl<$Res, $Val extends VitcSwapTokenCache>
    implements $VitcSwapTokenCacheCopyWith<$Res> {
  _$VitcSwapTokenCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradingTokens = null,
    Object? lastHeight = null,
  }) {
    return _then(_value.copyWith(
      tradingTokens: null == tradingTokens
          ? _value.tradingTokens
          : tradingTokens // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      lastHeight: null == lastHeight
          ? _value.lastHeight
          : lastHeight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitcSwapTokenCacheImplCopyWith<$Res>
    implements $VitcSwapTokenCacheCopyWith<$Res> {
  factory _$$VitcSwapTokenCacheImplCopyWith(_$VitcSwapTokenCacheImpl value,
          $Res Function(_$VitcSwapTokenCacheImpl) then) =
      __$$VitcSwapTokenCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<String> tradingTokens, int lastHeight});
}

/// @nodoc
class __$$VitcSwapTokenCacheImplCopyWithImpl<$Res>
    extends _$VitcSwapTokenCacheCopyWithImpl<$Res, _$VitcSwapTokenCacheImpl>
    implements _$$VitcSwapTokenCacheImplCopyWith<$Res> {
  __$$VitcSwapTokenCacheImplCopyWithImpl(_$VitcSwapTokenCacheImpl _value,
      $Res Function(_$VitcSwapTokenCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradingTokens = null,
    Object? lastHeight = null,
  }) {
    return _then(_$VitcSwapTokenCacheImpl(
      tradingTokens: null == tradingTokens
          ? _value.tradingTokens
          : tradingTokens // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      lastHeight: null == lastHeight
          ? _value.lastHeight
          : lastHeight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VitcSwapTokenCacheImpl implements _VitcSwapTokenCache {
  const _$VitcSwapTokenCacheImpl(
      {this.tradingTokens = const IListConst(kVitcSwapTokenIdList),
      this.lastHeight = kVitcSwapLastHeight});

  factory _$VitcSwapTokenCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$VitcSwapTokenCacheImplFromJson(json);

  @override
  @JsonKey()
  final IList<String> tradingTokens;
  @override
  @JsonKey()
  final int lastHeight;

  @override
  String toString() {
    return 'VitcSwapTokenCache(tradingTokens: $tradingTokens, lastHeight: $lastHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcSwapTokenCacheImpl &&
            const DeepCollectionEquality()
                .equals(other.tradingTokens, tradingTokens) &&
            (identical(other.lastHeight, lastHeight) ||
                other.lastHeight == lastHeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(tradingTokens), lastHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcSwapTokenCacheImplCopyWith<_$VitcSwapTokenCacheImpl> get copyWith =>
      __$$VitcSwapTokenCacheImplCopyWithImpl<_$VitcSwapTokenCacheImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VitcSwapTokenCacheImplToJson(
      this,
    );
  }
}

abstract class _VitcSwapTokenCache implements VitcSwapTokenCache {
  const factory _VitcSwapTokenCache(
      {final IList<String> tradingTokens,
      final int lastHeight}) = _$VitcSwapTokenCacheImpl;

  factory _VitcSwapTokenCache.fromJson(Map<String, dynamic> json) =
      _$VitcSwapTokenCacheImpl.fromJson;

  @override
  IList<String> get tradingTokens;
  @override
  int get lastHeight;
  @override
  @JsonKey(ignore: true)
  _$$VitcSwapTokenCacheImplCopyWith<_$VitcSwapTokenCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VitcSwapSettings _$VitcSwapSettingsFromJson(Map<String, dynamic> json) {
  return _VitcSwapSettings.fromJson(json);
}

/// @nodoc
mixin _$VitcSwapSettings {
  VitcSwapTokenCache get tokenCache => throw _privateConstructorUsedError;
  TokenInfo get fromToken => throw _privateConstructorUsedError;
  TokenInfo get toToken => throw _privateConstructorUsedError;
  double get slippage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VitcSwapSettingsCopyWith<VitcSwapSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcSwapSettingsCopyWith<$Res> {
  factory $VitcSwapSettingsCopyWith(
          VitcSwapSettings value, $Res Function(VitcSwapSettings) then) =
      _$VitcSwapSettingsCopyWithImpl<$Res, VitcSwapSettings>;
  @useResult
  $Res call(
      {VitcSwapTokenCache tokenCache,
      TokenInfo fromToken,
      TokenInfo toToken,
      double slippage});

  $VitcSwapTokenCacheCopyWith<$Res> get tokenCache;
  $TokenInfoCopyWith<$Res> get fromToken;
  $TokenInfoCopyWith<$Res> get toToken;
}

/// @nodoc
class _$VitcSwapSettingsCopyWithImpl<$Res, $Val extends VitcSwapSettings>
    implements $VitcSwapSettingsCopyWith<$Res> {
  _$VitcSwapSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenCache = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? slippage = null,
  }) {
    return _then(_value.copyWith(
      tokenCache: null == tokenCache
          ? _value.tokenCache
          : tokenCache // ignore: cast_nullable_to_non_nullable
              as VitcSwapTokenCache,
      fromToken: null == fromToken
          ? _value.fromToken
          : fromToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      toToken: null == toToken
          ? _value.toToken
          : toToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      slippage: null == slippage
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VitcSwapTokenCacheCopyWith<$Res> get tokenCache {
    return $VitcSwapTokenCacheCopyWith<$Res>(_value.tokenCache, (value) {
      return _then(_value.copyWith(tokenCache: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get fromToken {
    return $TokenInfoCopyWith<$Res>(_value.fromToken, (value) {
      return _then(_value.copyWith(fromToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get toToken {
    return $TokenInfoCopyWith<$Res>(_value.toToken, (value) {
      return _then(_value.copyWith(toToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VitcSwapSettingsImplCopyWith<$Res>
    implements $VitcSwapSettingsCopyWith<$Res> {
  factory _$$VitcSwapSettingsImplCopyWith(_$VitcSwapSettingsImpl value,
          $Res Function(_$VitcSwapSettingsImpl) then) =
      __$$VitcSwapSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VitcSwapTokenCache tokenCache,
      TokenInfo fromToken,
      TokenInfo toToken,
      double slippage});

  @override
  $VitcSwapTokenCacheCopyWith<$Res> get tokenCache;
  @override
  $TokenInfoCopyWith<$Res> get fromToken;
  @override
  $TokenInfoCopyWith<$Res> get toToken;
}

/// @nodoc
class __$$VitcSwapSettingsImplCopyWithImpl<$Res>
    extends _$VitcSwapSettingsCopyWithImpl<$Res, _$VitcSwapSettingsImpl>
    implements _$$VitcSwapSettingsImplCopyWith<$Res> {
  __$$VitcSwapSettingsImplCopyWithImpl(_$VitcSwapSettingsImpl _value,
      $Res Function(_$VitcSwapSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenCache = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? slippage = null,
  }) {
    return _then(_$VitcSwapSettingsImpl(
      tokenCache: null == tokenCache
          ? _value.tokenCache
          : tokenCache // ignore: cast_nullable_to_non_nullable
              as VitcSwapTokenCache,
      fromToken: null == fromToken
          ? _value.fromToken
          : fromToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      toToken: null == toToken
          ? _value.toToken
          : toToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      slippage: null == slippage
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VitcSwapSettingsImpl implements _VitcSwapSettings {
  const _$VitcSwapSettingsImpl(
      {this.tokenCache = const VitcSwapTokenCache(),
      required this.fromToken,
      required this.toToken,
      this.slippage = 0.005});

  factory _$VitcSwapSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VitcSwapSettingsImplFromJson(json);

  @override
  @JsonKey()
  final VitcSwapTokenCache tokenCache;
  @override
  final TokenInfo fromToken;
  @override
  final TokenInfo toToken;
  @override
  @JsonKey()
  final double slippage;

  @override
  String toString() {
    return 'VitcSwapSettings(tokenCache: $tokenCache, fromToken: $fromToken, toToken: $toToken, slippage: $slippage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcSwapSettingsImpl &&
            (identical(other.tokenCache, tokenCache) ||
                other.tokenCache == tokenCache) &&
            (identical(other.fromToken, fromToken) ||
                other.fromToken == fromToken) &&
            (identical(other.toToken, toToken) || other.toToken == toToken) &&
            (identical(other.slippage, slippage) ||
                other.slippage == slippage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokenCache, fromToken, toToken, slippage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcSwapSettingsImplCopyWith<_$VitcSwapSettingsImpl> get copyWith =>
      __$$VitcSwapSettingsImplCopyWithImpl<_$VitcSwapSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VitcSwapSettingsImplToJson(
      this,
    );
  }
}

abstract class _VitcSwapSettings implements VitcSwapSettings {
  const factory _VitcSwapSettings(
      {final VitcSwapTokenCache tokenCache,
      required final TokenInfo fromToken,
      required final TokenInfo toToken,
      final double slippage}) = _$VitcSwapSettingsImpl;

  factory _VitcSwapSettings.fromJson(Map<String, dynamic> json) =
      _$VitcSwapSettingsImpl.fromJson;

  @override
  VitcSwapTokenCache get tokenCache;
  @override
  TokenInfo get fromToken;
  @override
  TokenInfo get toToken;
  @override
  double get slippage;
  @override
  @JsonKey(ignore: true)
  _$$VitcSwapSettingsImplCopyWith<_$VitcSwapSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VitcSwapState {
  Amount get fromAmount => throw _privateConstructorUsedError;
  Amount get toAmount => throw _privateConstructorUsedError;
  double get slippage => throw _privateConstructorUsedError;
  int get requestId => throw _privateConstructorUsedError;
  int get callId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitcSwapStateCopyWith<VitcSwapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcSwapStateCopyWith<$Res> {
  factory $VitcSwapStateCopyWith(
          VitcSwapState value, $Res Function(VitcSwapState) then) =
      _$VitcSwapStateCopyWithImpl<$Res, VitcSwapState>;
  @useResult
  $Res call(
      {Amount fromAmount,
      Amount toAmount,
      double slippage,
      int requestId,
      int callId});

  $AmountCopyWith<$Res> get fromAmount;
  $AmountCopyWith<$Res> get toAmount;
}

/// @nodoc
class _$VitcSwapStateCopyWithImpl<$Res, $Val extends VitcSwapState>
    implements $VitcSwapStateCopyWith<$Res> {
  _$VitcSwapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAmount = null,
    Object? toAmount = null,
    Object? slippage = null,
    Object? requestId = null,
    Object? callId = null,
  }) {
    return _then(_value.copyWith(
      fromAmount: null == fromAmount
          ? _value.fromAmount
          : fromAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      toAmount: null == toAmount
          ? _value.toAmount
          : toAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      slippage: null == slippage
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get fromAmount {
    return $AmountCopyWith<$Res>(_value.fromAmount, (value) {
      return _then(_value.copyWith(fromAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get toAmount {
    return $AmountCopyWith<$Res>(_value.toAmount, (value) {
      return _then(_value.copyWith(toAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VitcSwapStateImplCopyWith<$Res>
    implements $VitcSwapStateCopyWith<$Res> {
  factory _$$VitcSwapStateImplCopyWith(
          _$VitcSwapStateImpl value, $Res Function(_$VitcSwapStateImpl) then) =
      __$$VitcSwapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Amount fromAmount,
      Amount toAmount,
      double slippage,
      int requestId,
      int callId});

  @override
  $AmountCopyWith<$Res> get fromAmount;
  @override
  $AmountCopyWith<$Res> get toAmount;
}

/// @nodoc
class __$$VitcSwapStateImplCopyWithImpl<$Res>
    extends _$VitcSwapStateCopyWithImpl<$Res, _$VitcSwapStateImpl>
    implements _$$VitcSwapStateImplCopyWith<$Res> {
  __$$VitcSwapStateImplCopyWithImpl(
      _$VitcSwapStateImpl _value, $Res Function(_$VitcSwapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAmount = null,
    Object? toAmount = null,
    Object? slippage = null,
    Object? requestId = null,
    Object? callId = null,
  }) {
    return _then(_$VitcSwapStateImpl(
      fromAmount: null == fromAmount
          ? _value.fromAmount
          : fromAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      toAmount: null == toAmount
          ? _value.toAmount
          : toAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      slippage: null == slippage
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VitcSwapStateImpl extends _VitcSwapState {
  const _$VitcSwapStateImpl(
      {required this.fromAmount,
      required this.toAmount,
      required this.slippage,
      required this.requestId,
      required this.callId})
      : super._();

  @override
  final Amount fromAmount;
  @override
  final Amount toAmount;
  @override
  final double slippage;
  @override
  final int requestId;
  @override
  final int callId;

  @override
  String toString() {
    return 'VitcSwapState(fromAmount: $fromAmount, toAmount: $toAmount, slippage: $slippage, requestId: $requestId, callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcSwapStateImpl &&
            (identical(other.fromAmount, fromAmount) ||
                other.fromAmount == fromAmount) &&
            (identical(other.toAmount, toAmount) ||
                other.toAmount == toAmount) &&
            (identical(other.slippage, slippage) ||
                other.slippage == slippage) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fromAmount, toAmount, slippage, requestId, callId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcSwapStateImplCopyWith<_$VitcSwapStateImpl> get copyWith =>
      __$$VitcSwapStateImplCopyWithImpl<_$VitcSwapStateImpl>(this, _$identity);
}

abstract class _VitcSwapState extends VitcSwapState {
  const factory _VitcSwapState(
      {required final Amount fromAmount,
      required final Amount toAmount,
      required final double slippage,
      required final int requestId,
      required final int callId}) = _$VitcSwapStateImpl;
  const _VitcSwapState._() : super._();

  @override
  Amount get fromAmount;
  @override
  Amount get toAmount;
  @override
  double get slippage;
  @override
  int get requestId;
  @override
  int get callId;
  @override
  @JsonKey(ignore: true)
  _$$VitcSwapStateImplCopyWith<_$VitcSwapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TokenLiquidity {
  BigInt get total => throw _privateConstructorUsedError;
  BigInt get totalVite => throw _privateConstructorUsedError;
  BigInt get k => throw _privateConstructorUsedError;
  BigInt get tokenSupply => throw _privateConstructorUsedError;
  Token get lpToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenLiquidityCopyWith<TokenLiquidity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenLiquidityCopyWith<$Res> {
  factory $TokenLiquidityCopyWith(
          TokenLiquidity value, $Res Function(TokenLiquidity) then) =
      _$TokenLiquidityCopyWithImpl<$Res, TokenLiquidity>;
  @useResult
  $Res call(
      {BigInt total,
      BigInt totalVite,
      BigInt k,
      BigInt tokenSupply,
      Token lpToken});

  $TokenCopyWith<$Res> get lpToken;
}

/// @nodoc
class _$TokenLiquidityCopyWithImpl<$Res, $Val extends TokenLiquidity>
    implements $TokenLiquidityCopyWith<$Res> {
  _$TokenLiquidityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalVite = null,
    Object? k = null,
    Object? tokenSupply = null,
    Object? lpToken = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalVite: null == totalVite
          ? _value.totalVite
          : totalVite // ignore: cast_nullable_to_non_nullable
              as BigInt,
      k: null == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenSupply: null == tokenSupply
          ? _value.tokenSupply
          : tokenSupply // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lpToken: null == lpToken
          ? _value.lpToken
          : lpToken // ignore: cast_nullable_to_non_nullable
              as Token,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get lpToken {
    return $TokenCopyWith<$Res>(_value.lpToken, (value) {
      return _then(_value.copyWith(lpToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenLiquidityImplCopyWith<$Res>
    implements $TokenLiquidityCopyWith<$Res> {
  factory _$$TokenLiquidityImplCopyWith(_$TokenLiquidityImpl value,
          $Res Function(_$TokenLiquidityImpl) then) =
      __$$TokenLiquidityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt total,
      BigInt totalVite,
      BigInt k,
      BigInt tokenSupply,
      Token lpToken});

  @override
  $TokenCopyWith<$Res> get lpToken;
}

/// @nodoc
class __$$TokenLiquidityImplCopyWithImpl<$Res>
    extends _$TokenLiquidityCopyWithImpl<$Res, _$TokenLiquidityImpl>
    implements _$$TokenLiquidityImplCopyWith<$Res> {
  __$$TokenLiquidityImplCopyWithImpl(
      _$TokenLiquidityImpl _value, $Res Function(_$TokenLiquidityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalVite = null,
    Object? k = null,
    Object? tokenSupply = null,
    Object? lpToken = null,
  }) {
    return _then(_$TokenLiquidityImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalVite: null == totalVite
          ? _value.totalVite
          : totalVite // ignore: cast_nullable_to_non_nullable
              as BigInt,
      k: null == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenSupply: null == tokenSupply
          ? _value.tokenSupply
          : tokenSupply // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lpToken: null == lpToken
          ? _value.lpToken
          : lpToken // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc

class _$TokenLiquidityImpl implements _TokenLiquidity {
  const _$TokenLiquidityImpl(
      {required this.total,
      required this.totalVite,
      required this.k,
      required this.tokenSupply,
      required this.lpToken});

  @override
  final BigInt total;
  @override
  final BigInt totalVite;
  @override
  final BigInt k;
  @override
  final BigInt tokenSupply;
  @override
  final Token lpToken;

  @override
  String toString() {
    return 'TokenLiquidity(total: $total, totalVite: $totalVite, k: $k, tokenSupply: $tokenSupply, lpToken: $lpToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenLiquidityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalVite, totalVite) ||
                other.totalVite == totalVite) &&
            (identical(other.k, k) || other.k == k) &&
            (identical(other.tokenSupply, tokenSupply) ||
                other.tokenSupply == tokenSupply) &&
            (identical(other.lpToken, lpToken) || other.lpToken == lpToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, total, totalVite, k, tokenSupply, lpToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenLiquidityImplCopyWith<_$TokenLiquidityImpl> get copyWith =>
      __$$TokenLiquidityImplCopyWithImpl<_$TokenLiquidityImpl>(
          this, _$identity);
}

abstract class _TokenLiquidity implements TokenLiquidity {
  const factory _TokenLiquidity(
      {required final BigInt total,
      required final BigInt totalVite,
      required final BigInt k,
      required final BigInt tokenSupply,
      required final Token lpToken}) = _$TokenLiquidityImpl;

  @override
  BigInt get total;
  @override
  BigInt get totalVite;
  @override
  BigInt get k;
  @override
  BigInt get tokenSupply;
  @override
  Token get lpToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenLiquidityImplCopyWith<_$TokenLiquidityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VitcSwapEvent {
  Address get address => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)
        swap,
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)
        swapInternal,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        addLiquidity,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        removeLiquidity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcSwapEventSwap value) swap,
    required TResult Function(_VitcSwapEventSwapInternal value) swapInternal,
    required TResult Function(_VitcSwapEventAddLiquidity value) addLiquidity,
    required TResult Function(_VitcSwapEventRemoveLiquidity value)
        removeLiquidity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcSwapEventSwap value)? swap,
    TResult? Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult? Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult? Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcSwapEventSwap value)? swap,
    TResult Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitcSwapEventCopyWith<VitcSwapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcSwapEventCopyWith<$Res> {
  factory $VitcSwapEventCopyWith(
          VitcSwapEvent value, $Res Function(VitcSwapEvent) then) =
      _$VitcSwapEventCopyWithImpl<$Res, VitcSwapEvent>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$VitcSwapEventCopyWithImpl<$Res, $Val extends VitcSwapEvent>
    implements $VitcSwapEventCopyWith<$Res> {
  _$VitcSwapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VitcSwapEventSwapImplCopyWith<$Res>
    implements $VitcSwapEventCopyWith<$Res> {
  factory _$$VitcSwapEventSwapImplCopyWith(_$VitcSwapEventSwapImpl value,
          $Res Function(_$VitcSwapEventSwapImpl) then) =
      __$$VitcSwapEventSwapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Token fromToken,
      Token toToken,
      BigInt fromAmount,
      BigInt toAmount});

  @override
  $AddressCopyWith<$Res> get address;
  $TokenCopyWith<$Res> get fromToken;
  $TokenCopyWith<$Res> get toToken;
}

/// @nodoc
class __$$VitcSwapEventSwapImplCopyWithImpl<$Res>
    extends _$VitcSwapEventCopyWithImpl<$Res, _$VitcSwapEventSwapImpl>
    implements _$$VitcSwapEventSwapImplCopyWith<$Res> {
  __$$VitcSwapEventSwapImplCopyWithImpl(_$VitcSwapEventSwapImpl _value,
      $Res Function(_$VitcSwapEventSwapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? fromAmount = null,
    Object? toAmount = null,
  }) {
    return _then(_$VitcSwapEventSwapImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      fromToken: null == fromToken
          ? _value.fromToken
          : fromToken // ignore: cast_nullable_to_non_nullable
              as Token,
      toToken: null == toToken
          ? _value.toToken
          : toToken // ignore: cast_nullable_to_non_nullable
              as Token,
      fromAmount: null == fromAmount
          ? _value.fromAmount
          : fromAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      toAmount: null == toAmount
          ? _value.toAmount
          : toAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get fromToken {
    return $TokenCopyWith<$Res>(_value.fromToken, (value) {
      return _then(_value.copyWith(fromToken: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get toToken {
    return $TokenCopyWith<$Res>(_value.toToken, (value) {
      return _then(_value.copyWith(toToken: value));
    });
  }
}

/// @nodoc

class _$VitcSwapEventSwapImpl implements _VitcSwapEventSwap {
  const _$VitcSwapEventSwapImpl(
      {required this.address,
      required this.fromToken,
      required this.toToken,
      required this.fromAmount,
      required this.toAmount});

  @override
  final Address address;
  @override
  final Token fromToken;
  @override
  final Token toToken;
  @override
  final BigInt fromAmount;
  @override
  final BigInt toAmount;

  @override
  String toString() {
    return 'VitcSwapEvent.swap(address: $address, fromToken: $fromToken, toToken: $toToken, fromAmount: $fromAmount, toAmount: $toAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcSwapEventSwapImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.fromToken, fromToken) ||
                other.fromToken == fromToken) &&
            (identical(other.toToken, toToken) || other.toToken == toToken) &&
            (identical(other.fromAmount, fromAmount) ||
                other.fromAmount == fromAmount) &&
            (identical(other.toAmount, toAmount) ||
                other.toAmount == toAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, fromToken, toToken, fromAmount, toAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcSwapEventSwapImplCopyWith<_$VitcSwapEventSwapImpl> get copyWith =>
      __$$VitcSwapEventSwapImplCopyWithImpl<_$VitcSwapEventSwapImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)
        swap,
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)
        swapInternal,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        addLiquidity,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        removeLiquidity,
  }) {
    return swap(address, fromToken, toToken, fromAmount, toAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
  }) {
    return swap?.call(address, fromToken, toToken, fromAmount, toAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(address, fromToken, toToken, fromAmount, toAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcSwapEventSwap value) swap,
    required TResult Function(_VitcSwapEventSwapInternal value) swapInternal,
    required TResult Function(_VitcSwapEventAddLiquidity value) addLiquidity,
    required TResult Function(_VitcSwapEventRemoveLiquidity value)
        removeLiquidity,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcSwapEventSwap value)? swap,
    TResult? Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult? Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult? Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcSwapEventSwap value)? swap,
    TResult Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }
}

abstract class _VitcSwapEventSwap implements VitcSwapEvent {
  const factory _VitcSwapEventSwap(
      {required final Address address,
      required final Token fromToken,
      required final Token toToken,
      required final BigInt fromAmount,
      required final BigInt toAmount}) = _$VitcSwapEventSwapImpl;

  @override
  Address get address;
  Token get fromToken;
  Token get toToken;
  BigInt get fromAmount;
  BigInt get toAmount;
  @override
  @JsonKey(ignore: true)
  _$$VitcSwapEventSwapImplCopyWith<_$VitcSwapEventSwapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitcSwapEventSwapInternalImplCopyWith<$Res>
    implements $VitcSwapEventCopyWith<$Res> {
  factory _$$VitcSwapEventSwapInternalImplCopyWith(
          _$VitcSwapEventSwapInternalImpl value,
          $Res Function(_$VitcSwapEventSwapInternalImpl) then) =
      __$$VitcSwapEventSwapInternalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Token fromToken,
      Token toToken,
      BigInt fromAmount,
      BigInt toAmount,
      BigInt total,
      BigInt totalVite});

  @override
  $AddressCopyWith<$Res> get address;
  $TokenCopyWith<$Res> get fromToken;
  $TokenCopyWith<$Res> get toToken;
}

/// @nodoc
class __$$VitcSwapEventSwapInternalImplCopyWithImpl<$Res>
    extends _$VitcSwapEventCopyWithImpl<$Res, _$VitcSwapEventSwapInternalImpl>
    implements _$$VitcSwapEventSwapInternalImplCopyWith<$Res> {
  __$$VitcSwapEventSwapInternalImplCopyWithImpl(
      _$VitcSwapEventSwapInternalImpl _value,
      $Res Function(_$VitcSwapEventSwapInternalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? fromAmount = null,
    Object? toAmount = null,
    Object? total = null,
    Object? totalVite = null,
  }) {
    return _then(_$VitcSwapEventSwapInternalImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      fromToken: null == fromToken
          ? _value.fromToken
          : fromToken // ignore: cast_nullable_to_non_nullable
              as Token,
      toToken: null == toToken
          ? _value.toToken
          : toToken // ignore: cast_nullable_to_non_nullable
              as Token,
      fromAmount: null == fromAmount
          ? _value.fromAmount
          : fromAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      toAmount: null == toAmount
          ? _value.toAmount
          : toAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalVite: null == totalVite
          ? _value.totalVite
          : totalVite // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get fromToken {
    return $TokenCopyWith<$Res>(_value.fromToken, (value) {
      return _then(_value.copyWith(fromToken: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get toToken {
    return $TokenCopyWith<$Res>(_value.toToken, (value) {
      return _then(_value.copyWith(toToken: value));
    });
  }
}

/// @nodoc

class _$VitcSwapEventSwapInternalImpl implements _VitcSwapEventSwapInternal {
  const _$VitcSwapEventSwapInternalImpl(
      {required this.address,
      required this.fromToken,
      required this.toToken,
      required this.fromAmount,
      required this.toAmount,
      required this.total,
      required this.totalVite});

  @override
  final Address address;
  @override
  final Token fromToken;
  @override
  final Token toToken;
  @override
  final BigInt fromAmount;
  @override
  final BigInt toAmount;
  @override
  final BigInt total;
  @override
  final BigInt totalVite;

  @override
  String toString() {
    return 'VitcSwapEvent.swapInternal(address: $address, fromToken: $fromToken, toToken: $toToken, fromAmount: $fromAmount, toAmount: $toAmount, total: $total, totalVite: $totalVite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcSwapEventSwapInternalImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.fromToken, fromToken) ||
                other.fromToken == fromToken) &&
            (identical(other.toToken, toToken) || other.toToken == toToken) &&
            (identical(other.fromAmount, fromAmount) ||
                other.fromAmount == fromAmount) &&
            (identical(other.toAmount, toAmount) ||
                other.toAmount == toAmount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalVite, totalVite) ||
                other.totalVite == totalVite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, fromToken, toToken,
      fromAmount, toAmount, total, totalVite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcSwapEventSwapInternalImplCopyWith<_$VitcSwapEventSwapInternalImpl>
      get copyWith => __$$VitcSwapEventSwapInternalImplCopyWithImpl<
          _$VitcSwapEventSwapInternalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)
        swap,
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)
        swapInternal,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        addLiquidity,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        removeLiquidity,
  }) {
    return swapInternal(
        address, fromToken, toToken, fromAmount, toAmount, total, totalVite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
  }) {
    return swapInternal?.call(
        address, fromToken, toToken, fromAmount, toAmount, total, totalVite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
    required TResult orElse(),
  }) {
    if (swapInternal != null) {
      return swapInternal(
          address, fromToken, toToken, fromAmount, toAmount, total, totalVite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcSwapEventSwap value) swap,
    required TResult Function(_VitcSwapEventSwapInternal value) swapInternal,
    required TResult Function(_VitcSwapEventAddLiquidity value) addLiquidity,
    required TResult Function(_VitcSwapEventRemoveLiquidity value)
        removeLiquidity,
  }) {
    return swapInternal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcSwapEventSwap value)? swap,
    TResult? Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult? Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult? Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
  }) {
    return swapInternal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcSwapEventSwap value)? swap,
    TResult Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
    required TResult orElse(),
  }) {
    if (swapInternal != null) {
      return swapInternal(this);
    }
    return orElse();
  }
}

abstract class _VitcSwapEventSwapInternal implements VitcSwapEvent {
  const factory _VitcSwapEventSwapInternal(
      {required final Address address,
      required final Token fromToken,
      required final Token toToken,
      required final BigInt fromAmount,
      required final BigInt toAmount,
      required final BigInt total,
      required final BigInt totalVite}) = _$VitcSwapEventSwapInternalImpl;

  @override
  Address get address;
  Token get fromToken;
  Token get toToken;
  BigInt get fromAmount;
  BigInt get toAmount;
  BigInt get total;
  BigInt get totalVite;
  @override
  @JsonKey(ignore: true)
  _$$VitcSwapEventSwapInternalImplCopyWith<_$VitcSwapEventSwapInternalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitcSwapEventAddLiquidityImplCopyWith<$Res>
    implements $VitcSwapEventCopyWith<$Res> {
  factory _$$VitcSwapEventAddLiquidityImplCopyWith(
          _$VitcSwapEventAddLiquidityImpl value,
          $Res Function(_$VitcSwapEventAddLiquidityImpl) then) =
      __$$VitcSwapEventAddLiquidityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Token token,
      BigInt tokenAmount,
      BigInt viteAmount,
      BigInt tokenTotal,
      BigInt viteTotal});

  @override
  $AddressCopyWith<$Res> get address;
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$VitcSwapEventAddLiquidityImplCopyWithImpl<$Res>
    extends _$VitcSwapEventCopyWithImpl<$Res, _$VitcSwapEventAddLiquidityImpl>
    implements _$$VitcSwapEventAddLiquidityImplCopyWith<$Res> {
  __$$VitcSwapEventAddLiquidityImplCopyWithImpl(
      _$VitcSwapEventAddLiquidityImpl _value,
      $Res Function(_$VitcSwapEventAddLiquidityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? token = null,
    Object? tokenAmount = null,
    Object? viteAmount = null,
    Object? tokenTotal = null,
    Object? viteTotal = null,
  }) {
    return _then(_$VitcSwapEventAddLiquidityImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenAmount: null == tokenAmount
          ? _value.tokenAmount
          : tokenAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      viteAmount: null == viteAmount
          ? _value.viteAmount
          : viteAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenTotal: null == tokenTotal
          ? _value.tokenTotal
          : tokenTotal // ignore: cast_nullable_to_non_nullable
              as BigInt,
      viteTotal: null == viteTotal
          ? _value.viteTotal
          : viteTotal // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$VitcSwapEventAddLiquidityImpl implements _VitcSwapEventAddLiquidity {
  const _$VitcSwapEventAddLiquidityImpl(
      {required this.address,
      required this.token,
      required this.tokenAmount,
      required this.viteAmount,
      required this.tokenTotal,
      required this.viteTotal});

  @override
  final Address address;
  @override
  final Token token;
  @override
  final BigInt tokenAmount;
  @override
  final BigInt viteAmount;
  @override
  final BigInt tokenTotal;
  @override
  final BigInt viteTotal;

  @override
  String toString() {
    return 'VitcSwapEvent.addLiquidity(address: $address, token: $token, tokenAmount: $tokenAmount, viteAmount: $viteAmount, tokenTotal: $tokenTotal, viteTotal: $viteTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcSwapEventAddLiquidityImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenAmount, tokenAmount) ||
                other.tokenAmount == tokenAmount) &&
            (identical(other.viteAmount, viteAmount) ||
                other.viteAmount == viteAmount) &&
            (identical(other.tokenTotal, tokenTotal) ||
                other.tokenTotal == tokenTotal) &&
            (identical(other.viteTotal, viteTotal) ||
                other.viteTotal == viteTotal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, token, tokenAmount,
      viteAmount, tokenTotal, viteTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcSwapEventAddLiquidityImplCopyWith<_$VitcSwapEventAddLiquidityImpl>
      get copyWith => __$$VitcSwapEventAddLiquidityImplCopyWithImpl<
          _$VitcSwapEventAddLiquidityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)
        swap,
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)
        swapInternal,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        addLiquidity,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        removeLiquidity,
  }) {
    return addLiquidity(
        address, token, tokenAmount, viteAmount, tokenTotal, viteTotal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
  }) {
    return addLiquidity?.call(
        address, token, tokenAmount, viteAmount, tokenTotal, viteTotal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
    required TResult orElse(),
  }) {
    if (addLiquidity != null) {
      return addLiquidity(
          address, token, tokenAmount, viteAmount, tokenTotal, viteTotal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcSwapEventSwap value) swap,
    required TResult Function(_VitcSwapEventSwapInternal value) swapInternal,
    required TResult Function(_VitcSwapEventAddLiquidity value) addLiquidity,
    required TResult Function(_VitcSwapEventRemoveLiquidity value)
        removeLiquidity,
  }) {
    return addLiquidity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcSwapEventSwap value)? swap,
    TResult? Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult? Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult? Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
  }) {
    return addLiquidity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcSwapEventSwap value)? swap,
    TResult Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
    required TResult orElse(),
  }) {
    if (addLiquidity != null) {
      return addLiquidity(this);
    }
    return orElse();
  }
}

abstract class _VitcSwapEventAddLiquidity implements VitcSwapEvent {
  const factory _VitcSwapEventAddLiquidity(
      {required final Address address,
      required final Token token,
      required final BigInt tokenAmount,
      required final BigInt viteAmount,
      required final BigInt tokenTotal,
      required final BigInt viteTotal}) = _$VitcSwapEventAddLiquidityImpl;

  @override
  Address get address;
  Token get token;
  BigInt get tokenAmount;
  BigInt get viteAmount;
  BigInt get tokenTotal;
  BigInt get viteTotal;
  @override
  @JsonKey(ignore: true)
  _$$VitcSwapEventAddLiquidityImplCopyWith<_$VitcSwapEventAddLiquidityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitcSwapEventRemoveLiquidityImplCopyWith<$Res>
    implements $VitcSwapEventCopyWith<$Res> {
  factory _$$VitcSwapEventRemoveLiquidityImplCopyWith(
          _$VitcSwapEventRemoveLiquidityImpl value,
          $Res Function(_$VitcSwapEventRemoveLiquidityImpl) then) =
      __$$VitcSwapEventRemoveLiquidityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Token token,
      BigInt tokenAmount,
      BigInt viteAmount,
      BigInt tokenTotal,
      BigInt viteTotal});

  @override
  $AddressCopyWith<$Res> get address;
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$VitcSwapEventRemoveLiquidityImplCopyWithImpl<$Res>
    extends _$VitcSwapEventCopyWithImpl<$Res,
        _$VitcSwapEventRemoveLiquidityImpl>
    implements _$$VitcSwapEventRemoveLiquidityImplCopyWith<$Res> {
  __$$VitcSwapEventRemoveLiquidityImplCopyWithImpl(
      _$VitcSwapEventRemoveLiquidityImpl _value,
      $Res Function(_$VitcSwapEventRemoveLiquidityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? token = null,
    Object? tokenAmount = null,
    Object? viteAmount = null,
    Object? tokenTotal = null,
    Object? viteTotal = null,
  }) {
    return _then(_$VitcSwapEventRemoveLiquidityImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      tokenAmount: null == tokenAmount
          ? _value.tokenAmount
          : tokenAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      viteAmount: null == viteAmount
          ? _value.viteAmount
          : viteAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenTotal: null == tokenTotal
          ? _value.tokenTotal
          : tokenTotal // ignore: cast_nullable_to_non_nullable
              as BigInt,
      viteTotal: null == viteTotal
          ? _value.viteTotal
          : viteTotal // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$VitcSwapEventRemoveLiquidityImpl
    implements _VitcSwapEventRemoveLiquidity {
  const _$VitcSwapEventRemoveLiquidityImpl(
      {required this.address,
      required this.token,
      required this.tokenAmount,
      required this.viteAmount,
      required this.tokenTotal,
      required this.viteTotal});

  @override
  final Address address;
  @override
  final Token token;
  @override
  final BigInt tokenAmount;
  @override
  final BigInt viteAmount;
  @override
  final BigInt tokenTotal;
  @override
  final BigInt viteTotal;

  @override
  String toString() {
    return 'VitcSwapEvent.removeLiquidity(address: $address, token: $token, tokenAmount: $tokenAmount, viteAmount: $viteAmount, tokenTotal: $tokenTotal, viteTotal: $viteTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcSwapEventRemoveLiquidityImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenAmount, tokenAmount) ||
                other.tokenAmount == tokenAmount) &&
            (identical(other.viteAmount, viteAmount) ||
                other.viteAmount == viteAmount) &&
            (identical(other.tokenTotal, tokenTotal) ||
                other.tokenTotal == tokenTotal) &&
            (identical(other.viteTotal, viteTotal) ||
                other.viteTotal == viteTotal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, token, tokenAmount,
      viteAmount, tokenTotal, viteTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcSwapEventRemoveLiquidityImplCopyWith<
          _$VitcSwapEventRemoveLiquidityImpl>
      get copyWith => __$$VitcSwapEventRemoveLiquidityImplCopyWithImpl<
          _$VitcSwapEventRemoveLiquidityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)
        swap,
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)
        swapInternal,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        addLiquidity,
    required TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)
        removeLiquidity,
  }) {
    return removeLiquidity(
        address, token, tokenAmount, viteAmount, tokenTotal, viteTotal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult? Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult? Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
  }) {
    return removeLiquidity?.call(
        address, token, tokenAmount, viteAmount, tokenTotal, viteTotal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)?
        swap,
    TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)?
        swapInternal,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        addLiquidity,
    TResult Function(Address address, Token token, BigInt tokenAmount,
            BigInt viteAmount, BigInt tokenTotal, BigInt viteTotal)?
        removeLiquidity,
    required TResult orElse(),
  }) {
    if (removeLiquidity != null) {
      return removeLiquidity(
          address, token, tokenAmount, viteAmount, tokenTotal, viteTotal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcSwapEventSwap value) swap,
    required TResult Function(_VitcSwapEventSwapInternal value) swapInternal,
    required TResult Function(_VitcSwapEventAddLiquidity value) addLiquidity,
    required TResult Function(_VitcSwapEventRemoveLiquidity value)
        removeLiquidity,
  }) {
    return removeLiquidity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcSwapEventSwap value)? swap,
    TResult? Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult? Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult? Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
  }) {
    return removeLiquidity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcSwapEventSwap value)? swap,
    TResult Function(_VitcSwapEventSwapInternal value)? swapInternal,
    TResult Function(_VitcSwapEventAddLiquidity value)? addLiquidity,
    TResult Function(_VitcSwapEventRemoveLiquidity value)? removeLiquidity,
    required TResult orElse(),
  }) {
    if (removeLiquidity != null) {
      return removeLiquidity(this);
    }
    return orElse();
  }
}

abstract class _VitcSwapEventRemoveLiquidity implements VitcSwapEvent {
  const factory _VitcSwapEventRemoveLiquidity(
      {required final Address address,
      required final Token token,
      required final BigInt tokenAmount,
      required final BigInt viteAmount,
      required final BigInt tokenTotal,
      required final BigInt viteTotal}) = _$VitcSwapEventRemoveLiquidityImpl;

  @override
  Address get address;
  Token get token;
  BigInt get tokenAmount;
  BigInt get viteAmount;
  BigInt get tokenTotal;
  BigInt get viteTotal;
  @override
  @JsonKey(ignore: true)
  _$$VitcSwapEventRemoveLiquidityImplCopyWith<
          _$VitcSwapEventRemoveLiquidityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
