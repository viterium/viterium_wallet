// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vitc_swap_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VitcSwapSettings _$VitcSwapSettingsFromJson(Map<String, dynamic> json) {
  return _VitcSwapSettings.fromJson(json);
}

/// @nodoc
class _$VitcSwapSettingsTearOff {
  const _$VitcSwapSettingsTearOff();

  _VitcSwapSettings call(
      {IList<String> tradingTokens = const IListConst([]),
      required TokenInfo fromToken,
      required TokenInfo toToken,
      double slippage = 0.005}) {
    return _VitcSwapSettings(
      tradingTokens: tradingTokens,
      fromToken: fromToken,
      toToken: toToken,
      slippage: slippage,
    );
  }

  VitcSwapSettings fromJson(Map<String, Object?> json) {
    return VitcSwapSettings.fromJson(json);
  }
}

/// @nodoc
const $VitcSwapSettings = _$VitcSwapSettingsTearOff();

/// @nodoc
mixin _$VitcSwapSettings {
  IList<String> get tradingTokens => throw _privateConstructorUsedError;
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
      _$VitcSwapSettingsCopyWithImpl<$Res>;
  $Res call(
      {IList<String> tradingTokens,
      TokenInfo fromToken,
      TokenInfo toToken,
      double slippage});

  $TokenInfoCopyWith<$Res> get fromToken;
  $TokenInfoCopyWith<$Res> get toToken;
}

