// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vinu_swap_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VinuSwapTokenCache _$VinuSwapTokenCacheFromJson(Map<String, dynamic> json) {
  return _VinuSwapTokenCache.fromJson(json);
}

/// @nodoc
mixin _$VinuSwapTokenCache {
  IList<String> get tradingTokens => throw _privateConstructorUsedError;
  int get lastHeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VinuSwapTokenCacheCopyWith<VinuSwapTokenCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinuSwapTokenCacheCopyWith<$Res> {
  factory $VinuSwapTokenCacheCopyWith(
          VinuSwapTokenCache value, $Res Function(VinuSwapTokenCache) then) =
      _$VinuSwapTokenCacheCopyWithImpl<$Res, VinuSwapTokenCache>;
  @useResult
  $Res call({IList<String> tradingTokens, int lastHeight});
}

/// @nodoc
class _$VinuSwapTokenCacheCopyWithImpl<$Res, $Val extends VinuSwapTokenCache>
    implements $VinuSwapTokenCacheCopyWith<$Res> {
  _$VinuSwapTokenCacheCopyWithImpl(this._value, this._then);

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
abstract class _$$VinuSwapTokenCacheImplCopyWith<$Res>
    implements $VinuSwapTokenCacheCopyWith<$Res> {
  factory _$$VinuSwapTokenCacheImplCopyWith(_$VinuSwapTokenCacheImpl value,
          $Res Function(_$VinuSwapTokenCacheImpl) then) =
      __$$VinuSwapTokenCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<String> tradingTokens, int lastHeight});
}

