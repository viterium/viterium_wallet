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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VitexExchangeRate _$VitexExchangeRateFromJson(Map<String, dynamic> json) {
  return _VitexExchangeRate.fromJson(json);
}

/// @nodoc
class _$VitexExchangeRateTearOff {
  const _$VitexExchangeRateTearOff();

  _VitexExchangeRate call(
      {required String tokenId,
      String? tokenSymbol,
      required double usdRate,
      required double cnyRate,
      Decimal? rubRate,
      Decimal? krwRate,
      Decimal? tryRate,
      Decimal? vndRate,
      Decimal? eurRate,
      Decimal? gbpRate,
      Decimal? inrRate,
      Decimal? uahRate,
      required double btcRate}) {
    return _VitexExchangeRate(
      tokenId: tokenId,
      tokenSymbol: tokenSymbol,
      usdRate: usdRate,
      cnyRate: cnyRate,
      rubRate: rubRate,
      krwRate: krwRate,
      tryRate: tryRate,
      vndRate: vndRate,
      eurRate: eurRate,
      gbpRate: gbpRate,
      inrRate: inrRate,
      uahRate: uahRate,
      btcRate: btcRate,
    );
  }

  VitexExchangeRate fromJson(Map<String, Object?> json) {
    return VitexExchangeRate.fromJson(json);
  }
}