/// @nodoc
class _$VitcSwapSettingsCopyWithImpl<$Res>
    implements $VitcSwapSettingsCopyWith<$Res> {
  _$VitcSwapSettingsCopyWithImpl(this._value, this._then);

  final VitcSwapSettings _value;
  // ignore: unused_field
  final $Res Function(VitcSwapSettings) _then;

  @override
  $Res call({
    Object? tradingTokens = freezed,
    Object? fromToken = freezed,
    Object? toToken = freezed,
    Object? slippage = freezed,
  }) {
    return _then(_value.copyWith(
      tradingTokens: tradingTokens == freezed
          ? _value.tradingTokens
          : tradingTokens // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      fromToken: fromToken == freezed
          ? _value.fromToken
          : fromToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      toToken: toToken == freezed
          ? _value.toToken
          : toToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      slippage: slippage == freezed
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $TokenInfoCopyWith<$Res> get fromToken {
    return $TokenInfoCopyWith<$Res>(_value.fromToken, (value) {
      return _then(_value.copyWith(fromToken: value));
    });
  }

  @override
  $TokenInfoCopyWith<$Res> get toToken {
    return $TokenInfoCopyWith<$Res>(_value.toToken, (value) {
      return _then(_value.copyWith(toToken: value));
    });
  }
}

/// @nodoc
abstract class _$VitcSwapSettingsCopyWith<$Res>
    implements $VitcSwapSettingsCopyWith<$Res> {
  factory _$VitcSwapSettingsCopyWith(
          _VitcSwapSettings value, $Res Function(_VitcSwapSettings) then) =
      __$VitcSwapSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {IList<String> tradingTokens,
      TokenInfo fromToken,
      TokenInfo toToken,
      double slippage});

  @override
  $TokenInfoCopyWith<$Res> get fromToken;
  @override
  $TokenInfoCopyWith<$Res> get toToken;
}

/// @nodoc
class __$VitcSwapSettingsCopyWithImpl<$Res>
    extends _$VitcSwapSettingsCopyWithImpl<$Res>
    implements _$VitcSwapSettingsCopyWith<$Res> {
  __$VitcSwapSettingsCopyWithImpl(
      _VitcSwapSettings _value, $Res Function(_VitcSwapSettings) _then)
      : super(_value, (v) => _then(v as _VitcSwapSettings));

  @override
  _VitcSwapSettings get _value => super._value as _VitcSwapSettings;

  @override
  $Res call({
    Object? tradingTokens = freezed,
    Object? fromToken = freezed,
    Object? toToken = freezed,
    Object? slippage = freezed,
  }) {
    return _then(_VitcSwapSettings(
      tradingTokens: tradingTokens == freezed
          ? _value.tradingTokens
          : tradingTokens // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      fromToken: fromToken == freezed
          ? _value.fromToken
          : fromToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      toToken: toToken == freezed
          ? _value.toToken
          : toToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      slippage: slippage == freezed
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VitcSwapSettings implements _VitcSwapSettings {
  const _$_VitcSwapSettings(
      {this.tradingTokens = const IListConst([]),
      required this.fromToken,
      required this.toToken,
      this.slippage = 0.005});

  factory _$_VitcSwapSettings.fromJson(Map<String, dynamic> json) =>
      _$$_VitcSwapSettingsFromJson(json);

  @JsonKey()
  @override
  final IList<String> tradingTokens;
  @override
  final TokenInfo fromToken;
  @override
  final TokenInfo toToken;
  @JsonKey()
  @override
  final double slippage;

  @override
  String toString() {
    return 'VitcSwapSettings(tradingTokens: $tradingTokens, fromToken: $fromToken, toToken: $toToken, slippage: $slippage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcSwapSettings &&
            const DeepCollectionEquality()
                .equals(other.tradingTokens, tradingTokens) &&
            const DeepCollectionEquality().equals(other.fromToken, fromToken) &&
            const DeepCollectionEquality().equals(other.toToken, toToken) &&
            const DeepCollectionEquality().equals(other.slippage, slippage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tradingTokens),
      const DeepCollectionEquality().hash(fromToken),
      const DeepCollectionEquality().hash(toToken),
      const DeepCollectionEquality().hash(slippage));

  @JsonKey(ignore: true)
  @override
  _$VitcSwapSettingsCopyWith<_VitcSwapSettings> get copyWith =>
      __$VitcSwapSettingsCopyWithImpl<_VitcSwapSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VitcSwapSettingsToJson(this);
  }
}

abstract class _VitcSwapSettings implements VitcSwapSettings {
  const factory _VitcSwapSettings(
      {IList<String> tradingTokens,
      required TokenInfo fromToken,
      required TokenInfo toToken,
      double slippage}) = _$_VitcSwapSettings;

  factory _VitcSwapSettings.fromJson(Map<String, dynamic> json) =
      _$_VitcSwapSettings.fromJson;

  @override
  IList<String> get tradingTokens;
  @override
  TokenInfo get fromToken;
  @override
  TokenInfo get toToken;
  @override
  double get slippage;
  @override
  @JsonKey(ignore: true)
  _$VitcSwapSettingsCopyWith<_VitcSwapSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VitcSwapStateTearOff {
  const _$VitcSwapStateTearOff();

  _VitcSwapState call(
      {required Amount fromAmount,
      required Amount toAmount,
      required double slippage,
      required int requestId,
      required int callId}) {
    return _VitcSwapState(
      fromAmount: fromAmount,
      toAmount: toAmount,
      slippage: slippage,
      requestId: requestId,
      callId: callId,
    );
  }
}

/// @nodoc
const $VitcSwapState = _$VitcSwapStateTearOff();

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
      _$VitcSwapStateCopyWithImpl<$Res>;
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
class _$VitcSwapStateCopyWithImpl<$Res>
    implements $VitcSwapStateCopyWith<$Res> {
  _$VitcSwapStateCopyWithImpl(this._value, this._then);

  final VitcSwapState _value;
  // ignore: unused_field
  final $Res Function(VitcSwapState) _then;

  @override
  $Res call({
    Object? fromAmount = freezed,
    Object? toAmount = freezed,
    Object? slippage = freezed,
    Object? requestId = freezed,
    Object? callId = freezed,
  }) {
    return _then(_value.copyWith(
      fromAmount: fromAmount == freezed
          ? _value.fromAmount
          : fromAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      toAmount: toAmount == freezed
          ? _value.toAmount
          : toAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      slippage: slippage == freezed
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      callId: callId == freezed
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $AmountCopyWith<$Res> get fromAmount {
    return $AmountCopyWith<$Res>(_value.fromAmount, (value) {
      return _then(_value.copyWith(fromAmount: value));
    });
  }

  @override
  $AmountCopyWith<$Res> get toAmount {
    return $AmountCopyWith<$Res>(_value.toAmount, (value) {
      return _then(_value.copyWith(toAmount: value));
    });
  }
}

/// @nodoc
abstract class _$VitcSwapStateCopyWith<$Res>
    implements $VitcSwapStateCopyWith<$Res> {
  factory _$VitcSwapStateCopyWith(
          _VitcSwapState value, $Res Function(_VitcSwapState) then) =
      __$VitcSwapStateCopyWithImpl<$Res>;
  @override
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
class __$VitcSwapStateCopyWithImpl<$Res>
    extends _$VitcSwapStateCopyWithImpl<$Res>
    implements _$VitcSwapStateCopyWith<$Res> {
  __$VitcSwapStateCopyWithImpl(
      _VitcSwapState _value, $Res Function(_VitcSwapState) _then)
      : super(_value, (v) => _then(v as _VitcSwapState));

  @override
  _VitcSwapState get _value => super._value as _VitcSwapState;

  @override
  $Res call({
    Object? fromAmount = freezed,
    Object? toAmount = freezed,
    Object? slippage = freezed,
    Object? requestId = freezed,
    Object? callId = freezed,
  }) {
    return _then(_VitcSwapState(
      fromAmount: fromAmount == freezed
          ? _value.fromAmount
          : fromAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      toAmount: toAmount == freezed
          ? _value.toAmount
          : toAmount // ignore: cast_nullable_to_non_nullable
              as Amount,
      slippage: slippage == freezed
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as double,
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      callId: callId == freezed
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_VitcSwapState extends _VitcSwapState {
  const _$_VitcSwapState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcSwapState &&
            const DeepCollectionEquality()
                .equals(other.fromAmount, fromAmount) &&
            const DeepCollectionEquality().equals(other.toAmount, toAmount) &&
            const DeepCollectionEquality().equals(other.slippage, slippage) &&
            const DeepCollectionEquality().equals(other.requestId, requestId) &&
            const DeepCollectionEquality().equals(other.callId, callId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fromAmount),
      const DeepCollectionEquality().hash(toAmount),
      const DeepCollectionEquality().hash(slippage),
      const DeepCollectionEquality().hash(requestId),
      const DeepCollectionEquality().hash(callId));

  @JsonKey(ignore: true)
  @override
  _$VitcSwapStateCopyWith<_VitcSwapState> get copyWith =>
      __$VitcSwapStateCopyWithImpl<_VitcSwapState>(this, _$identity);
}

abstract class _VitcSwapState extends VitcSwapState {
  const factory _VitcSwapState(
      {required Amount fromAmount,
      required Amount toAmount,
      required double slippage,
      required int requestId,
      required int callId}) = _$_VitcSwapState;
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
  _$VitcSwapStateCopyWith<_VitcSwapState> get copyWith =>
      throw _privateConstructorUsedError;
}