/// @nodoc
class __$$VinuSwapTokenCacheImplCopyWithImpl<$Res>
    extends _$VinuSwapTokenCacheCopyWithImpl<$Res, _$VinuSwapTokenCacheImpl>
    implements _$$VinuSwapTokenCacheImplCopyWith<$Res> {
  __$$VinuSwapTokenCacheImplCopyWithImpl(_$VinuSwapTokenCacheImpl _value,
      $Res Function(_$VinuSwapTokenCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradingTokens = null,
    Object? lastHeight = null,
  }) {
    return _then(_$VinuSwapTokenCacheImpl(
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
class _$VinuSwapTokenCacheImpl implements _VinuSwapTokenCache {
  const _$VinuSwapTokenCacheImpl(
      {this.tradingTokens = const IListConst(kVinuSwapTokenIdList),
      this.lastHeight = kVinuSwapLastHeight});

  factory _$VinuSwapTokenCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$VinuSwapTokenCacheImplFromJson(json);

  @override
  @JsonKey()
  final IList<String> tradingTokens;
  @override
  @JsonKey()
  final int lastHeight;

  @override
  String toString() {
    return 'VinuSwapTokenCache(tradingTokens: $tradingTokens, lastHeight: $lastHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuSwapTokenCacheImpl &&
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
  _$$VinuSwapTokenCacheImplCopyWith<_$VinuSwapTokenCacheImpl> get copyWith =>
      __$$VinuSwapTokenCacheImplCopyWithImpl<_$VinuSwapTokenCacheImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VinuSwapTokenCacheImplToJson(
      this,
    );
  }
}

abstract class _VinuSwapTokenCache implements VinuSwapTokenCache {
  const factory _VinuSwapTokenCache(
      {final IList<String> tradingTokens,
      final int lastHeight}) = _$VinuSwapTokenCacheImpl;

  factory _VinuSwapTokenCache.fromJson(Map<String, dynamic> json) =
      _$VinuSwapTokenCacheImpl.fromJson;

  @override
  IList<String> get tradingTokens;
  @override
  int get lastHeight;
  @override
  @JsonKey(ignore: true)
  _$$VinuSwapTokenCacheImplCopyWith<_$VinuSwapTokenCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VinuSwapSettings _$VinuSwapSettingsFromJson(Map<String, dynamic> json) {
  return _VinuSwapSettings.fromJson(json);
}

/// @nodoc
mixin _$VinuSwapSettings {
  VinuSwapTokenCache get tokenCache => throw _privateConstructorUsedError;
  TokenInfo get fromToken => throw _privateConstructorUsedError;
  TokenInfo get toToken => throw _privateConstructorUsedError;
  double get slippage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VinuSwapSettingsCopyWith<VinuSwapSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinuSwapSettingsCopyWith<$Res> {
  factory $VinuSwapSettingsCopyWith(
          VinuSwapSettings value, $Res Function(VinuSwapSettings) then) =
      _$VinuSwapSettingsCopyWithImpl<$Res, VinuSwapSettings>;
  @useResult
  $Res call(
      {VinuSwapTokenCache tokenCache,
      TokenInfo fromToken,
      TokenInfo toToken,
      double slippage});

  $VinuSwapTokenCacheCopyWith<$Res> get tokenCache;
  $TokenInfoCopyWith<$Res> get fromToken;
  $TokenInfoCopyWith<$Res> get toToken;
}

/// @nodoc
class _$VinuSwapSettingsCopyWithImpl<$Res, $Val extends VinuSwapSettings>
    implements $VinuSwapSettingsCopyWith<$Res> {
  _$VinuSwapSettingsCopyWithImpl(this._value, this._then);

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
              as VinuSwapTokenCache,
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
  $VinuSwapTokenCacheCopyWith<$Res> get tokenCache {
    return $VinuSwapTokenCacheCopyWith<$Res>(_value.tokenCache, (value) {
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
abstract class _$$VinuSwapSettingsImplCopyWith<$Res>
    implements $VinuSwapSettingsCopyWith<$Res> {
  factory _$$VinuSwapSettingsImplCopyWith(_$VinuSwapSettingsImpl value,
          $Res Function(_$VinuSwapSettingsImpl) then) =
      __$$VinuSwapSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VinuSwapTokenCache tokenCache,
      TokenInfo fromToken,
      TokenInfo toToken,
      double slippage});

  @override
  $VinuSwapTokenCacheCopyWith<$Res> get tokenCache;
  @override
  $TokenInfoCopyWith<$Res> get fromToken;
  @override
  $TokenInfoCopyWith<$Res> get toToken;
}

/// @nodoc
class __$$VinuSwapSettingsImplCopyWithImpl<$Res>
    extends _$VinuSwapSettingsCopyWithImpl<$Res, _$VinuSwapSettingsImpl>
    implements _$$VinuSwapSettingsImplCopyWith<$Res> {
  __$$VinuSwapSettingsImplCopyWithImpl(_$VinuSwapSettingsImpl _value,
      $Res Function(_$VinuSwapSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenCache = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? slippage = null,
  }) {
    return _then(_$VinuSwapSettingsImpl(
      tokenCache: null == tokenCache
          ? _value.tokenCache
          : tokenCache // ignore: cast_nullable_to_non_nullable
              as VinuSwapTokenCache,
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
class _$VinuSwapSettingsImpl implements _VinuSwapSettings {
  const _$VinuSwapSettingsImpl(
      {this.tokenCache = const VinuSwapTokenCache(),
      required this.fromToken,
      required this.toToken,
      this.slippage = 0.005});

  factory _$VinuSwapSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VinuSwapSettingsImplFromJson(json);

  @override
  @JsonKey()
  final VinuSwapTokenCache tokenCache;
  @override
  final TokenInfo fromToken;
  @override
  final TokenInfo toToken;
  @override
  @JsonKey()
  final double slippage;

  @override
  String toString() {
    return 'VinuSwapSettings(tokenCache: $tokenCache, fromToken: $fromToken, toToken: $toToken, slippage: $slippage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuSwapSettingsImpl &&
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
  _$$VinuSwapSettingsImplCopyWith<_$VinuSwapSettingsImpl> get copyWith =>
      __$$VinuSwapSettingsImplCopyWithImpl<_$VinuSwapSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VinuSwapSettingsImplToJson(
      this,
    );
  }
}

abstract class _VinuSwapSettings implements VinuSwapSettings {
  const factory _VinuSwapSettings(
      {final VinuSwapTokenCache tokenCache,
      required final TokenInfo fromToken,
      required final TokenInfo toToken,
      final double slippage}) = _$VinuSwapSettingsImpl;

  factory _VinuSwapSettings.fromJson(Map<String, dynamic> json) =
      _$VinuSwapSettingsImpl.fromJson;

  @override
  VinuSwapTokenCache get tokenCache;
  @override
  TokenInfo get fromToken;
  @override
  TokenInfo get toToken;
  @override
  double get slippage;
  @override
  @JsonKey(ignore: true)
  _$$VinuSwapSettingsImplCopyWith<_$VinuSwapSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VinuSwapState {
  Amount get fromAmount => throw _privateConstructorUsedError;
  Amount get toAmount => throw _privateConstructorUsedError;
  double get slippage => throw _privateConstructorUsedError;
  int get requestId => throw _privateConstructorUsedError;
  int get callId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VinuSwapStateCopyWith<VinuSwapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinuSwapStateCopyWith<$Res> {
  factory $VinuSwapStateCopyWith(
          VinuSwapState value, $Res Function(VinuSwapState) then) =
      _$VinuSwapStateCopyWithImpl<$Res, VinuSwapState>;
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
class _$VinuSwapStateCopyWithImpl<$Res, $Val extends VinuSwapState>
    implements $VinuSwapStateCopyWith<$Res> {
  _$VinuSwapStateCopyWithImpl(this._value, this._then);

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
abstract class _$$VinuSwapStateImplCopyWith<$Res>
    implements $VinuSwapStateCopyWith<$Res> {
  factory _$$VinuSwapStateImplCopyWith(
          _$VinuSwapStateImpl value, $Res Function(_$VinuSwapStateImpl) then) =
      __$$VinuSwapStateImplCopyWithImpl<$Res>;
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
class __$$VinuSwapStateImplCopyWithImpl<$Res>
    extends _$VinuSwapStateCopyWithImpl<$Res, _$VinuSwapStateImpl>
    implements _$$VinuSwapStateImplCopyWith<$Res> {
  __$$VinuSwapStateImplCopyWithImpl(
      _$VinuSwapStateImpl _value, $Res Function(_$VinuSwapStateImpl) _then)
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
    return _then(_$VinuSwapStateImpl(
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

class _$VinuSwapStateImpl extends _VinuSwapState {
  const _$VinuSwapStateImpl(
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
    return 'VinuSwapState(fromAmount: $fromAmount, toAmount: $toAmount, slippage: $slippage, requestId: $requestId, callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuSwapStateImpl &&
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
  _$$VinuSwapStateImplCopyWith<_$VinuSwapStateImpl> get copyWith =>
      __$$VinuSwapStateImplCopyWithImpl<_$VinuSwapStateImpl>(this, _$identity);
}

abstract class _VinuSwapState extends VinuSwapState {
  const factory _VinuSwapState(
      {required final Amount fromAmount,
      required final Amount toAmount,
      required final double slippage,
      required final int requestId,
      required final int callId}) = _$VinuSwapStateImpl;
  const _VinuSwapState._() : super._();

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
  _$$VinuSwapStateImplCopyWith<_$VinuSwapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LiquidityPool {
  BigInt get total => throw _privateConstructorUsedError;
  BigInt get totalVinu => throw _privateConstructorUsedError;
  BigInt get k => throw _privateConstructorUsedError;
  BigInt get tokenSuply => throw _privateConstructorUsedError;
  Token get lpToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiquidityPoolCopyWith<LiquidityPool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiquidityPoolCopyWith<$Res> {
  factory $LiquidityPoolCopyWith(
          LiquidityPool value, $Res Function(LiquidityPool) then) =
      _$LiquidityPoolCopyWithImpl<$Res, LiquidityPool>;
  @useResult
  $Res call(
      {BigInt total,
      BigInt totalVinu,
      BigInt k,
      BigInt tokenSuply,
      Token lpToken});

  $TokenCopyWith<$Res> get lpToken;
}

/// @nodoc
class _$LiquidityPoolCopyWithImpl<$Res, $Val extends LiquidityPool>
    implements $LiquidityPoolCopyWith<$Res> {
  _$LiquidityPoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalVinu = null,
    Object? k = null,
    Object? tokenSuply = null,
    Object? lpToken = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalVinu: null == totalVinu
          ? _value.totalVinu
          : totalVinu // ignore: cast_nullable_to_non_nullable
              as BigInt,
      k: null == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenSuply: null == tokenSuply
          ? _value.tokenSuply
          : tokenSuply // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LiquidityPoolImplCopyWith<$Res>
    implements $LiquidityPoolCopyWith<$Res> {
  factory _$$LiquidityPoolImplCopyWith(
          _$LiquidityPoolImpl value, $Res Function(_$LiquidityPoolImpl) then) =
      __$$LiquidityPoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt total,
      BigInt totalVinu,
      BigInt k,
      BigInt tokenSuply,
      Token lpToken});

  @override
  $TokenCopyWith<$Res> get lpToken;
}

/// @nodoc
class __$$LiquidityPoolImplCopyWithImpl<$Res>
    extends _$LiquidityPoolCopyWithImpl<$Res, _$LiquidityPoolImpl>
    implements _$$LiquidityPoolImplCopyWith<$Res> {
  __$$LiquidityPoolImplCopyWithImpl(
      _$LiquidityPoolImpl _value, $Res Function(_$LiquidityPoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalVinu = null,
    Object? k = null,
    Object? tokenSuply = null,
    Object? lpToken = null,
  }) {
    return _then(_$LiquidityPoolImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalVinu: null == totalVinu
          ? _value.totalVinu
          : totalVinu // ignore: cast_nullable_to_non_nullable
              as BigInt,
      k: null == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenSuply: null == tokenSuply
          ? _value.tokenSuply
          : tokenSuply // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lpToken: null == lpToken
          ? _value.lpToken
          : lpToken // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc

class _$LiquidityPoolImpl implements _LiquidityPool {
  const _$LiquidityPoolImpl(
      {required this.total,
      required this.totalVinu,
      required this.k,
      required this.tokenSuply,
      required this.lpToken});

  @override
  final BigInt total;
  @override
  final BigInt totalVinu;
  @override
  final BigInt k;
  @override
  final BigInt tokenSuply;
  @override
  final Token lpToken;

  @override
  String toString() {
    return 'LiquidityPool(total: $total, totalVinu: $totalVinu, k: $k, tokenSuply: $tokenSuply, lpToken: $lpToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiquidityPoolImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalVinu, totalVinu) ||
                other.totalVinu == totalVinu) &&
            (identical(other.k, k) || other.k == k) &&
            (identical(other.tokenSuply, tokenSuply) ||
                other.tokenSuply == tokenSuply) &&
            (identical(other.lpToken, lpToken) || other.lpToken == lpToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, total, totalVinu, k, tokenSuply, lpToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiquidityPoolImplCopyWith<_$LiquidityPoolImpl> get copyWith =>
      __$$LiquidityPoolImplCopyWithImpl<_$LiquidityPoolImpl>(this, _$identity);
}

abstract class _LiquidityPool implements LiquidityPool {
  const factory _LiquidityPool(
      {required final BigInt total,
      required final BigInt totalVinu,
      required final BigInt k,
      required final BigInt tokenSuply,
      required final Token lpToken}) = _$LiquidityPoolImpl;

  @override
  BigInt get total;
  @override
  BigInt get totalVinu;
  @override
  BigInt get k;
  @override
  BigInt get tokenSuply;
  @override
  Token get lpToken;
  @override
  @JsonKey(ignore: true)
  _$$LiquidityPoolImplCopyWith<_$LiquidityPoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VinuSwapEvent {
  Address get address => throw _privateConstructorUsedError;
  Token get fromToken => throw _privateConstructorUsedError;
  Token get toToken => throw _privateConstructorUsedError;
  BigInt get fromAmount => throw _privateConstructorUsedError;
  BigInt get toAmount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)
        swap,
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)
        swapInternal,
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VinuSwapEventSwap value) swap,
    required TResult Function(_VinuSwapEventSwapInternal value) swapInternal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuSwapEventSwap value)? swap,
    TResult? Function(_VinuSwapEventSwapInternal value)? swapInternal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuSwapEventSwap value)? swap,
    TResult Function(_VinuSwapEventSwapInternal value)? swapInternal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VinuSwapEventCopyWith<VinuSwapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinuSwapEventCopyWith<$Res> {
  factory $VinuSwapEventCopyWith(
          VinuSwapEvent value, $Res Function(VinuSwapEvent) then) =
      _$VinuSwapEventCopyWithImpl<$Res, VinuSwapEvent>;
  @useResult
  $Res call(
      {Address address,
      Token fromToken,
      Token toToken,
      BigInt fromAmount,
      BigInt toAmount});

  $AddressCopyWith<$Res> get address;
  $TokenCopyWith<$Res> get fromToken;
  $TokenCopyWith<$Res> get toToken;
}

/// @nodoc
class _$VinuSwapEventCopyWithImpl<$Res, $Val extends VinuSwapEvent>
    implements $VinuSwapEventCopyWith<$Res> {
  _$VinuSwapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? fromAmount = null,
    Object? toAmount = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get fromToken {
    return $TokenCopyWith<$Res>(_value.fromToken, (value) {
      return _then(_value.copyWith(fromToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get toToken {
    return $TokenCopyWith<$Res>(_value.toToken, (value) {
      return _then(_value.copyWith(toToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VinuSwapEventSwapImplCopyWith<$Res>
    implements $VinuSwapEventCopyWith<$Res> {
  factory _$$VinuSwapEventSwapImplCopyWith(_$VinuSwapEventSwapImpl value,
          $Res Function(_$VinuSwapEventSwapImpl) then) =
      __$$VinuSwapEventSwapImplCopyWithImpl<$Res>;
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
  @override
  $TokenCopyWith<$Res> get fromToken;
  @override
  $TokenCopyWith<$Res> get toToken;
}

/// @nodoc
class __$$VinuSwapEventSwapImplCopyWithImpl<$Res>
    extends _$VinuSwapEventCopyWithImpl<$Res, _$VinuSwapEventSwapImpl>
    implements _$$VinuSwapEventSwapImplCopyWith<$Res> {
  __$$VinuSwapEventSwapImplCopyWithImpl(_$VinuSwapEventSwapImpl _value,
      $Res Function(_$VinuSwapEventSwapImpl) _then)
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
    return _then(_$VinuSwapEventSwapImpl(
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
}

/// @nodoc

class _$VinuSwapEventSwapImpl implements _VinuSwapEventSwap {
  const _$VinuSwapEventSwapImpl(
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
    return 'VinuSwapEvent.swap(address: $address, fromToken: $fromToken, toToken: $toToken, fromAmount: $fromAmount, toAmount: $toAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuSwapEventSwapImpl &&
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
  _$$VinuSwapEventSwapImplCopyWith<_$VinuSwapEventSwapImpl> get copyWith =>
      __$$VinuSwapEventSwapImplCopyWithImpl<_$VinuSwapEventSwapImpl>(
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
    required TResult Function(_VinuSwapEventSwap value) swap,
    required TResult Function(_VinuSwapEventSwapInternal value) swapInternal,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuSwapEventSwap value)? swap,
    TResult? Function(_VinuSwapEventSwapInternal value)? swapInternal,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuSwapEventSwap value)? swap,
    TResult Function(_VinuSwapEventSwapInternal value)? swapInternal,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }
}

abstract class _VinuSwapEventSwap implements VinuSwapEvent {
  const factory _VinuSwapEventSwap(
      {required final Address address,
      required final Token fromToken,
      required final Token toToken,
      required final BigInt fromAmount,
      required final BigInt toAmount}) = _$VinuSwapEventSwapImpl;

  @override
  Address get address;
  @override
  Token get fromToken;
  @override
  Token get toToken;
  @override
  BigInt get fromAmount;
  @override
  BigInt get toAmount;
  @override
  @JsonKey(ignore: true)
  _$$VinuSwapEventSwapImplCopyWith<_$VinuSwapEventSwapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VinuSwapEventSwapInternalImplCopyWith<$Res>
    implements $VinuSwapEventCopyWith<$Res> {
  factory _$$VinuSwapEventSwapInternalImplCopyWith(
          _$VinuSwapEventSwapInternalImpl value,
          $Res Function(_$VinuSwapEventSwapInternalImpl) then) =
      __$$VinuSwapEventSwapInternalImplCopyWithImpl<$Res>;
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
  @override
  $TokenCopyWith<$Res> get fromToken;
  @override
  $TokenCopyWith<$Res> get toToken;
}

/// @nodoc
class __$$VinuSwapEventSwapInternalImplCopyWithImpl<$Res>
    extends _$VinuSwapEventCopyWithImpl<$Res, _$VinuSwapEventSwapInternalImpl>
    implements _$$VinuSwapEventSwapInternalImplCopyWith<$Res> {
  __$$VinuSwapEventSwapInternalImplCopyWithImpl(
      _$VinuSwapEventSwapInternalImpl _value,
      $Res Function(_$VinuSwapEventSwapInternalImpl) _then)
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
    return _then(_$VinuSwapEventSwapInternalImpl(
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
}

/// @nodoc

class _$VinuSwapEventSwapInternalImpl implements _VinuSwapEventSwapInternal {
  const _$VinuSwapEventSwapInternalImpl(
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
    return 'VinuSwapEvent.swapInternal(address: $address, fromToken: $fromToken, toToken: $toToken, fromAmount: $fromAmount, toAmount: $toAmount, total: $total, totalVite: $totalVite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VinuSwapEventSwapInternalImpl &&
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
  _$$VinuSwapEventSwapInternalImplCopyWith<_$VinuSwapEventSwapInternalImpl>
      get copyWith => __$$VinuSwapEventSwapInternalImplCopyWithImpl<
          _$VinuSwapEventSwapInternalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount)
        swap,
    required TResult Function(Address address, Token fromToken, Token toToken,
            BigInt fromAmount, BigInt toAmount, BigInt total, BigInt totalVite)
        swapInternal,
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
    required TResult Function(_VinuSwapEventSwap value) swap,
    required TResult Function(_VinuSwapEventSwapInternal value) swapInternal,
  }) {
    return swapInternal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VinuSwapEventSwap value)? swap,
    TResult? Function(_VinuSwapEventSwapInternal value)? swapInternal,
  }) {
    return swapInternal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VinuSwapEventSwap value)? swap,
    TResult Function(_VinuSwapEventSwapInternal value)? swapInternal,
    required TResult orElse(),
  }) {
    if (swapInternal != null) {
      return swapInternal(this);
    }
    return orElse();
  }
}

abstract class _VinuSwapEventSwapInternal implements VinuSwapEvent {
  const factory _VinuSwapEventSwapInternal(
      {required final Address address,
      required final Token fromToken,
      required final Token toToken,
      required final BigInt fromAmount,
      required final BigInt toAmount,
      required final BigInt total,
      required final BigInt totalVite}) = _$VinuSwapEventSwapInternalImpl;

  @override
  Address get address;
  @override
  Token get fromToken;
  @override
  Token get toToken;
  @override
  BigInt get fromAmount;
  @override
  BigInt get toAmount;
  BigInt get total;
  BigInt get totalVite;
  @override
  @JsonKey(ignore: true)
  _$$VinuSwapEventSwapInternalImplCopyWith<_$VinuSwapEventSwapInternalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
