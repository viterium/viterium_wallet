// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coingecko_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinGeckoRate _$CoinGeckoRateFromJson(Map<String, dynamic> json) {
  return _CoinGeckoRate.fromJson(json);
}

/// @nodoc
mixin _$CoinGeckoRate {
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinGeckoRateCopyWith<CoinGeckoRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinGeckoRateCopyWith<$Res> {
  factory $CoinGeckoRateCopyWith(
          CoinGeckoRate value, $Res Function(CoinGeckoRate) then) =
      _$CoinGeckoRateCopyWithImpl<$Res, CoinGeckoRate>;
  @useResult
  $Res call({String name, String unit, double value, String type});
}

/// @nodoc
class _$CoinGeckoRateCopyWithImpl<$Res, $Val extends CoinGeckoRate>
    implements $CoinGeckoRateCopyWith<$Res> {
  _$CoinGeckoRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? unit = null,
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinGeckoRateImplCopyWith<$Res>
    implements $CoinGeckoRateCopyWith<$Res> {
  factory _$$CoinGeckoRateImplCopyWith(
          _$CoinGeckoRateImpl value, $Res Function(_$CoinGeckoRateImpl) then) =
      __$$CoinGeckoRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String unit, double value, String type});
}

/// @nodoc
class __$$CoinGeckoRateImplCopyWithImpl<$Res>
    extends _$CoinGeckoRateCopyWithImpl<$Res, _$CoinGeckoRateImpl>
    implements _$$CoinGeckoRateImplCopyWith<$Res> {
  __$$CoinGeckoRateImplCopyWithImpl(
      _$CoinGeckoRateImpl _value, $Res Function(_$CoinGeckoRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? unit = null,
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_$CoinGeckoRateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinGeckoRateImpl implements _CoinGeckoRate {
  const _$CoinGeckoRateImpl(
      {required this.name,
      required this.unit,
      required this.value,
      required this.type});

  factory _$CoinGeckoRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinGeckoRateImplFromJson(json);

  @override
  final String name;
  @override
  final String unit;
  @override
  final double value;
  @override
  final String type;

  @override
  String toString() {
    return 'CoinGeckoRate(name: $name, unit: $unit, value: $value, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinGeckoRateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, unit, value, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinGeckoRateImplCopyWith<_$CoinGeckoRateImpl> get copyWith =>
      __$$CoinGeckoRateImplCopyWithImpl<_$CoinGeckoRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinGeckoRateImplToJson(
      this,
    );
  }
}

abstract class _CoinGeckoRate implements CoinGeckoRate {
  const factory _CoinGeckoRate(
      {required final String name,
      required final String unit,
      required final double value,
      required final String type}) = _$CoinGeckoRateImpl;

  factory _CoinGeckoRate.fromJson(Map<String, dynamic> json) =
      _$CoinGeckoRateImpl.fromJson;

  @override
  String get name;
  @override
  String get unit;
  @override
  double get value;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CoinGeckoRateImplCopyWith<_$CoinGeckoRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinGeckoRates _$CoinGeckoRatesFromJson(Map<String, dynamic> json) {
  return _CoinGeckoRates.fromJson(json);
}

/// @nodoc
mixin _$CoinGeckoRates {
  Map<String, CoinGeckoRate> get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinGeckoRatesCopyWith<CoinGeckoRates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinGeckoRatesCopyWith<$Res> {
  factory $CoinGeckoRatesCopyWith(
          CoinGeckoRates value, $Res Function(CoinGeckoRates) then) =
      _$CoinGeckoRatesCopyWithImpl<$Res, CoinGeckoRates>;
  @useResult
  $Res call({Map<String, CoinGeckoRate> rates});
}

/// @nodoc
class _$CoinGeckoRatesCopyWithImpl<$Res, $Val extends CoinGeckoRates>
    implements $CoinGeckoRatesCopyWith<$Res> {
  _$CoinGeckoRatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, CoinGeckoRate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinGeckoRatesImplCopyWith<$Res>
    implements $CoinGeckoRatesCopyWith<$Res> {
  factory _$$CoinGeckoRatesImplCopyWith(_$CoinGeckoRatesImpl value,
          $Res Function(_$CoinGeckoRatesImpl) then) =
      __$$CoinGeckoRatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CoinGeckoRate> rates});
}

/// @nodoc
class __$$CoinGeckoRatesImplCopyWithImpl<$Res>
    extends _$CoinGeckoRatesCopyWithImpl<$Res, _$CoinGeckoRatesImpl>
    implements _$$CoinGeckoRatesImplCopyWith<$Res> {
  __$$CoinGeckoRatesImplCopyWithImpl(
      _$CoinGeckoRatesImpl _value, $Res Function(_$CoinGeckoRatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rates = null,
  }) {
    return _then(_$CoinGeckoRatesImpl(
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, CoinGeckoRate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinGeckoRatesImpl extends _CoinGeckoRates {
  const _$CoinGeckoRatesImpl(
      {final Map<String, CoinGeckoRate> rates = const {}})
      : _rates = rates,
        super._();

  factory _$CoinGeckoRatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinGeckoRatesImplFromJson(json);

  final Map<String, CoinGeckoRate> _rates;
  @override
  @JsonKey()
  Map<String, CoinGeckoRate> get rates {
    if (_rates is EqualUnmodifiableMapView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rates);
  }

  @override
  String toString() {
    return 'CoinGeckoRates(rates: $rates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinGeckoRatesImpl &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinGeckoRatesImplCopyWith<_$CoinGeckoRatesImpl> get copyWith =>
      __$$CoinGeckoRatesImplCopyWithImpl<_$CoinGeckoRatesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinGeckoRatesImplToJson(
      this,
    );
  }
}

abstract class _CoinGeckoRates extends CoinGeckoRates {
  const factory _CoinGeckoRates({final Map<String, CoinGeckoRate> rates}) =
      _$CoinGeckoRatesImpl;
  const _CoinGeckoRates._() : super._();

  factory _CoinGeckoRates.fromJson(Map<String, dynamic> json) =
      _$CoinGeckoRatesImpl.fromJson;

  @override
  Map<String, CoinGeckoRate> get rates;
  @override
  @JsonKey(ignore: true)
  _$$CoinGeckoRatesImplCopyWith<_$CoinGeckoRatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
