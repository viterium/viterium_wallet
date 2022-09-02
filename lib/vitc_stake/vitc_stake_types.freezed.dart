// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vitc_stake_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VitcPoolInfoTearOff {
  const _$VitcPoolInfoTearOff();

  _VitcPoolInfo call(
      {required Token stakingToken,
      required Token rewardToken,
      required BigInt totalStakingBalance,
      required BigInt totalRewardBalance,
      required BigInt startBlock,
      required BigInt endBlock,
      required BigInt latestRewardBlock,
      required BigInt rewardPerPeriod,
      required BigInt rewardPerToken,
      required BigInt paidOut,
      required BigInt removedDecimals,
      required BigInt timelock,
      required BigInt poolId}) {
    return _VitcPoolInfo(
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
      removedDecimals: removedDecimals,
      timelock: timelock,
      poolId: poolId,
    );
  }
}

/// @nodoc
const $VitcPoolInfo = _$VitcPoolInfoTearOff();

/// @nodoc
mixin _$VitcPoolInfo {
  Token get stakingToken => throw _privateConstructorUsedError;
  Token get rewardToken => throw _privateConstructorUsedError;
  BigInt get totalStakingBalance => throw _privateConstructorUsedError;
  BigInt get totalRewardBalance => throw _privateConstructorUsedError;
  BigInt get startBlock => throw _privateConstructorUsedError;
  BigInt get endBlock => throw _privateConstructorUsedError;
  BigInt get latestRewardBlock => throw _privateConstructorUsedError;
  BigInt get rewardPerPeriod => throw _privateConstructorUsedError;
  BigInt get rewardPerToken => throw _privateConstructorUsedError;
  BigInt get paidOut => throw _privateConstructorUsedError;
  BigInt get removedDecimals => throw _privateConstructorUsedError;
  BigInt get timelock => throw _privateConstructorUsedError;
  BigInt get poolId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitcPoolInfoCopyWith<VitcPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcPoolInfoCopyWith<$Res> {
  factory $VitcPoolInfoCopyWith(
          VitcPoolInfo value, $Res Function(VitcPoolInfo) then) =
      _$VitcPoolInfoCopyWithImpl<$Res>;
  $Res call(
      {Token stakingToken,
      Token rewardToken,
      BigInt totalStakingBalance,
      BigInt totalRewardBalance,
      BigInt startBlock,
      BigInt endBlock,
      BigInt latestRewardBlock,
      BigInt rewardPerPeriod,
      BigInt rewardPerToken,
      BigInt paidOut,
      BigInt removedDecimals,
      BigInt timelock,
      BigInt poolId});

  $TokenCopyWith<$Res> get stakingToken;
  $TokenCopyWith<$Res> get rewardToken;
}

/// @nodoc
class _$VitcPoolInfoCopyWithImpl<$Res> implements $VitcPoolInfoCopyWith<$Res> {
  _$VitcPoolInfoCopyWithImpl(this._value, this._then);

  final VitcPoolInfo _value;
  // ignore: unused_field
  final $Res Function(VitcPoolInfo) _then;

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
    Object? removedDecimals = freezed,
    Object? timelock = freezed,
    Object? poolId = freezed,
  }) {
    return _then(_value.copyWith(
      stakingToken: stakingToken == freezed
          ? _value.stakingToken
          : stakingToken // ignore: cast_nullable_to_non_nullable
              as Token,
      rewardToken: rewardToken == freezed
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as Token,
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
      removedDecimals: removedDecimals == freezed
          ? _value.removedDecimals
          : removedDecimals // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timelock: timelock == freezed
          ? _value.timelock
          : timelock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  $TokenCopyWith<$Res> get stakingToken {
    return $TokenCopyWith<$Res>(_value.stakingToken, (value) {
      return _then(_value.copyWith(stakingToken: value));
    });
  }

  @override
  $TokenCopyWith<$Res> get rewardToken {
    return $TokenCopyWith<$Res>(_value.rewardToken, (value) {
      return _then(_value.copyWith(rewardToken: value));
    });
  }
}

/// @nodoc
abstract class _$VitcPoolInfoCopyWith<$Res>
    implements $VitcPoolInfoCopyWith<$Res> {
  factory _$VitcPoolInfoCopyWith(
          _VitcPoolInfo value, $Res Function(_VitcPoolInfo) then) =
      __$VitcPoolInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Token stakingToken,
      Token rewardToken,
      BigInt totalStakingBalance,
      BigInt totalRewardBalance,
      BigInt startBlock,
      BigInt endBlock,
      BigInt latestRewardBlock,
      BigInt rewardPerPeriod,
      BigInt rewardPerToken,
      BigInt paidOut,
      BigInt removedDecimals,
      BigInt timelock,
      BigInt poolId});

  @override
  $TokenCopyWith<$Res> get stakingToken;
  @override
  $TokenCopyWith<$Res> get rewardToken;
}

