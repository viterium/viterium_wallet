// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vitex_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeRate _$ExchangeRateFromJson(Map<String, dynamic> json) {
  return _ExchangeRateVitex.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRate {
  VitexExchangeRate get exchangeRate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VitexExchangeRate exchangeRate) vitex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VitexExchangeRate exchangeRate)? vitex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VitexExchangeRate exchangeRate)? vitex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeRateVitex value) vitex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeRateVitex value)? vitex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeRateVitex value)? vitex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateCopyWith<ExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateCopyWith<$Res> {
  factory $ExchangeRateCopyWith(
          ExchangeRate value, $Res Function(ExchangeRate) then) =
      _$ExchangeRateCopyWithImpl<$Res, ExchangeRate>;
  @useResult
  $Res call({VitexExchangeRate exchangeRate});

  $VitexExchangeRateCopyWith<$Res> get exchangeRate;
}

/// @nodoc
class _$ExchangeRateCopyWithImpl<$Res, $Val extends ExchangeRate>
    implements $ExchangeRateCopyWith<$Res> {
  _$ExchangeRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeRate = null,
  }) {
    return _then(_value.copyWith(
      exchangeRate: null == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as VitexExchangeRate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VitexExchangeRateCopyWith<$Res> get exchangeRate {
    return $VitexExchangeRateCopyWith<$Res>(_value.exchangeRate, (value) {
      return _then(_value.copyWith(exchangeRate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExchangeRateVitexCopyWith<$Res>
    implements $ExchangeRateCopyWith<$Res> {
  factory _$$_ExchangeRateVitexCopyWith(_$_ExchangeRateVitex value,
          $Res Function(_$_ExchangeRateVitex) then) =
      __$$_ExchangeRateVitexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VitexExchangeRate exchangeRate});

  @override
  $VitexExchangeRateCopyWith<$Res> get exchangeRate;
}

/// @nodoc
class __$$_ExchangeRateVitexCopyWithImpl<$Res>
    extends _$ExchangeRateCopyWithImpl<$Res, _$_ExchangeRateVitex>
    implements _$$_ExchangeRateVitexCopyWith<$Res> {
  __$$_ExchangeRateVitexCopyWithImpl(
      _$_ExchangeRateVitex _value, $Res Function(_$_ExchangeRateVitex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeRate = null,
  }) {
    return _then(_$_ExchangeRateVitex(
      null == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as VitexExchangeRate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeRateVitex implements _ExchangeRateVitex {
  const _$_ExchangeRateVitex(this.exchangeRate);

  factory _$_ExchangeRateVitex.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeRateVitexFromJson(json);

  @override
  final VitexExchangeRate exchangeRate;

  @override
  String toString() {
    return 'ExchangeRate.vitex(exchangeRate: $exchangeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRateVitex &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, exchangeRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRateVitexCopyWith<_$_ExchangeRateVitex> get copyWith =>
      __$$_ExchangeRateVitexCopyWithImpl<_$_ExchangeRateVitex>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VitexExchangeRate exchangeRate) vitex,
  }) {
    return vitex(exchangeRate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VitexExchangeRate exchangeRate)? vitex,
  }) {
    return vitex?.call(exchangeRate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VitexExchangeRate exchangeRate)? vitex,
    required TResult orElse(),
  }) {
    if (vitex != null) {
      return vitex(exchangeRate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeRateVitex value) vitex,
  }) {
    return vitex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeRateVitex value)? vitex,
  }) {
    return vitex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeRateVitex value)? vitex,
    required TResult orElse(),
  }) {
    if (vitex != null) {
      return vitex(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeRateVitexToJson(
      this,
    );
  }
}

abstract class _ExchangeRateVitex implements ExchangeRate {
  const factory _ExchangeRateVitex(final VitexExchangeRate exchangeRate) =
      _$_ExchangeRateVitex;

  factory _ExchangeRateVitex.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRateVitex.fromJson;

  @override
  VitexExchangeRate get exchangeRate;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRateVitexCopyWith<_$_ExchangeRateVitex> get copyWith =>
      throw _privateConstructorUsedError;
}

VitexExchangeRate _$VitexExchangeRateFromJson(Map<String, dynamic> json) {
  return _VitexExchangeRate.fromJson(json);
}

/// @nodoc
mixin _$VitexExchangeRate {
  String get tokenId => throw _privateConstructorUsedError;
  String? get tokenSymbol => throw _privateConstructorUsedError;
  double get usdRate => throw _privateConstructorUsedError;
  double get cnyRate => throw _privateConstructorUsedError;
  Decimal? get rubRate => throw _privateConstructorUsedError;
  Decimal? get krwRate => throw _privateConstructorUsedError;
  Decimal? get tryRate => throw _privateConstructorUsedError;
  Decimal? get vndRate => throw _privateConstructorUsedError;
  Decimal? get eurRate => throw _privateConstructorUsedError;
  Decimal? get gbpRate => throw _privateConstructorUsedError;
  Decimal? get inrRate => throw _privateConstructorUsedError;
  Decimal? get uahRate => throw _privateConstructorUsedError;
  double get btcRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VitexExchangeRateCopyWith<VitexExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitexExchangeRateCopyWith<$Res> {
  factory $VitexExchangeRateCopyWith(
          VitexExchangeRate value, $Res Function(VitexExchangeRate) then) =
      _$VitexExchangeRateCopyWithImpl<$Res, VitexExchangeRate>;
  @useResult
  $Res call(
      {String tokenId,
      String? tokenSymbol,
      double usdRate,
      double cnyRate,
      Decimal? rubRate,
      Decimal? krwRate,
      Decimal? tryRate,
      Decimal? vndRate,
      Decimal? eurRate,
      Decimal? gbpRate,
      Decimal? inrRate,
      Decimal? uahRate,
      double btcRate});
}

/// @nodoc
class _$VitexExchangeRateCopyWithImpl<$Res, $Val extends VitexExchangeRate>
    implements $VitexExchangeRateCopyWith<$Res> {
  _$VitexExchangeRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? tokenSymbol = freezed,
    Object? usdRate = null,
    Object? cnyRate = null,
    Object? rubRate = freezed,
    Object? krwRate = freezed,
    Object? tryRate = freezed,
    Object? vndRate = freezed,
    Object? eurRate = freezed,
    Object? gbpRate = freezed,
    Object? inrRate = freezed,
    Object? uahRate = freezed,
    Object? btcRate = null,
  }) {
    return _then(_value.copyWith(
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: freezed == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      usdRate: null == usdRate
          ? _value.usdRate
          : usdRate // ignore: cast_nullable_to_non_nullable
              as double,
      cnyRate: null == cnyRate
          ? _value.cnyRate
          : cnyRate // ignore: cast_nullable_to_non_nullable
              as double,
      rubRate: freezed == rubRate
          ? _value.rubRate
          : rubRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      krwRate: freezed == krwRate
          ? _value.krwRate
          : krwRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      tryRate: freezed == tryRate
          ? _value.tryRate
          : tryRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      vndRate: freezed == vndRate
          ? _value.vndRate
          : vndRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      eurRate: freezed == eurRate
          ? _value.eurRate
          : eurRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      gbpRate: freezed == gbpRate
          ? _value.gbpRate
          : gbpRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      inrRate: freezed == inrRate
          ? _value.inrRate
          : inrRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      uahRate: freezed == uahRate
          ? _value.uahRate
          : uahRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      btcRate: null == btcRate
          ? _value.btcRate
          : btcRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VitexExchangeRateCopyWith<$Res>
    implements $VitexExchangeRateCopyWith<$Res> {
  factory _$$_VitexExchangeRateCopyWith(_$_VitexExchangeRate value,
          $Res Function(_$_VitexExchangeRate) then) =
      __$$_VitexExchangeRateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tokenId,
      String? tokenSymbol,
      double usdRate,
      double cnyRate,
      Decimal? rubRate,
      Decimal? krwRate,
      Decimal? tryRate,
      Decimal? vndRate,
      Decimal? eurRate,
      Decimal? gbpRate,
      Decimal? inrRate,
      Decimal? uahRate,
      double btcRate});
}

/// @nodoc
class __$$_VitexExchangeRateCopyWithImpl<$Res>
    extends _$VitexExchangeRateCopyWithImpl<$Res, _$_VitexExchangeRate>
    implements _$$_VitexExchangeRateCopyWith<$Res> {
  __$$_VitexExchangeRateCopyWithImpl(
      _$_VitexExchangeRate _value, $Res Function(_$_VitexExchangeRate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? tokenSymbol = freezed,
    Object? usdRate = null,
    Object? cnyRate = null,
    Object? rubRate = freezed,
    Object? krwRate = freezed,
    Object? tryRate = freezed,
    Object? vndRate = freezed,
    Object? eurRate = freezed,
    Object? gbpRate = freezed,
    Object? inrRate = freezed,
    Object? uahRate = freezed,
    Object? btcRate = null,
  }) {
    return _then(_$_VitexExchangeRate(
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: freezed == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      usdRate: null == usdRate
          ? _value.usdRate
          : usdRate // ignore: cast_nullable_to_non_nullable
              as double,
      cnyRate: null == cnyRate
          ? _value.cnyRate
          : cnyRate // ignore: cast_nullable_to_non_nullable
              as double,
      rubRate: freezed == rubRate
          ? _value.rubRate
          : rubRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      krwRate: freezed == krwRate
          ? _value.krwRate
          : krwRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      tryRate: freezed == tryRate
          ? _value.tryRate
          : tryRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      vndRate: freezed == vndRate
          ? _value.vndRate
          : vndRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      eurRate: freezed == eurRate
          ? _value.eurRate
          : eurRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      gbpRate: freezed == gbpRate
          ? _value.gbpRate
          : gbpRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      inrRate: freezed == inrRate
          ? _value.inrRate
          : inrRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      uahRate: freezed == uahRate
          ? _value.uahRate
          : uahRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      btcRate: null == btcRate
          ? _value.btcRate
          : btcRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VitexExchangeRate extends _VitexExchangeRate {
  const _$_VitexExchangeRate(
      {required this.tokenId,
      this.tokenSymbol,
      required this.usdRate,
      required this.cnyRate,
      this.rubRate,
      this.krwRate,
      this.tryRate,
      this.vndRate,
      this.eurRate,
      this.gbpRate,
      this.inrRate,
      this.uahRate,
      required this.btcRate})
      : super._();

  factory _$_VitexExchangeRate.fromJson(Map<String, dynamic> json) =>
      _$$_VitexExchangeRateFromJson(json);

  @override
  final String tokenId;
  @override
  final String? tokenSymbol;
  @override
  final double usdRate;
  @override
  final double cnyRate;
  @override
  final Decimal? rubRate;
  @override
  final Decimal? krwRate;
  @override
  final Decimal? tryRate;
  @override
  final Decimal? vndRate;
  @override
  final Decimal? eurRate;
  @override
  final Decimal? gbpRate;
  @override
  final Decimal? inrRate;
  @override
  final Decimal? uahRate;
  @override
  final double btcRate;

  @override
  String toString() {
    return 'VitexExchangeRate(tokenId: $tokenId, tokenSymbol: $tokenSymbol, usdRate: $usdRate, cnyRate: $cnyRate, rubRate: $rubRate, krwRate: $krwRate, tryRate: $tryRate, vndRate: $vndRate, eurRate: $eurRate, gbpRate: $gbpRate, inrRate: $inrRate, uahRate: $uahRate, btcRate: $btcRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VitexExchangeRate &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.usdRate, usdRate) || other.usdRate == usdRate) &&
            (identical(other.cnyRate, cnyRate) || other.cnyRate == cnyRate) &&
            (identical(other.rubRate, rubRate) || other.rubRate == rubRate) &&
            (identical(other.krwRate, krwRate) || other.krwRate == krwRate) &&
            (identical(other.tryRate, tryRate) || other.tryRate == tryRate) &&
            (identical(other.vndRate, vndRate) || other.vndRate == vndRate) &&
            (identical(other.eurRate, eurRate) || other.eurRate == eurRate) &&
            (identical(other.gbpRate, gbpRate) || other.gbpRate == gbpRate) &&
            (identical(other.inrRate, inrRate) || other.inrRate == inrRate) &&
            (identical(other.uahRate, uahRate) || other.uahRate == uahRate) &&
            (identical(other.btcRate, btcRate) || other.btcRate == btcRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tokenId,
      tokenSymbol,
      usdRate,
      cnyRate,
      rubRate,
      krwRate,
      tryRate,
      vndRate,
      eurRate,
      gbpRate,
      inrRate,
      uahRate,
      btcRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VitexExchangeRateCopyWith<_$_VitexExchangeRate> get copyWith =>
      __$$_VitexExchangeRateCopyWithImpl<_$_VitexExchangeRate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VitexExchangeRateToJson(
      this,
    );
  }
}

abstract class _VitexExchangeRate extends VitexExchangeRate {
  const factory _VitexExchangeRate(
      {required final String tokenId,
      final String? tokenSymbol,
      required final double usdRate,
      required final double cnyRate,
      final Decimal? rubRate,
      final Decimal? krwRate,
      final Decimal? tryRate,
      final Decimal? vndRate,
      final Decimal? eurRate,
      final Decimal? gbpRate,
      final Decimal? inrRate,
      final Decimal? uahRate,
      required final double btcRate}) = _$_VitexExchangeRate;
  const _VitexExchangeRate._() : super._();

  factory _VitexExchangeRate.fromJson(Map<String, dynamic> json) =
      _$_VitexExchangeRate.fromJson;

  @override
  String get tokenId;
  @override
  String? get tokenSymbol;
  @override
  double get usdRate;
  @override
  double get cnyRate;
  @override
  Decimal? get rubRate;
  @override
  Decimal? get krwRate;
  @override
  Decimal? get tryRate;
  @override
  Decimal? get vndRate;
  @override
  Decimal? get eurRate;
  @override
  Decimal? get gbpRate;
  @override
  Decimal? get inrRate;
  @override
  Decimal? get uahRate;
  @override
  double get btcRate;
  @override
  @JsonKey(ignore: true)
  _$$_VitexExchangeRateCopyWith<_$_VitexExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}
