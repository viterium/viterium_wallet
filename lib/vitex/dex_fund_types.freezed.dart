// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dex_fund_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DexFundEvent {
// 1 deposit, 2 agentDeposit, 3 withdraw, 4 assignedWithdraw, 5 transfer
  BigInt get bizType => throw _privateConstructorUsedError;
  Address get from => throw _privateConstructorUsedError;
  Address get to => throw _privateConstructorUsedError;
  Token get token => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt bizType, Address from, Address to,
            Token token, BigInt amount)
        transferAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt bizType, Address from, Address to, Token token,
            BigInt amount)?
        transferAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt bizType, Address from, Address to, Token token,
            BigInt amount)?
        transferAsset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DexFundEventTransferAsset value) transferAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DexFundEventTransferAsset value)? transferAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DexFundEventTransferAsset value)? transferAsset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DexFundEventCopyWith<DexFundEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DexFundEventCopyWith<$Res> {
  factory $DexFundEventCopyWith(
          DexFundEvent value, $Res Function(DexFundEvent) then) =
      _$DexFundEventCopyWithImpl<$Res, DexFundEvent>;
  @useResult
  $Res call(
      {BigInt bizType, Address from, Address to, Token token, BigInt amount});

  $AddressCopyWith<$Res> get from;
  $AddressCopyWith<$Res> get to;
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$DexFundEventCopyWithImpl<$Res, $Val extends DexFundEvent>
    implements $DexFundEventCopyWith<$Res> {
  _$DexFundEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizType = null,
    Object? from = null,
    Object? to = null,
    Object? token = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      bizType: null == bizType
          ? _value.bizType
          : bizType // ignore: cast_nullable_to_non_nullable
              as BigInt,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Address,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Address,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get from {
    return $AddressCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get to {
    return $AddressCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DexFundEventTransferAssetImplCopyWith<$Res>
    implements $DexFundEventCopyWith<$Res> {
  factory _$$DexFundEventTransferAssetImplCopyWith(
          _$DexFundEventTransferAssetImpl value,
          $Res Function(_$DexFundEventTransferAssetImpl) then) =
      __$$DexFundEventTransferAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt bizType, Address from, Address to, Token token, BigInt amount});

  @override
  $AddressCopyWith<$Res> get from;
  @override
  $AddressCopyWith<$Res> get to;
  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$DexFundEventTransferAssetImplCopyWithImpl<$Res>
    extends _$DexFundEventCopyWithImpl<$Res, _$DexFundEventTransferAssetImpl>
    implements _$$DexFundEventTransferAssetImplCopyWith<$Res> {
  __$$DexFundEventTransferAssetImplCopyWithImpl(
      _$DexFundEventTransferAssetImpl _value,
      $Res Function(_$DexFundEventTransferAssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizType = null,
    Object? from = null,
    Object? to = null,
    Object? token = null,
    Object? amount = null,
  }) {
    return _then(_$DexFundEventTransferAssetImpl(
      bizType: null == bizType
          ? _value.bizType
          : bizType // ignore: cast_nullable_to_non_nullable
              as BigInt,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Address,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Address,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$DexFundEventTransferAssetImpl implements _DexFundEventTransferAsset {
  const _$DexFundEventTransferAssetImpl(
      {required this.bizType,
      required this.from,
      required this.to,
      required this.token,
      required this.amount});

// 1 deposit, 2 agentDeposit, 3 withdraw, 4 assignedWithdraw, 5 transfer
  @override
  final BigInt bizType;
  @override
  final Address from;
  @override
  final Address to;
  @override
  final Token token;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'DexFundEvent.transferAsset(bizType: $bizType, from: $from, to: $to, token: $token, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DexFundEventTransferAssetImpl &&
            (identical(other.bizType, bizType) || other.bizType == bizType) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bizType, from, to, token, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DexFundEventTransferAssetImplCopyWith<_$DexFundEventTransferAssetImpl>
      get copyWith => __$$DexFundEventTransferAssetImplCopyWithImpl<
          _$DexFundEventTransferAssetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt bizType, Address from, Address to,
            Token token, BigInt amount)
        transferAsset,
  }) {
    return transferAsset(bizType, from, to, token, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt bizType, Address from, Address to, Token token,
            BigInt amount)?
        transferAsset,
  }) {
    return transferAsset?.call(bizType, from, to, token, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt bizType, Address from, Address to, Token token,
            BigInt amount)?
        transferAsset,
    required TResult orElse(),
  }) {
    if (transferAsset != null) {
      return transferAsset(bizType, from, to, token, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DexFundEventTransferAsset value) transferAsset,
  }) {
    return transferAsset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DexFundEventTransferAsset value)? transferAsset,
  }) {
    return transferAsset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DexFundEventTransferAsset value)? transferAsset,
    required TResult orElse(),
  }) {
    if (transferAsset != null) {
      return transferAsset(this);
    }
    return orElse();
  }
}

