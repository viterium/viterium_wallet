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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VitcSwapSettings _$VitcSwapSettingsFromJson(Map<String, dynamic> json) {
  return _VitcSwapSettings.fromJson(json);
}

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
      _$VitcSwapSettingsCopyWithImpl<$Res, VitcSwapSettings>;
  @useResult
  $Res call(
      {IList<String> tradingTokens,
      TokenInfo fromToken,
      TokenInfo toToken,
      double slippage});

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
    Object? tradingTokens = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? slippage = null,
  }) {
    return _then(_value.copyWith(
      tradingTokens: null == tradingTokens
          ? _value.tradingTokens
          : tradingTokens // ignore: cast_nullable_to_non_nullable
              as IList<String>,
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
abstract class _$$_VitcSwapSettingsCopyWith<$Res>
    implements $VitcSwapSettingsCopyWith<$Res> {
  factory _$$_VitcSwapSettingsCopyWith(
          _$_VitcSwapSettings value, $Res Function(_$_VitcSwapSettings) then) =
      __$$_VitcSwapSettingsCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_VitcSwapSettingsCopyWithImpl<$Res>
    extends _$VitcSwapSettingsCopyWithImpl<$Res, _$_VitcSwapSettings>
    implements _$$_VitcSwapSettingsCopyWith<$Res> {
  __$$_VitcSwapSettingsCopyWithImpl(
      _$_VitcSwapSettings _value, $Res Function(_$_VitcSwapSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradingTokens = null,
    Object? fromToken = null,
    Object? toToken = null,
    Object? slippage = null,
  }) {
    return _then(_$_VitcSwapSettings(
      tradingTokens: null == tradingTokens
          ? _value.tradingTokens
          : tradingTokens // ignore: cast_nullable_to_non_nullable
              as IList<String>,
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
class _$_VitcSwapSettings implements _VitcSwapSettings {
  const _$_VitcSwapSettings(
      {this.tradingTokens = const IListConst([]),
      required this.fromToken,
      required this.toToken,
      this.slippage = 0.005});

  factory _$_VitcSwapSettings.fromJson(Map<String, dynamic> json) =>
      _$$_VitcSwapSettingsFromJson(json);

  @override
  @JsonKey()
  final IList<String> tradingTokens;
  @override
  final TokenInfo fromToken;
  @override
  final TokenInfo toToken;
  @override
  @JsonKey()
  final double slippage;

  @override
  String toString() {
    return 'VitcSwapSettings(tradingTokens: $tradingTokens, fromToken: $fromToken, toToken: $toToken, slippage: $slippage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VitcSwapSettings &&
            const DeepCollectionEquality()
                .equals(other.tradingTokens, tradingTokens) &&
            (identical(other.fromToken, fromToken) ||
                other.fromToken == fromToken) &&
            (identical(other.toToken, toToken) || other.toToken == toToken) &&
            (identical(other.slippage, slippage) ||
                other.slippage == slippage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tradingTokens),
      fromToken,
      toToken,
      slippage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VitcSwapSettingsCopyWith<_$_VitcSwapSettings> get copyWith =>
      __$$_VitcSwapSettingsCopyWithImpl<_$_VitcSwapSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VitcSwapSettingsToJson(
      this,
    );
  }
}

abstract class _VitcSwapSettings implements VitcSwapSettings {
  const factory _VitcSwapSettings(
      {final IList<String> tradingTokens,
      required final TokenInfo fromToken,
      required final TokenInfo toToken,
      final double slippage}) = _$_VitcSwapSettings;

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
  _$$_VitcSwapSettingsCopyWith<_$_VitcSwapSettings> get copyWith =>
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
abstract class _$$_VitcSwapStateCopyWith<$Res>
    implements $VitcSwapStateCopyWith<$Res> {
  factory _$$_VitcSwapStateCopyWith(
          _$_VitcSwapState value, $Res Function(_$_VitcSwapState) then) =
      __$$_VitcSwapStateCopyWithImpl<$Res>;
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
class __$$_VitcSwapStateCopyWithImpl<$Res>
    extends _$VitcSwapStateCopyWithImpl<$Res, _$_VitcSwapState>
    implements _$$_VitcSwapStateCopyWith<$Res> {
  __$$_VitcSwapStateCopyWithImpl(
      _$_VitcSwapState _value, $Res Function(_$_VitcSwapState) _then)
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
    return _then(_$_VitcSwapState(
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
            other is _$_VitcSwapState &&
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
  _$$_VitcSwapStateCopyWith<_$_VitcSwapState> get copyWith =>
      __$$_VitcSwapStateCopyWithImpl<_$_VitcSwapState>(this, _$identity);
}

abstract class _VitcSwapState extends VitcSwapState {
  const factory _VitcSwapState(
      {required final Amount fromAmount,
      required final Amount toAmount,
      required final double slippage,
      required final int requestId,
      required final int callId}) = _$_VitcSwapState;
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
  _$$_VitcSwapStateCopyWith<_$_VitcSwapState> get copyWith =>
      throw _privateConstructorUsedError;
}