/// @nodoc
const $VitexExchangeRate = _$VitexExchangeRateTearOff();

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
      _$VitexExchangeRateCopyWithImpl<$Res>;
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
class _$VitexExchangeRateCopyWithImpl<$Res>
    implements $VitexExchangeRateCopyWith<$Res> {
  _$VitexExchangeRateCopyWithImpl(this._value, this._then);

  final VitexExchangeRate _value;
  // ignore: unused_field
  final $Res Function(VitexExchangeRate) _then;

  @override
  $Res call({
    Object? tokenId = freezed,
    Object? tokenSymbol = freezed,
    Object? usdRate = freezed,
    Object? cnyRate = freezed,
    Object? rubRate = freezed,
    Object? krwRate = freezed,
    Object? tryRate = freezed,
    Object? vndRate = freezed,
    Object? eurRate = freezed,
    Object? gbpRate = freezed,
    Object? inrRate = freezed,
    Object? uahRate = freezed,
    Object? btcRate = freezed,
  }) {
    return _then(_value.copyWith(
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: tokenSymbol == freezed
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      usdRate: usdRate == freezed
          ? _value.usdRate
          : usdRate // ignore: cast_nullable_to_non_nullable
              as double,
      cnyRate: cnyRate == freezed
          ? _value.cnyRate
          : cnyRate // ignore: cast_nullable_to_non_nullable
              as double,
      rubRate: rubRate == freezed
          ? _value.rubRate
          : rubRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      krwRate: krwRate == freezed
          ? _value.krwRate
          : krwRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      tryRate: tryRate == freezed
          ? _value.tryRate
          : tryRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      vndRate: vndRate == freezed
          ? _value.vndRate
          : vndRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      eurRate: eurRate == freezed
          ? _value.eurRate
          : eurRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      gbpRate: gbpRate == freezed
          ? _value.gbpRate
          : gbpRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      inrRate: inrRate == freezed
          ? _value.inrRate
          : inrRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      uahRate: uahRate == freezed
          ? _value.uahRate
          : uahRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      btcRate: btcRate == freezed
          ? _value.btcRate
          : btcRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$VitexExchangeRateCopyWith<$Res>
    implements $VitexExchangeRateCopyWith<$Res> {
  factory _$VitexExchangeRateCopyWith(
          _VitexExchangeRate value, $Res Function(_VitexExchangeRate) then) =
      __$VitexExchangeRateCopyWithImpl<$Res>;
  @override
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
class __$VitexExchangeRateCopyWithImpl<$Res>
    extends _$VitexExchangeRateCopyWithImpl<$Res>
    implements _$VitexExchangeRateCopyWith<$Res> {
  __$VitexExchangeRateCopyWithImpl(
      _VitexExchangeRate _value, $Res Function(_VitexExchangeRate) _then)
      : super(_value, (v) => _then(v as _VitexExchangeRate));

  @override
  _VitexExchangeRate get _value => super._value as _VitexExchangeRate;

  @override
  $Res call({
    Object? tokenId = freezed,
    Object? tokenSymbol = freezed,
    Object? usdRate = freezed,
    Object? cnyRate = freezed,
    Object? rubRate = freezed,
    Object? krwRate = freezed,
    Object? tryRate = freezed,
    Object? vndRate = freezed,
    Object? eurRate = freezed,
    Object? gbpRate = freezed,
    Object? inrRate = freezed,
    Object? uahRate = freezed,
    Object? btcRate = freezed,
  }) {
    return _then(_VitexExchangeRate(
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: tokenSymbol == freezed
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      usdRate: usdRate == freezed
          ? _value.usdRate
          : usdRate // ignore: cast_nullable_to_non_nullable
              as double,
      cnyRate: cnyRate == freezed
          ? _value.cnyRate
          : cnyRate // ignore: cast_nullable_to_non_nullable
              as double,
      rubRate: rubRate == freezed
          ? _value.rubRate
          : rubRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      krwRate: krwRate == freezed
          ? _value.krwRate
          : krwRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      tryRate: tryRate == freezed
          ? _value.tryRate
          : tryRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      vndRate: vndRate == freezed
          ? _value.vndRate
          : vndRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      eurRate: eurRate == freezed
          ? _value.eurRate
          : eurRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      gbpRate: gbpRate == freezed
          ? _value.gbpRate
          : gbpRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      inrRate: inrRate == freezed
          ? _value.inrRate
          : inrRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      uahRate: uahRate == freezed
          ? _value.uahRate
          : uahRate // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      btcRate: btcRate == freezed
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
            other is _VitexExchangeRate &&
            const DeepCollectionEquality().equals(other.tokenId, tokenId) &&
            const DeepCollectionEquality()
                .equals(other.tokenSymbol, tokenSymbol) &&
            const DeepCollectionEquality().equals(other.usdRate, usdRate) &&
            const DeepCollectionEquality().equals(other.cnyRate, cnyRate) &&
            const DeepCollectionEquality().equals(other.rubRate, rubRate) &&
            const DeepCollectionEquality().equals(other.krwRate, krwRate) &&
            const DeepCollectionEquality().equals(other.tryRate, tryRate) &&
            const DeepCollectionEquality().equals(other.vndRate, vndRate) &&
            const DeepCollectionEquality().equals(other.eurRate, eurRate) &&
            const DeepCollectionEquality().equals(other.gbpRate, gbpRate) &&
            const DeepCollectionEquality().equals(other.inrRate, inrRate) &&
            const DeepCollectionEquality().equals(other.uahRate, uahRate) &&
            const DeepCollectionEquality().equals(other.btcRate, btcRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenId),
      const DeepCollectionEquality().hash(tokenSymbol),
      const DeepCollectionEquality().hash(usdRate),
      const DeepCollectionEquality().hash(cnyRate),
      const DeepCollectionEquality().hash(rubRate),
      const DeepCollectionEquality().hash(krwRate),
      const DeepCollectionEquality().hash(tryRate),
      const DeepCollectionEquality().hash(vndRate),
      const DeepCollectionEquality().hash(eurRate),
      const DeepCollectionEquality().hash(gbpRate),
      const DeepCollectionEquality().hash(inrRate),
      const DeepCollectionEquality().hash(uahRate),
      const DeepCollectionEquality().hash(btcRate));

  @JsonKey(ignore: true)
  @override
  _$VitexExchangeRateCopyWith<_VitexExchangeRate> get copyWith =>
      __$VitexExchangeRateCopyWithImpl<_VitexExchangeRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VitexExchangeRateToJson(this);
  }
}

abstract class _VitexExchangeRate extends VitexExchangeRate {
  const factory _VitexExchangeRate(
      {required String tokenId,
      String? tokenSymbol,
      required double usdRate,
      required double cnyRate,
      Decimal? rubRate,
      Decimal? krwRate,
      Decimal? tryRate,
      Decimal? vndRate,
      Decimal? eurRate,
      Decimal? gbpRate,
      Decimal? inrRate,
      Decimal? uahRate,
      required double btcRate}) = _$_VitexExchangeRate;
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
  _$VitexExchangeRateCopyWith<_VitexExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}
