// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'viva_staking_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VivaPoolInfoTearOff {
  const _$VivaPoolInfoTearOff();

  _VivaPoolInfo call(
      {required TokenInfo stakingToken,
      required TokenInfo rewardToken,
      required BigInt totalStakingBalance,
      required BigInt totalRewardBalance,
      required BigInt startBlock,
      required BigInt endBlock,
      required BigInt latestRewardBlock,
      required BigInt rewardPerPeriod,
      required BigInt rewardPerToken,
      required BigInt paidOut,
      required BigInt poolId}) {
    return _VivaPoolInfo(
      stakingToken: stakingToken,
      rewardToken: rewardToken,
      totalStakingBalance: totalStakingBalance,
      totalRewardBalance: totalRewardBalance,
      startBlock: startBlock,
      endBlock: endBlock,
      latestRewardBlock: latestRewardBlock,
      rewardPerPeriod: rewardPerPeriod,
      rewardPerToken: rewardPerToken,
      paidOut: paidOut,
      poolId: poolId,
    );
  }
}

/// @nodoc
const $VivaPoolInfo = _$VivaPoolInfoTearOff();

/// @nodoc
mixin _$VivaPoolInfo {
  TokenInfo get stakingToken => throw _privateConstructorUsedError;
  TokenInfo get rewardToken => throw _privateConstructorUsedError;
  BigInt get totalStakingBalance => throw _privateConstructorUsedError;
  BigInt get totalRewardBalance => throw _privateConstructorUsedError;
  BigInt get startBlock => throw _privateConstructorUsedError;
  BigInt get endBlock => throw _privateConstructorUsedError;
  BigInt get latestRewardBlock => throw _privateConstructorUsedError;
  BigInt get rewardPerPeriod => throw _privateConstructorUsedError;
  BigInt get rewardPerToken => throw _privateConstructorUsedError;
  BigInt get paidOut => throw _privateConstructorUsedError;
  BigInt get poolId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaPoolInfoCopyWith<VivaPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaPoolInfoCopyWith<$Res> {
  factory $VivaPoolInfoCopyWith(
          VivaPoolInfo value, $Res Function(VivaPoolInfo) then) =
      _$VivaPoolInfoCopyWithImpl<$Res>;
  $Res call(
      {TokenInfo stakingToken,
      TokenInfo rewardToken,
      BigInt totalStakingBalance,
      BigInt totalRewardBalance,
      BigInt startBlock,
      BigInt endBlock,
      BigInt latestRewardBlock,
      BigInt rewardPerPeriod,
      BigInt rewardPerToken,
      BigInt paidOut,
      BigInt poolId});

  $TokenInfoCopyWith<$Res> get stakingToken;
  $TokenInfoCopyWith<$Res> get rewardToken;
}

/// @nodoc
class _$VivaPoolInfoCopyWithImpl<$Res> implements $VivaPoolInfoCopyWith<$Res> {
  _$VivaPoolInfoCopyWithImpl(this._value, this._then);

  final VivaPoolInfo _value;
  // ignore: unused_field
  final $Res Function(VivaPoolInfo) _then;

  @override
  $Res call({
    Object? stakingToken = freezed,
    Object? rewardToken = freezed,
    Object? totalStakingBalance = freezed,
    Object? totalRewardBalance = freezed,
    Object? startBlock = freezed,
    Object? endBlock = freezed,
    Object? latestRewardBlock = freezed,
    Object? rewardPerPeriod = freezed,
    Object? rewardPerToken = freezed,
    Object? paidOut = freezed,
    Object? poolId = freezed,
  }) {
    return _then(_value.copyWith(
      stakingToken: stakingToken == freezed
          ? _value.stakingToken
          : stakingToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      rewardToken: rewardToken == freezed
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      totalStakingBalance: totalStakingBalance == freezed
          ? _value.totalStakingBalance
          : totalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalRewardBalance: totalRewardBalance == freezed
          ? _value.totalRewardBalance
          : totalRewardBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      startBlock: startBlock == freezed
          ? _value.startBlock
          : startBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      endBlock: endBlock == freezed
          ? _value.endBlock
          : endBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      latestRewardBlock: latestRewardBlock == freezed
          ? _value.latestRewardBlock
          : latestRewardBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerPeriod: rewardPerPeriod == freezed
          ? _value.rewardPerPeriod
          : rewardPerPeriod // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerToken: rewardPerToken == freezed
          ? _value.rewardPerToken
          : rewardPerToken // ignore: cast_nullable_to_non_nullable
              as BigInt,
      paidOut: paidOut == freezed
          ? _value.paidOut
          : paidOut // ignore: cast_nullable_to_non_nullable
              as BigInt,
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  $TokenInfoCopyWith<$Res> get stakingToken {
    return $TokenInfoCopyWith<$Res>(_value.stakingToken, (value) {
      return _then(_value.copyWith(stakingToken: value));
    });
  }

  @override
  $TokenInfoCopyWith<$Res> get rewardToken {
    return $TokenInfoCopyWith<$Res>(_value.rewardToken, (value) {
      return _then(_value.copyWith(rewardToken: value));
    });
  }
}

/// @nodoc
abstract class _$VivaPoolInfoCopyWith<$Res>
    implements $VivaPoolInfoCopyWith<$Res> {
  factory _$VivaPoolInfoCopyWith(
          _VivaPoolInfo value, $Res Function(_VivaPoolInfo) then) =
      __$VivaPoolInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {TokenInfo stakingToken,
      TokenInfo rewardToken,
      BigInt totalStakingBalance,
      BigInt totalRewardBalance,
      BigInt startBlock,
      BigInt endBlock,
      BigInt latestRewardBlock,
      BigInt rewardPerPeriod,
      BigInt rewardPerToken,
      BigInt paidOut,
      BigInt poolId});

  @override
  $TokenInfoCopyWith<$Res> get stakingToken;
  @override
  $TokenInfoCopyWith<$Res> get rewardToken;
}

/// @nodoc
class __$VivaPoolInfoCopyWithImpl<$Res> extends _$VivaPoolInfoCopyWithImpl<$Res>
    implements _$VivaPoolInfoCopyWith<$Res> {
  __$VivaPoolInfoCopyWithImpl(
      _VivaPoolInfo _value, $Res Function(_VivaPoolInfo) _then)
      : super(_value, (v) => _then(v as _VivaPoolInfo));

  @override
  _VivaPoolInfo get _value => super._value as _VivaPoolInfo;

  @override
  $Res call({
    Object? stakingToken = freezed,
    Object? rewardToken = freezed,
    Object? totalStakingBalance = freezed,
    Object? totalRewardBalance = freezed,
    Object? startBlock = freezed,
    Object? endBlock = freezed,
    Object? latestRewardBlock = freezed,
    Object? rewardPerPeriod = freezed,
    Object? rewardPerToken = freezed,
    Object? paidOut = freezed,
    Object? poolId = freezed,
  }) {
    return _then(_VivaPoolInfo(
      stakingToken: stakingToken == freezed
          ? _value.stakingToken
          : stakingToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      rewardToken: rewardToken == freezed
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      totalStakingBalance: totalStakingBalance == freezed
          ? _value.totalStakingBalance
          : totalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalRewardBalance: totalRewardBalance == freezed
          ? _value.totalRewardBalance
          : totalRewardBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      startBlock: startBlock == freezed
          ? _value.startBlock
          : startBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      endBlock: endBlock == freezed
          ? _value.endBlock
          : endBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      latestRewardBlock: latestRewardBlock == freezed
          ? _value.latestRewardBlock
          : latestRewardBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerPeriod: rewardPerPeriod == freezed
          ? _value.rewardPerPeriod
          : rewardPerPeriod // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerToken: rewardPerToken == freezed
          ? _value.rewardPerToken
          : rewardPerToken // ignore: cast_nullable_to_non_nullable
              as BigInt,
      paidOut: paidOut == freezed
          ? _value.paidOut
          : paidOut // ignore: cast_nullable_to_non_nullable
              as BigInt,
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VivaPoolInfo implements _VivaPoolInfo {
  const _$_VivaPoolInfo(
      {required this.stakingToken,
      required this.rewardToken,
      required this.totalStakingBalance,
      required this.totalRewardBalance,
      required this.startBlock,
      required this.endBlock,
      required this.latestRewardBlock,
      required this.rewardPerPeriod,
      required this.rewardPerToken,
      required this.paidOut,
      required this.poolId});

  @override
  final TokenInfo stakingToken;
  @override
  final TokenInfo rewardToken;
  @override
  final BigInt totalStakingBalance;
  @override
  final BigInt totalRewardBalance;
  @override
  final BigInt startBlock;
  @override
  final BigInt endBlock;
  @override
  final BigInt latestRewardBlock;
  @override
  final BigInt rewardPerPeriod;
  @override
  final BigInt rewardPerToken;
  @override
  final BigInt paidOut;
  @override
  final BigInt poolId;

  @override
  String toString() {
    return 'VivaPoolInfo(stakingToken: $stakingToken, rewardToken: $rewardToken, totalStakingBalance: $totalStakingBalance, totalRewardBalance: $totalRewardBalance, startBlock: $startBlock, endBlock: $endBlock, latestRewardBlock: $latestRewardBlock, rewardPerPeriod: $rewardPerPeriod, rewardPerToken: $rewardPerToken, paidOut: $paidOut, poolId: $poolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VivaPoolInfo &&
            const DeepCollectionEquality()
                .equals(other.stakingToken, stakingToken) &&
            const DeepCollectionEquality()
                .equals(other.rewardToken, rewardToken) &&
            const DeepCollectionEquality()
                .equals(other.totalStakingBalance, totalStakingBalance) &&
            const DeepCollectionEquality()
                .equals(other.totalRewardBalance, totalRewardBalance) &&
            const DeepCollectionEquality()
                .equals(other.startBlock, startBlock) &&
            const DeepCollectionEquality().equals(other.endBlock, endBlock) &&
            const DeepCollectionEquality()
                .equals(other.latestRewardBlock, latestRewardBlock) &&
            const DeepCollectionEquality()
                .equals(other.rewardPerPeriod, rewardPerPeriod) &&
            const DeepCollectionEquality()
                .equals(other.rewardPerToken, rewardPerToken) &&
            const DeepCollectionEquality().equals(other.paidOut, paidOut) &&
            const DeepCollectionEquality().equals(other.poolId, poolId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stakingToken),
      const DeepCollectionEquality().hash(rewardToken),
      const DeepCollectionEquality().hash(totalStakingBalance),
      const DeepCollectionEquality().hash(totalRewardBalance),
      const DeepCollectionEquality().hash(startBlock),
      const DeepCollectionEquality().hash(endBlock),
      const DeepCollectionEquality().hash(latestRewardBlock),
      const DeepCollectionEquality().hash(rewardPerPeriod),
      const DeepCollectionEquality().hash(rewardPerToken),
      const DeepCollectionEquality().hash(paidOut),
      const DeepCollectionEquality().hash(poolId));

  @JsonKey(ignore: true)
  @override
  _$VivaPoolInfoCopyWith<_VivaPoolInfo> get copyWith =>
      __$VivaPoolInfoCopyWithImpl<_VivaPoolInfo>(this, _$identity);
}

abstract class _VivaPoolInfo implements VivaPoolInfo {
  const factory _VivaPoolInfo(
      {required TokenInfo stakingToken,
      required TokenInfo rewardToken,
      required BigInt totalStakingBalance,
      required BigInt totalRewardBalance,
      required BigInt startBlock,
      required BigInt endBlock,
      required BigInt latestRewardBlock,
      required BigInt rewardPerPeriod,
      required BigInt rewardPerToken,
      required BigInt paidOut,
      required BigInt poolId}) = _$_VivaPoolInfo;

  @override
  TokenInfo get stakingToken;
  @override
  TokenInfo get rewardToken;
  @override
  BigInt get totalStakingBalance;
  @override
  BigInt get totalRewardBalance;
  @override
  BigInt get startBlock;
  @override
  BigInt get endBlock;
  @override
  BigInt get latestRewardBlock;
  @override
  BigInt get rewardPerPeriod;
  @override
  BigInt get rewardPerToken;
  @override
  BigInt get paidOut;
  @override
  BigInt get poolId;
  @override
  @JsonKey(ignore: true)
  _$VivaPoolInfoCopyWith<_VivaPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VivaUserInfoTearOff {
  const _$VivaUserInfoTearOff();

  _VivaUserInfo call(
      {required BigInt stakingBalance, required BigInt rewardDebt}) {
    return _VivaUserInfo(
      stakingBalance: stakingBalance,
      rewardDebt: rewardDebt,
    );
  }
}

/// @nodoc
const $VivaUserInfo = _$VivaUserInfoTearOff();

/// @nodoc
mixin _$VivaUserInfo {
  BigInt get stakingBalance => throw _privateConstructorUsedError;
  BigInt get rewardDebt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaUserInfoCopyWith<VivaUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaUserInfoCopyWith<$Res> {
  factory $VivaUserInfoCopyWith(
          VivaUserInfo value, $Res Function(VivaUserInfo) then) =
      _$VivaUserInfoCopyWithImpl<$Res>;
  $Res call({BigInt stakingBalance, BigInt rewardDebt});
}

/// @nodoc
class _$VivaUserInfoCopyWithImpl<$Res> implements $VivaUserInfoCopyWith<$Res> {
  _$VivaUserInfoCopyWithImpl(this._value, this._then);

  final VivaUserInfo _value;
  // ignore: unused_field
  final $Res Function(VivaUserInfo) _then;

  @override
  $Res call({
    Object? stakingBalance = freezed,
    Object? rewardDebt = freezed,
  }) {
    return _then(_value.copyWith(
      stakingBalance: stakingBalance == freezed
          ? _value.stakingBalance
          : stakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardDebt: rewardDebt == freezed
          ? _value.rewardDebt
          : rewardDebt // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
abstract class _$VivaUserInfoCopyWith<$Res>
    implements $VivaUserInfoCopyWith<$Res> {
  factory _$VivaUserInfoCopyWith(
          _VivaUserInfo value, $Res Function(_VivaUserInfo) then) =
      __$VivaUserInfoCopyWithImpl<$Res>;
  @override
  $Res call({BigInt stakingBalance, BigInt rewardDebt});
}

/// @nodoc
class __$VivaUserInfoCopyWithImpl<$Res> extends _$VivaUserInfoCopyWithImpl<$Res>
    implements _$VivaUserInfoCopyWith<$Res> {
  __$VivaUserInfoCopyWithImpl(
      _VivaUserInfo _value, $Res Function(_VivaUserInfo) _then)
      : super(_value, (v) => _then(v as _VivaUserInfo));

  @override
  _VivaUserInfo get _value => super._value as _VivaUserInfo;

  @override
  $Res call({
    Object? stakingBalance = freezed,
    Object? rewardDebt = freezed,
  }) {
    return _then(_VivaUserInfo(
      stakingBalance: stakingBalance == freezed
          ? _value.stakingBalance
          : stakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardDebt: rewardDebt == freezed
          ? _value.rewardDebt
          : rewardDebt // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VivaUserInfo implements _VivaUserInfo {
  const _$_VivaUserInfo(
      {required this.stakingBalance, required this.rewardDebt});

  @override
  final BigInt stakingBalance;
  @override
  final BigInt rewardDebt;

  @override
  String toString() {
    return 'VivaUserInfo(stakingBalance: $stakingBalance, rewardDebt: $rewardDebt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VivaUserInfo &&
            const DeepCollectionEquality()
                .equals(other.stakingBalance, stakingBalance) &&
            const DeepCollectionEquality()
                .equals(other.rewardDebt, rewardDebt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stakingBalance),
      const DeepCollectionEquality().hash(rewardDebt));

  @JsonKey(ignore: true)
  @override
  _$VivaUserInfoCopyWith<_VivaUserInfo> get copyWith =>
      __$VivaUserInfoCopyWithImpl<_VivaUserInfo>(this, _$identity);
}

abstract class _VivaUserInfo implements VivaUserInfo {
  const factory _VivaUserInfo(
      {required BigInt stakingBalance,
      required BigInt rewardDebt}) = _$_VivaUserInfo;

  @override
  BigInt get stakingBalance;
  @override
  BigInt get rewardDebt;
  @override
  @JsonKey(ignore: true)
  _$VivaUserInfoCopyWith<_VivaUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VivaWithdrawInputTearOff {
  const _$VivaWithdrawInputTearOff();

  _VivaWithdrawInput call({required BigInt poolId, required BigInt amount}) {
    return _VivaWithdrawInput(
      poolId: poolId,
      amount: amount,
    );
  }
}

/// @nodoc
const $VivaWithdrawInput = _$VivaWithdrawInputTearOff();

/// @nodoc
mixin _$VivaWithdrawInput {
  BigInt get poolId => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaWithdrawInputCopyWith<VivaWithdrawInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaWithdrawInputCopyWith<$Res> {
  factory $VivaWithdrawInputCopyWith(
          VivaWithdrawInput value, $Res Function(VivaWithdrawInput) then) =
      _$VivaWithdrawInputCopyWithImpl<$Res>;
  $Res call({BigInt poolId, BigInt amount});
}

/// @nodoc
class _$VivaWithdrawInputCopyWithImpl<$Res>
    implements $VivaWithdrawInputCopyWith<$Res> {
  _$VivaWithdrawInputCopyWithImpl(this._value, this._then);

  final VivaWithdrawInput _value;
  // ignore: unused_field
  final $Res Function(VivaWithdrawInput) _then;

  @override
  $Res call({
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
abstract class _$VivaWithdrawInputCopyWith<$Res>
    implements $VivaWithdrawInputCopyWith<$Res> {
  factory _$VivaWithdrawInputCopyWith(
          _VivaWithdrawInput value, $Res Function(_VivaWithdrawInput) then) =
      __$VivaWithdrawInputCopyWithImpl<$Res>;
  @override
  $Res call({BigInt poolId, BigInt amount});
}

/// @nodoc
class __$VivaWithdrawInputCopyWithImpl<$Res>
    extends _$VivaWithdrawInputCopyWithImpl<$Res>
    implements _$VivaWithdrawInputCopyWith<$Res> {
  __$VivaWithdrawInputCopyWithImpl(
      _VivaWithdrawInput _value, $Res Function(_VivaWithdrawInput) _then)
      : super(_value, (v) => _then(v as _VivaWithdrawInput));

  @override
  _VivaWithdrawInput get _value => super._value as _VivaWithdrawInput;

  @override
  $Res call({
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VivaWithdrawInput(
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VivaWithdrawInput extends _VivaWithdrawInput {
  const _$_VivaWithdrawInput({required this.poolId, required this.amount})
      : super._();

  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VivaWithdrawInput(poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VivaWithdrawInput &&
            const DeepCollectionEquality().equals(other.poolId, poolId) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(poolId),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$VivaWithdrawInputCopyWith<_VivaWithdrawInput> get copyWith =>
      __$VivaWithdrawInputCopyWithImpl<_VivaWithdrawInput>(this, _$identity);
}

abstract class _VivaWithdrawInput extends VivaWithdrawInput {
  const factory _VivaWithdrawInput(
      {required BigInt poolId, required BigInt amount}) = _$_VivaWithdrawInput;
  const _VivaWithdrawInput._() : super._();

  @override
  BigInt get poolId;
  @override
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$VivaWithdrawInputCopyWith<_VivaWithdrawInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VivaDepositInputTearOff {
  const _$VivaDepositInputTearOff();

  _VivaDepositInput call({required BigInt poolId}) {
    return _VivaDepositInput(
      poolId: poolId,
    );
  }
}

/// @nodoc
const $VivaDepositInput = _$VivaDepositInputTearOff();

/// @nodoc
mixin _$VivaDepositInput {
  BigInt get poolId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaDepositInputCopyWith<VivaDepositInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaDepositInputCopyWith<$Res> {
  factory $VivaDepositInputCopyWith(
          VivaDepositInput value, $Res Function(VivaDepositInput) then) =
      _$VivaDepositInputCopyWithImpl<$Res>;
  $Res call({BigInt poolId});
}

/// @nodoc
class _$VivaDepositInputCopyWithImpl<$Res>
    implements $VivaDepositInputCopyWith<$Res> {
  _$VivaDepositInputCopyWithImpl(this._value, this._then);

  final VivaDepositInput _value;
  // ignore: unused_field
  final $Res Function(VivaDepositInput) _then;

  @override
  $Res call({
    Object? poolId = freezed,
  }) {
    return _then(_value.copyWith(
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
abstract class _$VivaDepositInputCopyWith<$Res>
    implements $VivaDepositInputCopyWith<$Res> {
  factory _$VivaDepositInputCopyWith(
          _VivaDepositInput value, $Res Function(_VivaDepositInput) then) =
      __$VivaDepositInputCopyWithImpl<$Res>;
  @override
  $Res call({BigInt poolId});
}

/// @nodoc
class __$VivaDepositInputCopyWithImpl<$Res>
    extends _$VivaDepositInputCopyWithImpl<$Res>
    implements _$VivaDepositInputCopyWith<$Res> {
  __$VivaDepositInputCopyWithImpl(
      _VivaDepositInput _value, $Res Function(_VivaDepositInput) _then)
      : super(_value, (v) => _then(v as _VivaDepositInput));

  @override
  _VivaDepositInput get _value => super._value as _VivaDepositInput;

  @override
  $Res call({
    Object? poolId = freezed,
  }) {
    return _then(_VivaDepositInput(
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VivaDepositInput extends _VivaDepositInput {
  const _$_VivaDepositInput({required this.poolId}) : super._();

  @override
  final BigInt poolId;

  @override
  String toString() {
    return 'VivaDepositInput(poolId: $poolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VivaDepositInput &&
            const DeepCollectionEquality().equals(other.poolId, poolId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(poolId));

  @JsonKey(ignore: true)
  @override
  _$VivaDepositInputCopyWith<_VivaDepositInput> get copyWith =>
      __$VivaDepositInputCopyWithImpl<_VivaDepositInput>(this, _$identity);
}

abstract class _VivaDepositInput extends VivaDepositInput {
  const factory _VivaDepositInput({required BigInt poolId}) =
      _$_VivaDepositInput;
  const _VivaDepositInput._() : super._();

  @override
  BigInt get poolId;
  @override
  @JsonKey(ignore: true)
  _$VivaDepositInputCopyWith<_VivaDepositInput> get copyWith =>
      throw _privateConstructorUsedError;
}