abstract class _DexFundEventTransferAsset implements DexFundEvent {
  const factory _DexFundEventTransferAsset(
      {required final BigInt bizType,
      required final Address from,
      required final Address to,
      required final Token token,
      required final BigInt amount}) = _$DexFundEventTransferAssetImpl;

  @override // 1 deposit, 2 agentDeposit, 3 withdraw, 4 assignedWithdraw, 5 transfer
  BigInt get bizType;
  @override
  Address get from;
  @override
  Address get to;
  @override
  Token get token;
  @override
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$DexFundEventTransferAssetImplCopyWith<_$DexFundEventTransferAssetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AccountFundInfo _$AccountFundInfoFromJson(Map<String, dynamic> json) {
  return _AccountFundInfo.fromJson(json);
}

/// @nodoc
mixin _$AccountFundInfo {
  TokenInfo get tokenInfo => throw _privateConstructorUsedError;
  BigInt get available => throw _privateConstructorUsedError;
  BigInt get locked => throw _privateConstructorUsedError;
  BigInt? get vxLocked => throw _privateConstructorUsedError;
  BigInt? get vxUnlocking => throw _privateConstructorUsedError;
  BigInt? get cancellingStake => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountFundInfoCopyWith<AccountFundInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFundInfoCopyWith<$Res> {
  factory $AccountFundInfoCopyWith(
          AccountFundInfo value, $Res Function(AccountFundInfo) then) =
      _$AccountFundInfoCopyWithImpl<$Res, AccountFundInfo>;
  @useResult
  $Res call(
      {TokenInfo tokenInfo,
      BigInt available,
      BigInt locked,
      BigInt? vxLocked,
      BigInt? vxUnlocking,
      BigInt? cancellingStake});

  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class _$AccountFundInfoCopyWithImpl<$Res, $Val extends AccountFundInfo>
    implements $AccountFundInfoCopyWith<$Res> {
  _$AccountFundInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenInfo = null,
    Object? available = null,
    Object? locked = null,
    Object? vxLocked = freezed,
    Object? vxUnlocking = freezed,
    Object? cancellingStake = freezed,
  }) {
    return _then(_value.copyWith(
      tokenInfo: null == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as BigInt,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as BigInt,
      vxLocked: freezed == vxLocked
          ? _value.vxLocked
          : vxLocked // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      vxUnlocking: freezed == vxUnlocking
          ? _value.vxUnlocking
          : vxUnlocking // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      cancellingStake: freezed == cancellingStake
          ? _value.cancellingStake
          : cancellingStake // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get tokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.tokenInfo, (value) {
      return _then(_value.copyWith(tokenInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountFundInfoImplCopyWith<$Res>
    implements $AccountFundInfoCopyWith<$Res> {
  factory _$$AccountFundInfoImplCopyWith(_$AccountFundInfoImpl value,
          $Res Function(_$AccountFundInfoImpl) then) =
      __$$AccountFundInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TokenInfo tokenInfo,
      BigInt available,
      BigInt locked,
      BigInt? vxLocked,
      BigInt? vxUnlocking,
      BigInt? cancellingStake});

  @override
  $TokenInfoCopyWith<$Res> get tokenInfo;
}

/// @nodoc
class __$$AccountFundInfoImplCopyWithImpl<$Res>
    extends _$AccountFundInfoCopyWithImpl<$Res, _$AccountFundInfoImpl>
    implements _$$AccountFundInfoImplCopyWith<$Res> {
  __$$AccountFundInfoImplCopyWithImpl(
      _$AccountFundInfoImpl _value, $Res Function(_$AccountFundInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenInfo = null,
    Object? available = null,
    Object? locked = null,
    Object? vxLocked = freezed,
    Object? vxUnlocking = freezed,
    Object? cancellingStake = freezed,
  }) {
    return _then(_$AccountFundInfoImpl(
      tokenInfo: null == tokenInfo
          ? _value.tokenInfo
          : tokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as BigInt,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as BigInt,
      vxLocked: freezed == vxLocked
          ? _value.vxLocked
          : vxLocked // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      vxUnlocking: freezed == vxUnlocking
          ? _value.vxUnlocking
          : vxUnlocking // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      cancellingStake: freezed == cancellingStake
          ? _value.cancellingStake
          : cancellingStake // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountFundInfoImpl implements _AccountFundInfo {
  const _$AccountFundInfoImpl(
      {required this.tokenInfo,
      required this.available,
      required this.locked,
      this.vxLocked,
      this.vxUnlocking,
      this.cancellingStake});

  factory _$AccountFundInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountFundInfoImplFromJson(json);

  @override
  final TokenInfo tokenInfo;
  @override
  final BigInt available;
  @override
  final BigInt locked;
  @override
  final BigInt? vxLocked;
  @override
  final BigInt? vxUnlocking;
  @override
  final BigInt? cancellingStake;

  @override
  String toString() {
    return 'AccountFundInfo(tokenInfo: $tokenInfo, available: $available, locked: $locked, vxLocked: $vxLocked, vxUnlocking: $vxUnlocking, cancellingStake: $cancellingStake)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountFundInfoImpl &&
            (identical(other.tokenInfo, tokenInfo) ||
                other.tokenInfo == tokenInfo) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            (identical(other.vxLocked, vxLocked) ||
                other.vxLocked == vxLocked) &&
            (identical(other.vxUnlocking, vxUnlocking) ||
                other.vxUnlocking == vxUnlocking) &&
            (identical(other.cancellingStake, cancellingStake) ||
                other.cancellingStake == cancellingStake));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenInfo, available, locked,
      vxLocked, vxUnlocking, cancellingStake);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountFundInfoImplCopyWith<_$AccountFundInfoImpl> get copyWith =>
      __$$AccountFundInfoImplCopyWithImpl<_$AccountFundInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountFundInfoImplToJson(
      this,
    );
  }
}

abstract class _AccountFundInfo implements AccountFundInfo {
  const factory _AccountFundInfo(
      {required final TokenInfo tokenInfo,
      required final BigInt available,
      required final BigInt locked,
      final BigInt? vxLocked,
      final BigInt? vxUnlocking,
      final BigInt? cancellingStake}) = _$AccountFundInfoImpl;

  factory _AccountFundInfo.fromJson(Map<String, dynamic> json) =
      _$AccountFundInfoImpl.fromJson;

  @override
  TokenInfo get tokenInfo;
  @override
  BigInt get available;
  @override
  BigInt get locked;
  @override
  BigInt? get vxLocked;
  @override
  BigInt? get vxUnlocking;
  @override
  BigInt? get cancellingStake;
  @override
  @JsonKey(ignore: true)
  _$$AccountFundInfoImplCopyWith<_$AccountFundInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceOrderInfo _$PlaceOrderInfoFromJson(Map<String, dynamic> json) {
  return _PlaceOrderInfo.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderInfo {
  String get available => throw _privateConstructorUsedError;
  String get minTradeAmount => throw _privateConstructorUsedError;
  int get feeRate => throw _privateConstructorUsedError;
  bool get side => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderInfoCopyWith<PlaceOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderInfoCopyWith<$Res> {
  factory $PlaceOrderInfoCopyWith(
          PlaceOrderInfo value, $Res Function(PlaceOrderInfo) then) =
      _$PlaceOrderInfoCopyWithImpl<$Res, PlaceOrderInfo>;
  @useResult
  $Res call({String available, String minTradeAmount, int feeRate, bool side});
}

/// @nodoc
class _$PlaceOrderInfoCopyWithImpl<$Res, $Val extends PlaceOrderInfo>
    implements $PlaceOrderInfoCopyWith<$Res> {
  _$PlaceOrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? minTradeAmount = null,
    Object? feeRate = null,
    Object? side = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as String,
      minTradeAmount: null == minTradeAmount
          ? _value.minTradeAmount
          : minTradeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      feeRate: null == feeRate
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderInfoImplCopyWith<$Res>
    implements $PlaceOrderInfoCopyWith<$Res> {
  factory _$$PlaceOrderInfoImplCopyWith(_$PlaceOrderInfoImpl value,
          $Res Function(_$PlaceOrderInfoImpl) then) =
      __$$PlaceOrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String available, String minTradeAmount, int feeRate, bool side});
}

/// @nodoc
class __$$PlaceOrderInfoImplCopyWithImpl<$Res>
    extends _$PlaceOrderInfoCopyWithImpl<$Res, _$PlaceOrderInfoImpl>
    implements _$$PlaceOrderInfoImplCopyWith<$Res> {
  __$$PlaceOrderInfoImplCopyWithImpl(
      _$PlaceOrderInfoImpl _value, $Res Function(_$PlaceOrderInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? minTradeAmount = null,
    Object? feeRate = null,
    Object? side = null,
  }) {
    return _then(_$PlaceOrderInfoImpl(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as String,
      minTradeAmount: null == minTradeAmount
          ? _value.minTradeAmount
          : minTradeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      feeRate: null == feeRate
          ? _value.feeRate
          : feeRate // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$PlaceOrderInfoImpl implements _PlaceOrderInfo {
  const _$PlaceOrderInfoImpl(
      {required this.available,
      required this.minTradeAmount,
      required this.feeRate,
      required this.side});

  factory _$PlaceOrderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderInfoImplFromJson(json);

  @override
  final String available;
  @override
  final String minTradeAmount;
  @override
  final int feeRate;
  @override
  final bool side;

  @override
  String toString() {
    return 'PlaceOrderInfo(available: $available, minTradeAmount: $minTradeAmount, feeRate: $feeRate, side: $side)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderInfoImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.minTradeAmount, minTradeAmount) ||
                other.minTradeAmount == minTradeAmount) &&
            (identical(other.feeRate, feeRate) || other.feeRate == feeRate) &&
            (identical(other.side, side) || other.side == side));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, available, minTradeAmount, feeRate, side);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderInfoImplCopyWith<_$PlaceOrderInfoImpl> get copyWith =>
      __$$PlaceOrderInfoImplCopyWithImpl<_$PlaceOrderInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderInfoImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderInfo implements PlaceOrderInfo {
  const factory _PlaceOrderInfo(
      {required final String available,
      required final String minTradeAmount,
      required final int feeRate,
      required final bool side}) = _$PlaceOrderInfoImpl;

  factory _PlaceOrderInfo.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderInfoImpl.fromJson;

  @override
  String get available;
  @override
  String get minTradeAmount;
  @override
  int get feeRate;
  @override
  bool get side;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderInfoImplCopyWith<_$PlaceOrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