/// @nodoc
class __$VitcPoolInfoCopyWithImpl<$Res> extends _$VitcPoolInfoCopyWithImpl<$Res>
    implements _$VitcPoolInfoCopyWith<$Res> {
  __$VitcPoolInfoCopyWithImpl(
      _VitcPoolInfo _value, $Res Function(_VitcPoolInfo) _then)
      : super(_value, (v) => _then(v as _VitcPoolInfo));

  @override
  _VitcPoolInfo get _value => super._value as _VitcPoolInfo;

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
    Object? removedDecimals = freezed,
    Object? timelock = freezed,
    Object? poolId = freezed,
  }) {
    return _then(_VitcPoolInfo(
      stakingToken: stakingToken == freezed
          ? _value.stakingToken
          : stakingToken // ignore: cast_nullable_to_non_nullable
              as Token,
      rewardToken: rewardToken == freezed
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as Token,
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
      removedDecimals: removedDecimals == freezed
          ? _value.removedDecimals
          : removedDecimals // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timelock: timelock == freezed
          ? _value.timelock
          : timelock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VitcPoolInfo extends _VitcPoolInfo {
  const _$_VitcPoolInfo(
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
      required this.removedDecimals,
      required this.timelock,
      required this.poolId})
      : super._();

  @override
  final Token stakingToken;
  @override
  final Token rewardToken;
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
  final BigInt removedDecimals;
  @override
  final BigInt timelock;
  @override
  final BigInt poolId;

  @override
  String toString() {
    return 'VitcPoolInfo(stakingToken: $stakingToken, rewardToken: $rewardToken, totalStakingBalance: $totalStakingBalance, totalRewardBalance: $totalRewardBalance, startBlock: $startBlock, endBlock: $endBlock, latestRewardBlock: $latestRewardBlock, rewardPerPeriod: $rewardPerPeriod, rewardPerToken: $rewardPerToken, paidOut: $paidOut, removedDecimals: $removedDecimals, timelock: $timelock, poolId: $poolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcPoolInfo &&
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
            const DeepCollectionEquality()
                .equals(other.removedDecimals, removedDecimals) &&
            const DeepCollectionEquality().equals(other.timelock, timelock) &&
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
      const DeepCollectionEquality().hash(removedDecimals),
      const DeepCollectionEquality().hash(timelock),
      const DeepCollectionEquality().hash(poolId));

  @JsonKey(ignore: true)
  @override
  _$VitcPoolInfoCopyWith<_VitcPoolInfo> get copyWith =>
      __$VitcPoolInfoCopyWithImpl<_VitcPoolInfo>(this, _$identity);
}

abstract class _VitcPoolInfo extends VitcPoolInfo {
  const factory _VitcPoolInfo(
      {required Token stakingToken,
      required Token rewardToken,
      required BigInt totalStakingBalance,
      required BigInt totalRewardBalance,
      required BigInt startBlock,
      required BigInt endBlock,
      required BigInt latestRewardBlock,
      required BigInt rewardPerPeriod,
      required BigInt rewardPerToken,
      required BigInt paidOut,
      required BigInt removedDecimals,
      required BigInt timelock,
      required BigInt poolId}) = _$_VitcPoolInfo;
  const _VitcPoolInfo._() : super._();

  @override
  Token get stakingToken;
  @override
  Token get rewardToken;
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
  BigInt get removedDecimals;
  @override
  BigInt get timelock;
  @override
  BigInt get poolId;
  @override
  @JsonKey(ignore: true)
  _$VitcPoolInfoCopyWith<_VitcPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VitcPoolInfoAllTearOff {
  const _$VitcPoolInfoAllTearOff();

  _VitcPoolInfoAll call(
      {required VitcPoolInfo poolInfo,
      required TokenInfo stakingTokenInfo,
      required TokenInfo rewardTokenInfo}) {
    return _VitcPoolInfoAll(
      poolInfo: poolInfo,
      stakingTokenInfo: stakingTokenInfo,
      rewardTokenInfo: rewardTokenInfo,
    );
  }
}

/// @nodoc
const $VitcPoolInfoAll = _$VitcPoolInfoAllTearOff();

/// @nodoc
mixin _$VitcPoolInfoAll {
  VitcPoolInfo get poolInfo => throw _privateConstructorUsedError;
  TokenInfo get stakingTokenInfo => throw _privateConstructorUsedError;
  TokenInfo get rewardTokenInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitcPoolInfoAllCopyWith<VitcPoolInfoAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcPoolInfoAllCopyWith<$Res> {
  factory $VitcPoolInfoAllCopyWith(
          VitcPoolInfoAll value, $Res Function(VitcPoolInfoAll) then) =
      _$VitcPoolInfoAllCopyWithImpl<$Res>;
  $Res call(
      {VitcPoolInfo poolInfo,
      TokenInfo stakingTokenInfo,
      TokenInfo rewardTokenInfo});

  $VitcPoolInfoCopyWith<$Res> get poolInfo;
  $TokenInfoCopyWith<$Res> get stakingTokenInfo;
  $TokenInfoCopyWith<$Res> get rewardTokenInfo;
}

/// @nodoc
class _$VitcPoolInfoAllCopyWithImpl<$Res>
    implements $VitcPoolInfoAllCopyWith<$Res> {
  _$VitcPoolInfoAllCopyWithImpl(this._value, this._then);

  final VitcPoolInfoAll _value;
  // ignore: unused_field
  final $Res Function(VitcPoolInfoAll) _then;

  @override
  $Res call({
    Object? poolInfo = freezed,
    Object? stakingTokenInfo = freezed,
    Object? rewardTokenInfo = freezed,
  }) {
    return _then(_value.copyWith(
      poolInfo: poolInfo == freezed
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VitcPoolInfo,
      stakingTokenInfo: stakingTokenInfo == freezed
          ? _value.stakingTokenInfo
          : stakingTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      rewardTokenInfo: rewardTokenInfo == freezed
          ? _value.rewardTokenInfo
          : rewardTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }

  @override
  $VitcPoolInfoCopyWith<$Res> get poolInfo {
    return $VitcPoolInfoCopyWith<$Res>(_value.poolInfo, (value) {
      return _then(_value.copyWith(poolInfo: value));
    });
  }

  @override
  $TokenInfoCopyWith<$Res> get stakingTokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.stakingTokenInfo, (value) {
      return _then(_value.copyWith(stakingTokenInfo: value));
    });
  }

  @override
  $TokenInfoCopyWith<$Res> get rewardTokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.rewardTokenInfo, (value) {
      return _then(_value.copyWith(rewardTokenInfo: value));
    });
  }
}

/// @nodoc
abstract class _$VitcPoolInfoAllCopyWith<$Res>
    implements $VitcPoolInfoAllCopyWith<$Res> {
  factory _$VitcPoolInfoAllCopyWith(
          _VitcPoolInfoAll value, $Res Function(_VitcPoolInfoAll) then) =
      __$VitcPoolInfoAllCopyWithImpl<$Res>;
  @override
  $Res call(
      {VitcPoolInfo poolInfo,
      TokenInfo stakingTokenInfo,
      TokenInfo rewardTokenInfo});

  @override
  $VitcPoolInfoCopyWith<$Res> get poolInfo;
  @override
  $TokenInfoCopyWith<$Res> get stakingTokenInfo;
  @override
  $TokenInfoCopyWith<$Res> get rewardTokenInfo;
}

/// @nodoc
class __$VitcPoolInfoAllCopyWithImpl<$Res>
    extends _$VitcPoolInfoAllCopyWithImpl<$Res>
    implements _$VitcPoolInfoAllCopyWith<$Res> {
  __$VitcPoolInfoAllCopyWithImpl(
      _VitcPoolInfoAll _value, $Res Function(_VitcPoolInfoAll) _then)
      : super(_value, (v) => _then(v as _VitcPoolInfoAll));

  @override
  _VitcPoolInfoAll get _value => super._value as _VitcPoolInfoAll;

  @override
  $Res call({
    Object? poolInfo = freezed,
    Object? stakingTokenInfo = freezed,
    Object? rewardTokenInfo = freezed,
  }) {
    return _then(_VitcPoolInfoAll(
      poolInfo: poolInfo == freezed
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VitcPoolInfo,
      stakingTokenInfo: stakingTokenInfo == freezed
          ? _value.stakingTokenInfo
          : stakingTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      rewardTokenInfo: rewardTokenInfo == freezed
          ? _value.rewardTokenInfo
          : rewardTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }
}

/// @nodoc

class _$_VitcPoolInfoAll extends _VitcPoolInfoAll {
  const _$_VitcPoolInfoAll(
      {required this.poolInfo,
      required this.stakingTokenInfo,
      required this.rewardTokenInfo})
      : super._();

  @override
  final VitcPoolInfo poolInfo;
  @override
  final TokenInfo stakingTokenInfo;
  @override
  final TokenInfo rewardTokenInfo;

  @override
  String toString() {
    return 'VitcPoolInfoAll(poolInfo: $poolInfo, stakingTokenInfo: $stakingTokenInfo, rewardTokenInfo: $rewardTokenInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcPoolInfoAll &&
            const DeepCollectionEquality().equals(other.poolInfo, poolInfo) &&
            const DeepCollectionEquality()
                .equals(other.stakingTokenInfo, stakingTokenInfo) &&
            const DeepCollectionEquality()
                .equals(other.rewardTokenInfo, rewardTokenInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(poolInfo),
      const DeepCollectionEquality().hash(stakingTokenInfo),
      const DeepCollectionEquality().hash(rewardTokenInfo));

  @JsonKey(ignore: true)
  @override
  _$VitcPoolInfoAllCopyWith<_VitcPoolInfoAll> get copyWith =>
      __$VitcPoolInfoAllCopyWithImpl<_VitcPoolInfoAll>(this, _$identity);
}

abstract class _VitcPoolInfoAll extends VitcPoolInfoAll {
  const factory _VitcPoolInfoAll(
      {required VitcPoolInfo poolInfo,
      required TokenInfo stakingTokenInfo,
      required TokenInfo rewardTokenInfo}) = _$_VitcPoolInfoAll;
  const _VitcPoolInfoAll._() : super._();

  @override
  VitcPoolInfo get poolInfo;
  @override
  TokenInfo get stakingTokenInfo;
  @override
  TokenInfo get rewardTokenInfo;
  @override
  @JsonKey(ignore: true)
  _$VitcPoolInfoAllCopyWith<_VitcPoolInfoAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VitcStakeUserInfoTearOff {
  const _$VitcStakeUserInfoTearOff();

  _VitcStakeUserInfo call(
      {required BigInt stakingBalance,
      required BigInt rewardDebt,
      required BigInt depositBlock}) {
    return _VitcStakeUserInfo(
      stakingBalance: stakingBalance,
      rewardDebt: rewardDebt,
      depositBlock: depositBlock,
    );
  }
}

/// @nodoc
const $VitcStakeUserInfo = _$VitcStakeUserInfoTearOff();

/// @nodoc
mixin _$VitcStakeUserInfo {
  BigInt get stakingBalance => throw _privateConstructorUsedError;
  BigInt get rewardDebt => throw _privateConstructorUsedError;
  BigInt get depositBlock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitcStakeUserInfoCopyWith<VitcStakeUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcStakeUserInfoCopyWith<$Res> {
  factory $VitcStakeUserInfoCopyWith(
          VitcStakeUserInfo value, $Res Function(VitcStakeUserInfo) then) =
      _$VitcStakeUserInfoCopyWithImpl<$Res>;
  $Res call({BigInt stakingBalance, BigInt rewardDebt, BigInt depositBlock});
}

/// @nodoc
class _$VitcStakeUserInfoCopyWithImpl<$Res>
    implements $VitcStakeUserInfoCopyWith<$Res> {
  _$VitcStakeUserInfoCopyWithImpl(this._value, this._then);

  final VitcStakeUserInfo _value;
  // ignore: unused_field
  final $Res Function(VitcStakeUserInfo) _then;

  @override
  $Res call({
    Object? stakingBalance = freezed,
    Object? rewardDebt = freezed,
    Object? depositBlock = freezed,
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
      depositBlock: depositBlock == freezed
          ? _value.depositBlock
          : depositBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
abstract class _$VitcStakeUserInfoCopyWith<$Res>
    implements $VitcStakeUserInfoCopyWith<$Res> {
  factory _$VitcStakeUserInfoCopyWith(
          _VitcStakeUserInfo value, $Res Function(_VitcStakeUserInfo) then) =
      __$VitcStakeUserInfoCopyWithImpl<$Res>;
  @override
  $Res call({BigInt stakingBalance, BigInt rewardDebt, BigInt depositBlock});
}

/// @nodoc
class __$VitcStakeUserInfoCopyWithImpl<$Res>
    extends _$VitcStakeUserInfoCopyWithImpl<$Res>
    implements _$VitcStakeUserInfoCopyWith<$Res> {
  __$VitcStakeUserInfoCopyWithImpl(
      _VitcStakeUserInfo _value, $Res Function(_VitcStakeUserInfo) _then)
      : super(_value, (v) => _then(v as _VitcStakeUserInfo));

  @override
  _VitcStakeUserInfo get _value => super._value as _VitcStakeUserInfo;

  @override
  $Res call({
    Object? stakingBalance = freezed,
    Object? rewardDebt = freezed,
    Object? depositBlock = freezed,
  }) {
    return _then(_VitcStakeUserInfo(
      stakingBalance: stakingBalance == freezed
          ? _value.stakingBalance
          : stakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardDebt: rewardDebt == freezed
          ? _value.rewardDebt
          : rewardDebt // ignore: cast_nullable_to_non_nullable
              as BigInt,
      depositBlock: depositBlock == freezed
          ? _value.depositBlock
          : depositBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VitcStakeUserInfo implements _VitcStakeUserInfo {
  const _$_VitcStakeUserInfo(
      {required this.stakingBalance,
      required this.rewardDebt,
      required this.depositBlock});

  @override
  final BigInt stakingBalance;
  @override
  final BigInt rewardDebt;
  @override
  final BigInt depositBlock;

  @override
  String toString() {
    return 'VitcStakeUserInfo(stakingBalance: $stakingBalance, rewardDebt: $rewardDebt, depositBlock: $depositBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcStakeUserInfo &&
            const DeepCollectionEquality()
                .equals(other.stakingBalance, stakingBalance) &&
            const DeepCollectionEquality()
                .equals(other.rewardDebt, rewardDebt) &&
            const DeepCollectionEquality()
                .equals(other.depositBlock, depositBlock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stakingBalance),
      const DeepCollectionEquality().hash(rewardDebt),
      const DeepCollectionEquality().hash(depositBlock));

  @JsonKey(ignore: true)
  @override
  _$VitcStakeUserInfoCopyWith<_VitcStakeUserInfo> get copyWith =>
      __$VitcStakeUserInfoCopyWithImpl<_VitcStakeUserInfo>(this, _$identity);
}

abstract class _VitcStakeUserInfo implements VitcStakeUserInfo {
  const factory _VitcStakeUserInfo(
      {required BigInt stakingBalance,
      required BigInt rewardDebt,
      required BigInt depositBlock}) = _$_VitcStakeUserInfo;

  @override
  BigInt get stakingBalance;
  @override
  BigInt get rewardDebt;
  @override
  BigInt get depositBlock;
  @override
  @JsonKey(ignore: true)
  _$VitcStakeUserInfoCopyWith<_VitcStakeUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VitcStakeEventTearOff {
  const _$VitcStakeEventTearOff();

  _VitcStakeEventPoolCreated poolCreated({required BigInt poolId}) {
    return _VitcStakeEventPoolCreated(
      poolId: poolId,
    );
  }

  _VitcStakeEventDeposit deposit(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) {
    return _VitcStakeEventDeposit(
      address: address,
      poolId: poolId,
      amount: amount,
    );
  }

  _VitcStakeEventWithdraw withdraw(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) {
    return _VitcStakeEventWithdraw(
      address: address,
      poolId: poolId,
      amount: amount,
    );
  }

  _VitcStakeEventClaim claim(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) {
    return _VitcStakeEventClaim(
      address: address,
      poolId: poolId,
      amount: amount,
    );
  }

  _VitcStakeEventUnknown unknown({required VmLog vmLog}) {
    return _VitcStakeEventUnknown(
      vmLog: vmLog,
    );
  }
}

/// @nodoc
const $VitcStakeEvent = _$VitcStakeEventTearOff();

/// @nodoc
mixin _$VitcStakeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcStakeEventPoolCreated value) poolCreated,
    required TResult Function(_VitcStakeEventDeposit value) deposit,
    required TResult Function(_VitcStakeEventWithdraw value) withdraw,
    required TResult Function(_VitcStakeEventClaim value) claim,
    required TResult Function(_VitcStakeEventUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcStakeEventCopyWith<$Res> {
  factory $VitcStakeEventCopyWith(
          VitcStakeEvent value, $Res Function(VitcStakeEvent) then) =
      _$VitcStakeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VitcStakeEventCopyWithImpl<$Res>
    implements $VitcStakeEventCopyWith<$Res> {
  _$VitcStakeEventCopyWithImpl(this._value, this._then);

  final VitcStakeEvent _value;
  // ignore: unused_field
  final $Res Function(VitcStakeEvent) _then;
}

/// @nodoc
abstract class _$VitcStakeEventPoolCreatedCopyWith<$Res> {
  factory _$VitcStakeEventPoolCreatedCopyWith(_VitcStakeEventPoolCreated value,
          $Res Function(_VitcStakeEventPoolCreated) then) =
      __$VitcStakeEventPoolCreatedCopyWithImpl<$Res>;
  $Res call({BigInt poolId});
}

/// @nodoc
class __$VitcStakeEventPoolCreatedCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res>
    implements _$VitcStakeEventPoolCreatedCopyWith<$Res> {
  __$VitcStakeEventPoolCreatedCopyWithImpl(_VitcStakeEventPoolCreated _value,
      $Res Function(_VitcStakeEventPoolCreated) _then)
      : super(_value, (v) => _then(v as _VitcStakeEventPoolCreated));

  @override
  _VitcStakeEventPoolCreated get _value =>
      super._value as _VitcStakeEventPoolCreated;

  @override
  $Res call({
    Object? poolId = freezed,
  }) {
    return _then(_VitcStakeEventPoolCreated(
      poolId: poolId == freezed
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VitcStakeEventPoolCreated implements _VitcStakeEventPoolCreated {
  const _$_VitcStakeEventPoolCreated({required this.poolId});

  @override
  final BigInt poolId;

  @override
  String toString() {
    return 'VitcStakeEvent.poolCreated(poolId: $poolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcStakeEventPoolCreated &&
            const DeepCollectionEquality().equals(other.poolId, poolId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(poolId));

  @JsonKey(ignore: true)
  @override
  _$VitcStakeEventPoolCreatedCopyWith<_VitcStakeEventPoolCreated>
      get copyWith =>
          __$VitcStakeEventPoolCreatedCopyWithImpl<_VitcStakeEventPoolCreated>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return poolCreated(poolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
  }) {
    return poolCreated?.call(poolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) {
    if (poolCreated != null) {
      return poolCreated(poolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcStakeEventPoolCreated value) poolCreated,
    required TResult Function(_VitcStakeEventDeposit value) deposit,
    required TResult Function(_VitcStakeEventWithdraw value) withdraw,
    required TResult Function(_VitcStakeEventClaim value) claim,
    required TResult Function(_VitcStakeEventUnknown value) unknown,
  }) {
    return poolCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
  }) {
    return poolCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (poolCreated != null) {
      return poolCreated(this);
    }
    return orElse();
  }
}

abstract class _VitcStakeEventPoolCreated implements VitcStakeEvent {
  const factory _VitcStakeEventPoolCreated({required BigInt poolId}) =
      _$_VitcStakeEventPoolCreated;

  BigInt get poolId;
  @JsonKey(ignore: true)
  _$VitcStakeEventPoolCreatedCopyWith<_VitcStakeEventPoolCreated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VitcStakeEventDepositCopyWith<$Res> {
  factory _$VitcStakeEventDepositCopyWith(_VitcStakeEventDeposit value,
          $Res Function(_VitcStakeEventDeposit) then) =
      __$VitcStakeEventDepositCopyWithImpl<$Res>;
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$VitcStakeEventDepositCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res>
    implements _$VitcStakeEventDepositCopyWith<$Res> {
  __$VitcStakeEventDepositCopyWithImpl(_VitcStakeEventDeposit _value,
      $Res Function(_VitcStakeEventDeposit) _then)
      : super(_value, (v) => _then(v as _VitcStakeEventDeposit));

  @override
  _VitcStakeEventDeposit get _value => super._value as _VitcStakeEventDeposit;

  @override
  $Res call({
    Object? address = freezed,
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VitcStakeEventDeposit(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
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

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$_VitcStakeEventDeposit implements _VitcStakeEventDeposit {
  const _$_VitcStakeEventDeposit(
      {required this.address, required this.poolId, required this.amount});

  @override
  final Address address;
  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VitcStakeEvent.deposit(address: $address, poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcStakeEventDeposit &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.poolId, poolId) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(poolId),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$VitcStakeEventDepositCopyWith<_VitcStakeEventDeposit> get copyWith =>
      __$VitcStakeEventDepositCopyWithImpl<_VitcStakeEventDeposit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return deposit(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
  }) {
    return deposit?.call(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) {
    if (deposit != null) {
      return deposit(address, poolId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcStakeEventPoolCreated value) poolCreated,
    required TResult Function(_VitcStakeEventDeposit value) deposit,
    required TResult Function(_VitcStakeEventWithdraw value) withdraw,
    required TResult Function(_VitcStakeEventClaim value) claim,
    required TResult Function(_VitcStakeEventUnknown value) unknown,
  }) {
    return deposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
  }) {
    return deposit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (deposit != null) {
      return deposit(this);
    }
    return orElse();
  }
}

abstract class _VitcStakeEventDeposit implements VitcStakeEvent {
  const factory _VitcStakeEventDeposit(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) = _$_VitcStakeEventDeposit;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$VitcStakeEventDepositCopyWith<_VitcStakeEventDeposit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VitcStakeEventWithdrawCopyWith<$Res> {
  factory _$VitcStakeEventWithdrawCopyWith(_VitcStakeEventWithdraw value,
          $Res Function(_VitcStakeEventWithdraw) then) =
      __$VitcStakeEventWithdrawCopyWithImpl<$Res>;
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$VitcStakeEventWithdrawCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res>
    implements _$VitcStakeEventWithdrawCopyWith<$Res> {
  __$VitcStakeEventWithdrawCopyWithImpl(_VitcStakeEventWithdraw _value,
      $Res Function(_VitcStakeEventWithdraw) _then)
      : super(_value, (v) => _then(v as _VitcStakeEventWithdraw));

  @override
  _VitcStakeEventWithdraw get _value => super._value as _VitcStakeEventWithdraw;

  @override
  $Res call({
    Object? address = freezed,
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VitcStakeEventWithdraw(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
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

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$_VitcStakeEventWithdraw implements _VitcStakeEventWithdraw {
  const _$_VitcStakeEventWithdraw(
      {required this.address, required this.poolId, required this.amount});

  @override
  final Address address;
  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VitcStakeEvent.withdraw(address: $address, poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcStakeEventWithdraw &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.poolId, poolId) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(poolId),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$VitcStakeEventWithdrawCopyWith<_VitcStakeEventWithdraw> get copyWith =>
      __$VitcStakeEventWithdrawCopyWithImpl<_VitcStakeEventWithdraw>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return withdraw(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
  }) {
    return withdraw?.call(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) {
    if (withdraw != null) {
      return withdraw(address, poolId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcStakeEventPoolCreated value) poolCreated,
    required TResult Function(_VitcStakeEventDeposit value) deposit,
    required TResult Function(_VitcStakeEventWithdraw value) withdraw,
    required TResult Function(_VitcStakeEventClaim value) claim,
    required TResult Function(_VitcStakeEventUnknown value) unknown,
  }) {
    return withdraw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
  }) {
    return withdraw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (withdraw != null) {
      return withdraw(this);
    }
    return orElse();
  }
}

abstract class _VitcStakeEventWithdraw implements VitcStakeEvent {
  const factory _VitcStakeEventWithdraw(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) = _$_VitcStakeEventWithdraw;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$VitcStakeEventWithdrawCopyWith<_VitcStakeEventWithdraw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VitcStakeEventClaimCopyWith<$Res> {
  factory _$VitcStakeEventClaimCopyWith(_VitcStakeEventClaim value,
          $Res Function(_VitcStakeEventClaim) then) =
      __$VitcStakeEventClaimCopyWithImpl<$Res>;
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$VitcStakeEventClaimCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res>
    implements _$VitcStakeEventClaimCopyWith<$Res> {
  __$VitcStakeEventClaimCopyWithImpl(
      _VitcStakeEventClaim _value, $Res Function(_VitcStakeEventClaim) _then)
      : super(_value, (v) => _then(v as _VitcStakeEventClaim));

  @override
  _VitcStakeEventClaim get _value => super._value as _VitcStakeEventClaim;

  @override
  $Res call({
    Object? address = freezed,
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VitcStakeEventClaim(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
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

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$_VitcStakeEventClaim implements _VitcStakeEventClaim {
  const _$_VitcStakeEventClaim(
      {required this.address, required this.poolId, required this.amount});

  @override
  final Address address;
  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VitcStakeEvent.claim(address: $address, poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcStakeEventClaim &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.poolId, poolId) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(poolId),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$VitcStakeEventClaimCopyWith<_VitcStakeEventClaim> get copyWith =>
      __$VitcStakeEventClaimCopyWithImpl<_VitcStakeEventClaim>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return claim(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
  }) {
    return claim?.call(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) {
    if (claim != null) {
      return claim(address, poolId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcStakeEventPoolCreated value) poolCreated,
    required TResult Function(_VitcStakeEventDeposit value) deposit,
    required TResult Function(_VitcStakeEventWithdraw value) withdraw,
    required TResult Function(_VitcStakeEventClaim value) claim,
    required TResult Function(_VitcStakeEventUnknown value) unknown,
  }) {
    return claim(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
  }) {
    return claim?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (claim != null) {
      return claim(this);
    }
    return orElse();
  }
}

abstract class _VitcStakeEventClaim implements VitcStakeEvent {
  const factory _VitcStakeEventClaim(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) = _$_VitcStakeEventClaim;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$VitcStakeEventClaimCopyWith<_VitcStakeEventClaim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VitcStakeEventUnknownCopyWith<$Res> {
  factory _$VitcStakeEventUnknownCopyWith(_VitcStakeEventUnknown value,
          $Res Function(_VitcStakeEventUnknown) then) =
      __$VitcStakeEventUnknownCopyWithImpl<$Res>;
  $Res call({VmLog vmLog});

  $VmLogCopyWith<$Res> get vmLog;
}

/// @nodoc
class __$VitcStakeEventUnknownCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res>
    implements _$VitcStakeEventUnknownCopyWith<$Res> {
  __$VitcStakeEventUnknownCopyWithImpl(_VitcStakeEventUnknown _value,
      $Res Function(_VitcStakeEventUnknown) _then)
      : super(_value, (v) => _then(v as _VitcStakeEventUnknown));

  @override
  _VitcStakeEventUnknown get _value => super._value as _VitcStakeEventUnknown;

  @override
  $Res call({
    Object? vmLog = freezed,
  }) {
    return _then(_VitcStakeEventUnknown(
      vmLog: vmLog == freezed
          ? _value.vmLog
          : vmLog // ignore: cast_nullable_to_non_nullable
              as VmLog,
    ));
  }

  @override
  $VmLogCopyWith<$Res> get vmLog {
    return $VmLogCopyWith<$Res>(_value.vmLog, (value) {
      return _then(_value.copyWith(vmLog: value));
    });
  }
}

/// @nodoc

class _$_VitcStakeEventUnknown implements _VitcStakeEventUnknown {
  const _$_VitcStakeEventUnknown({required this.vmLog});

  @override
  final VmLog vmLog;

  @override
  String toString() {
    return 'VitcStakeEvent.unknown(vmLog: $vmLog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitcStakeEventUnknown &&
            const DeepCollectionEquality().equals(other.vmLog, vmLog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(vmLog));

  @JsonKey(ignore: true)
  @override
  _$VitcStakeEventUnknownCopyWith<_VitcStakeEventUnknown> get copyWith =>
      __$VitcStakeEventUnknownCopyWithImpl<_VitcStakeEventUnknown>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return unknown(vmLog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
  }) {
    return unknown?.call(vmLog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(vmLog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcStakeEventPoolCreated value) poolCreated,
    required TResult Function(_VitcStakeEventDeposit value) deposit,
    required TResult Function(_VitcStakeEventWithdraw value) withdraw,
    required TResult Function(_VitcStakeEventClaim value) claim,
    required TResult Function(_VitcStakeEventUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    TResult Function(_VitcStakeEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _VitcStakeEventUnknown implements VitcStakeEvent {
  const factory _VitcStakeEventUnknown({required VmLog vmLog}) =
      _$_VitcStakeEventUnknown;

  VmLog get vmLog;
  @JsonKey(ignore: true)
  _$VitcStakeEventUnknownCopyWith<_VitcStakeEventUnknown> get copyWith =>
      throw _privateConstructorUsedError;
}
