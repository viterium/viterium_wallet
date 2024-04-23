// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vitc_stake_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$VitcPoolInfoCopyWithImpl<$Res, VitcPoolInfo>;
  @useResult
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
class _$VitcPoolInfoCopyWithImpl<$Res, $Val extends VitcPoolInfo>
    implements $VitcPoolInfoCopyWith<$Res> {
  _$VitcPoolInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingToken = null,
    Object? rewardToken = null,
    Object? totalStakingBalance = null,
    Object? totalRewardBalance = null,
    Object? startBlock = null,
    Object? endBlock = null,
    Object? latestRewardBlock = null,
    Object? rewardPerPeriod = null,
    Object? rewardPerToken = null,
    Object? paidOut = null,
    Object? removedDecimals = null,
    Object? timelock = null,
    Object? poolId = null,
  }) {
    return _then(_value.copyWith(
      stakingToken: null == stakingToken
          ? _value.stakingToken
          : stakingToken // ignore: cast_nullable_to_non_nullable
              as Token,
      rewardToken: null == rewardToken
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as Token,
      totalStakingBalance: null == totalStakingBalance
          ? _value.totalStakingBalance
          : totalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalRewardBalance: null == totalRewardBalance
          ? _value.totalRewardBalance
          : totalRewardBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      startBlock: null == startBlock
          ? _value.startBlock
          : startBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      endBlock: null == endBlock
          ? _value.endBlock
          : endBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      latestRewardBlock: null == latestRewardBlock
          ? _value.latestRewardBlock
          : latestRewardBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerPeriod: null == rewardPerPeriod
          ? _value.rewardPerPeriod
          : rewardPerPeriod // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerToken: null == rewardPerToken
          ? _value.rewardPerToken
          : rewardPerToken // ignore: cast_nullable_to_non_nullable
              as BigInt,
      paidOut: null == paidOut
          ? _value.paidOut
          : paidOut // ignore: cast_nullable_to_non_nullable
              as BigInt,
      removedDecimals: null == removedDecimals
          ? _value.removedDecimals
          : removedDecimals // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timelock: null == timelock
          ? _value.timelock
          : timelock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get stakingToken {
    return $TokenCopyWith<$Res>(_value.stakingToken, (value) {
      return _then(_value.copyWith(stakingToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get rewardToken {
    return $TokenCopyWith<$Res>(_value.rewardToken, (value) {
      return _then(_value.copyWith(rewardToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VitcPoolInfoImplCopyWith<$Res>
    implements $VitcPoolInfoCopyWith<$Res> {
  factory _$$VitcPoolInfoImplCopyWith(
          _$VitcPoolInfoImpl value, $Res Function(_$VitcPoolInfoImpl) then) =
      __$$VitcPoolInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$VitcPoolInfoImplCopyWithImpl<$Res>
    extends _$VitcPoolInfoCopyWithImpl<$Res, _$VitcPoolInfoImpl>
    implements _$$VitcPoolInfoImplCopyWith<$Res> {
  __$$VitcPoolInfoImplCopyWithImpl(
      _$VitcPoolInfoImpl _value, $Res Function(_$VitcPoolInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingToken = null,
    Object? rewardToken = null,
    Object? totalStakingBalance = null,
    Object? totalRewardBalance = null,
    Object? startBlock = null,
    Object? endBlock = null,
    Object? latestRewardBlock = null,
    Object? rewardPerPeriod = null,
    Object? rewardPerToken = null,
    Object? paidOut = null,
    Object? removedDecimals = null,
    Object? timelock = null,
    Object? poolId = null,
  }) {
    return _then(_$VitcPoolInfoImpl(
      stakingToken: null == stakingToken
          ? _value.stakingToken
          : stakingToken // ignore: cast_nullable_to_non_nullable
              as Token,
      rewardToken: null == rewardToken
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as Token,
      totalStakingBalance: null == totalStakingBalance
          ? _value.totalStakingBalance
          : totalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalRewardBalance: null == totalRewardBalance
          ? _value.totalRewardBalance
          : totalRewardBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      startBlock: null == startBlock
          ? _value.startBlock
          : startBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      endBlock: null == endBlock
          ? _value.endBlock
          : endBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      latestRewardBlock: null == latestRewardBlock
          ? _value.latestRewardBlock
          : latestRewardBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerPeriod: null == rewardPerPeriod
          ? _value.rewardPerPeriod
          : rewardPerPeriod // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardPerToken: null == rewardPerToken
          ? _value.rewardPerToken
          : rewardPerToken // ignore: cast_nullable_to_non_nullable
              as BigInt,
      paidOut: null == paidOut
          ? _value.paidOut
          : paidOut // ignore: cast_nullable_to_non_nullable
              as BigInt,
      removedDecimals: null == removedDecimals
          ? _value.removedDecimals
          : removedDecimals // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timelock: null == timelock
          ? _value.timelock
          : timelock // ignore: cast_nullable_to_non_nullable
              as BigInt,
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$VitcPoolInfoImpl extends _VitcPoolInfo {
  const _$VitcPoolInfoImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcPoolInfoImpl &&
            (identical(other.stakingToken, stakingToken) ||
                other.stakingToken == stakingToken) &&
            (identical(other.rewardToken, rewardToken) ||
                other.rewardToken == rewardToken) &&
            (identical(other.totalStakingBalance, totalStakingBalance) ||
                other.totalStakingBalance == totalStakingBalance) &&
            (identical(other.totalRewardBalance, totalRewardBalance) ||
                other.totalRewardBalance == totalRewardBalance) &&
            (identical(other.startBlock, startBlock) ||
                other.startBlock == startBlock) &&
            (identical(other.endBlock, endBlock) ||
                other.endBlock == endBlock) &&
            (identical(other.latestRewardBlock, latestRewardBlock) ||
                other.latestRewardBlock == latestRewardBlock) &&
            (identical(other.rewardPerPeriod, rewardPerPeriod) ||
                other.rewardPerPeriod == rewardPerPeriod) &&
            (identical(other.rewardPerToken, rewardPerToken) ||
                other.rewardPerToken == rewardPerToken) &&
            (identical(other.paidOut, paidOut) || other.paidOut == paidOut) &&
            (identical(other.removedDecimals, removedDecimals) ||
                other.removedDecimals == removedDecimals) &&
            (identical(other.timelock, timelock) ||
                other.timelock == timelock) &&
            (identical(other.poolId, poolId) || other.poolId == poolId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stakingToken,
      rewardToken,
      totalStakingBalance,
      totalRewardBalance,
      startBlock,
      endBlock,
      latestRewardBlock,
      rewardPerPeriod,
      rewardPerToken,
      paidOut,
      removedDecimals,
      timelock,
      poolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcPoolInfoImplCopyWith<_$VitcPoolInfoImpl> get copyWith =>
      __$$VitcPoolInfoImplCopyWithImpl<_$VitcPoolInfoImpl>(this, _$identity);
}

abstract class _VitcPoolInfo extends VitcPoolInfo {
  const factory _VitcPoolInfo(
      {required final Token stakingToken,
      required final Token rewardToken,
      required final BigInt totalStakingBalance,
      required final BigInt totalRewardBalance,
      required final BigInt startBlock,
      required final BigInt endBlock,
      required final BigInt latestRewardBlock,
      required final BigInt rewardPerPeriod,
      required final BigInt rewardPerToken,
      required final BigInt paidOut,
      required final BigInt removedDecimals,
      required final BigInt timelock,
      required final BigInt poolId}) = _$VitcPoolInfoImpl;
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
  _$$VitcPoolInfoImplCopyWith<_$VitcPoolInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$VitcPoolInfoAllCopyWithImpl<$Res, VitcPoolInfoAll>;
  @useResult
  $Res call(
      {VitcPoolInfo poolInfo,
      TokenInfo stakingTokenInfo,
      TokenInfo rewardTokenInfo});

  $VitcPoolInfoCopyWith<$Res> get poolInfo;
  $TokenInfoCopyWith<$Res> get stakingTokenInfo;
  $TokenInfoCopyWith<$Res> get rewardTokenInfo;
}

/// @nodoc
class _$VitcPoolInfoAllCopyWithImpl<$Res, $Val extends VitcPoolInfoAll>
    implements $VitcPoolInfoAllCopyWith<$Res> {
  _$VitcPoolInfoAllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolInfo = null,
    Object? stakingTokenInfo = null,
    Object? rewardTokenInfo = null,
  }) {
    return _then(_value.copyWith(
      poolInfo: null == poolInfo
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VitcPoolInfo,
      stakingTokenInfo: null == stakingTokenInfo
          ? _value.stakingTokenInfo
          : stakingTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      rewardTokenInfo: null == rewardTokenInfo
          ? _value.rewardTokenInfo
          : rewardTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VitcPoolInfoCopyWith<$Res> get poolInfo {
    return $VitcPoolInfoCopyWith<$Res>(_value.poolInfo, (value) {
      return _then(_value.copyWith(poolInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get stakingTokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.stakingTokenInfo, (value) {
      return _then(_value.copyWith(stakingTokenInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get rewardTokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.rewardTokenInfo, (value) {
      return _then(_value.copyWith(rewardTokenInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VitcPoolInfoAllImplCopyWith<$Res>
    implements $VitcPoolInfoAllCopyWith<$Res> {
  factory _$$VitcPoolInfoAllImplCopyWith(_$VitcPoolInfoAllImpl value,
          $Res Function(_$VitcPoolInfoAllImpl) then) =
      __$$VitcPoolInfoAllImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$VitcPoolInfoAllImplCopyWithImpl<$Res>
    extends _$VitcPoolInfoAllCopyWithImpl<$Res, _$VitcPoolInfoAllImpl>
    implements _$$VitcPoolInfoAllImplCopyWith<$Res> {
  __$$VitcPoolInfoAllImplCopyWithImpl(
      _$VitcPoolInfoAllImpl _value, $Res Function(_$VitcPoolInfoAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolInfo = null,
    Object? stakingTokenInfo = null,
    Object? rewardTokenInfo = null,
  }) {
    return _then(_$VitcPoolInfoAllImpl(
      poolInfo: null == poolInfo
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VitcPoolInfo,
      stakingTokenInfo: null == stakingTokenInfo
          ? _value.stakingTokenInfo
          : stakingTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      rewardTokenInfo: null == rewardTokenInfo
          ? _value.rewardTokenInfo
          : rewardTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }
}

/// @nodoc

class _$VitcPoolInfoAllImpl extends _VitcPoolInfoAll {
  const _$VitcPoolInfoAllImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcPoolInfoAllImpl &&
            (identical(other.poolInfo, poolInfo) ||
                other.poolInfo == poolInfo) &&
            (identical(other.stakingTokenInfo, stakingTokenInfo) ||
                other.stakingTokenInfo == stakingTokenInfo) &&
            (identical(other.rewardTokenInfo, rewardTokenInfo) ||
                other.rewardTokenInfo == rewardTokenInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, poolInfo, stakingTokenInfo, rewardTokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcPoolInfoAllImplCopyWith<_$VitcPoolInfoAllImpl> get copyWith =>
      __$$VitcPoolInfoAllImplCopyWithImpl<_$VitcPoolInfoAllImpl>(
          this, _$identity);
}

abstract class _VitcPoolInfoAll extends VitcPoolInfoAll {
  const factory _VitcPoolInfoAll(
      {required final VitcPoolInfo poolInfo,
      required final TokenInfo stakingTokenInfo,
      required final TokenInfo rewardTokenInfo}) = _$VitcPoolInfoAllImpl;
  const _VitcPoolInfoAll._() : super._();

  @override
  VitcPoolInfo get poolInfo;
  @override
  TokenInfo get stakingTokenInfo;
  @override
  TokenInfo get rewardTokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$VitcPoolInfoAllImplCopyWith<_$VitcPoolInfoAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$VitcStakeUserInfoCopyWithImpl<$Res, VitcStakeUserInfo>;
  @useResult
  $Res call({BigInt stakingBalance, BigInt rewardDebt, BigInt depositBlock});
}

/// @nodoc
class _$VitcStakeUserInfoCopyWithImpl<$Res, $Val extends VitcStakeUserInfo>
    implements $VitcStakeUserInfoCopyWith<$Res> {
  _$VitcStakeUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingBalance = null,
    Object? rewardDebt = null,
    Object? depositBlock = null,
  }) {
    return _then(_value.copyWith(
      stakingBalance: null == stakingBalance
          ? _value.stakingBalance
          : stakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardDebt: null == rewardDebt
          ? _value.rewardDebt
          : rewardDebt // ignore: cast_nullable_to_non_nullable
              as BigInt,
      depositBlock: null == depositBlock
          ? _value.depositBlock
          : depositBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitcStakeUserInfoImplCopyWith<$Res>
    implements $VitcStakeUserInfoCopyWith<$Res> {
  factory _$$VitcStakeUserInfoImplCopyWith(_$VitcStakeUserInfoImpl value,
          $Res Function(_$VitcStakeUserInfoImpl) then) =
      __$$VitcStakeUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt stakingBalance, BigInt rewardDebt, BigInt depositBlock});
}

/// @nodoc
class __$$VitcStakeUserInfoImplCopyWithImpl<$Res>
    extends _$VitcStakeUserInfoCopyWithImpl<$Res, _$VitcStakeUserInfoImpl>
    implements _$$VitcStakeUserInfoImplCopyWith<$Res> {
  __$$VitcStakeUserInfoImplCopyWithImpl(_$VitcStakeUserInfoImpl _value,
      $Res Function(_$VitcStakeUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingBalance = null,
    Object? rewardDebt = null,
    Object? depositBlock = null,
  }) {
    return _then(_$VitcStakeUserInfoImpl(
      stakingBalance: null == stakingBalance
          ? _value.stakingBalance
          : stakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardDebt: null == rewardDebt
          ? _value.rewardDebt
          : rewardDebt // ignore: cast_nullable_to_non_nullable
              as BigInt,
      depositBlock: null == depositBlock
          ? _value.depositBlock
          : depositBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$VitcStakeUserInfoImpl implements _VitcStakeUserInfo {
  const _$VitcStakeUserInfoImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcStakeUserInfoImpl &&
            (identical(other.stakingBalance, stakingBalance) ||
                other.stakingBalance == stakingBalance) &&
            (identical(other.rewardDebt, rewardDebt) ||
                other.rewardDebt == rewardDebt) &&
            (identical(other.depositBlock, depositBlock) ||
                other.depositBlock == depositBlock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stakingBalance, rewardDebt, depositBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcStakeUserInfoImplCopyWith<_$VitcStakeUserInfoImpl> get copyWith =>
      __$$VitcStakeUserInfoImplCopyWithImpl<_$VitcStakeUserInfoImpl>(
          this, _$identity);
}

abstract class _VitcStakeUserInfo implements VitcStakeUserInfo {
  const factory _VitcStakeUserInfo(
      {required final BigInt stakingBalance,
      required final BigInt rewardDebt,
      required final BigInt depositBlock}) = _$VitcStakeUserInfoImpl;

  @override
  BigInt get stakingBalance;
  @override
  BigInt get rewardDebt;
  @override
  BigInt get depositBlock;
  @override
  @JsonKey(ignore: true)
  _$$VitcStakeUserInfoImplCopyWith<_$VitcStakeUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VitcStakeEvent {
  BigInt get poolId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VitcStakeEventPoolCreated value) poolCreated,
    required TResult Function(_VitcStakeEventDeposit value) deposit,
    required TResult Function(_VitcStakeEventWithdraw value) withdraw,
    required TResult Function(_VitcStakeEventClaim value) claim,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult? Function(_VitcStakeEventDeposit value)? deposit,
    TResult? Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult? Function(_VitcStakeEventClaim value)? claim,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult Function(_VitcStakeEventDeposit value)? deposit,
    TResult Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult Function(_VitcStakeEventClaim value)? claim,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitcStakeEventCopyWith<VitcStakeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitcStakeEventCopyWith<$Res> {
  factory $VitcStakeEventCopyWith(
          VitcStakeEvent value, $Res Function(VitcStakeEvent) then) =
      _$VitcStakeEventCopyWithImpl<$Res, VitcStakeEvent>;
  @useResult
  $Res call({BigInt poolId});
}

/// @nodoc
class _$VitcStakeEventCopyWithImpl<$Res, $Val extends VitcStakeEvent>
    implements $VitcStakeEventCopyWith<$Res> {
  _$VitcStakeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolId = null,
  }) {
    return _then(_value.copyWith(
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitcStakeEventPoolCreatedImplCopyWith<$Res>
    implements $VitcStakeEventCopyWith<$Res> {
  factory _$$VitcStakeEventPoolCreatedImplCopyWith(
          _$VitcStakeEventPoolCreatedImpl value,
          $Res Function(_$VitcStakeEventPoolCreatedImpl) then) =
      __$$VitcStakeEventPoolCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt poolId});
}

/// @nodoc
class __$$VitcStakeEventPoolCreatedImplCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res, _$VitcStakeEventPoolCreatedImpl>
    implements _$$VitcStakeEventPoolCreatedImplCopyWith<$Res> {
  __$$VitcStakeEventPoolCreatedImplCopyWithImpl(
      _$VitcStakeEventPoolCreatedImpl _value,
      $Res Function(_$VitcStakeEventPoolCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolId = null,
  }) {
    return _then(_$VitcStakeEventPoolCreatedImpl(
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$VitcStakeEventPoolCreatedImpl implements _VitcStakeEventPoolCreated {
  const _$VitcStakeEventPoolCreatedImpl({required this.poolId});

  @override
  final BigInt poolId;

  @override
  String toString() {
    return 'VitcStakeEvent.poolCreated(poolId: $poolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcStakeEventPoolCreatedImpl &&
            (identical(other.poolId, poolId) || other.poolId == poolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcStakeEventPoolCreatedImplCopyWith<_$VitcStakeEventPoolCreatedImpl>
      get copyWith => __$$VitcStakeEventPoolCreatedImplCopyWithImpl<
          _$VitcStakeEventPoolCreatedImpl>(this, _$identity);

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
  }) {
    return poolCreated(poolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
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
  }) {
    return poolCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult? Function(_VitcStakeEventDeposit value)? deposit,
    TResult? Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult? Function(_VitcStakeEventClaim value)? claim,
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
    required TResult orElse(),
  }) {
    if (poolCreated != null) {
      return poolCreated(this);
    }
    return orElse();
  }
}

abstract class _VitcStakeEventPoolCreated implements VitcStakeEvent {
  const factory _VitcStakeEventPoolCreated({required final BigInt poolId}) =
      _$VitcStakeEventPoolCreatedImpl;

  @override
  BigInt get poolId;
  @override
  @JsonKey(ignore: true)
  _$$VitcStakeEventPoolCreatedImplCopyWith<_$VitcStakeEventPoolCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitcStakeEventDepositImplCopyWith<$Res>
    implements $VitcStakeEventCopyWith<$Res> {
  factory _$$VitcStakeEventDepositImplCopyWith(
          _$VitcStakeEventDepositImpl value,
          $Res Function(_$VitcStakeEventDepositImpl) then) =
      __$$VitcStakeEventDepositImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$VitcStakeEventDepositImplCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res, _$VitcStakeEventDepositImpl>
    implements _$$VitcStakeEventDepositImplCopyWith<$Res> {
  __$$VitcStakeEventDepositImplCopyWithImpl(_$VitcStakeEventDepositImpl _value,
      $Res Function(_$VitcStakeEventDepositImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$VitcStakeEventDepositImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$VitcStakeEventDepositImpl implements _VitcStakeEventDeposit {
  const _$VitcStakeEventDepositImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcStakeEventDepositImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcStakeEventDepositImplCopyWith<_$VitcStakeEventDepositImpl>
      get copyWith => __$$VitcStakeEventDepositImplCopyWithImpl<
          _$VitcStakeEventDepositImpl>(this, _$identity);

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
  }) {
    return deposit(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
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
  }) {
    return deposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult? Function(_VitcStakeEventDeposit value)? deposit,
    TResult? Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult? Function(_VitcStakeEventClaim value)? claim,
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
      {required final Address address,
      required final BigInt poolId,
      required final BigInt amount}) = _$VitcStakeEventDepositImpl;

  Address get address;
  @override
  BigInt get poolId;
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$VitcStakeEventDepositImplCopyWith<_$VitcStakeEventDepositImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitcStakeEventWithdrawImplCopyWith<$Res>
    implements $VitcStakeEventCopyWith<$Res> {
  factory _$$VitcStakeEventWithdrawImplCopyWith(
          _$VitcStakeEventWithdrawImpl value,
          $Res Function(_$VitcStakeEventWithdrawImpl) then) =
      __$$VitcStakeEventWithdrawImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$VitcStakeEventWithdrawImplCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res, _$VitcStakeEventWithdrawImpl>
    implements _$$VitcStakeEventWithdrawImplCopyWith<$Res> {
  __$$VitcStakeEventWithdrawImplCopyWithImpl(
      _$VitcStakeEventWithdrawImpl _value,
      $Res Function(_$VitcStakeEventWithdrawImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$VitcStakeEventWithdrawImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$VitcStakeEventWithdrawImpl implements _VitcStakeEventWithdraw {
  const _$VitcStakeEventWithdrawImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcStakeEventWithdrawImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcStakeEventWithdrawImplCopyWith<_$VitcStakeEventWithdrawImpl>
      get copyWith => __$$VitcStakeEventWithdrawImplCopyWithImpl<
          _$VitcStakeEventWithdrawImpl>(this, _$identity);

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
  }) {
    return withdraw(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
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
  }) {
    return withdraw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult? Function(_VitcStakeEventDeposit value)? deposit,
    TResult? Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult? Function(_VitcStakeEventClaim value)? claim,
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
      {required final Address address,
      required final BigInt poolId,
      required final BigInt amount}) = _$VitcStakeEventWithdrawImpl;

  Address get address;
  @override
  BigInt get poolId;
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$VitcStakeEventWithdrawImplCopyWith<_$VitcStakeEventWithdrawImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VitcStakeEventClaimImplCopyWith<$Res>
    implements $VitcStakeEventCopyWith<$Res> {
  factory _$$VitcStakeEventClaimImplCopyWith(_$VitcStakeEventClaimImpl value,
          $Res Function(_$VitcStakeEventClaimImpl) then) =
      __$$VitcStakeEventClaimImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$VitcStakeEventClaimImplCopyWithImpl<$Res>
    extends _$VitcStakeEventCopyWithImpl<$Res, _$VitcStakeEventClaimImpl>
    implements _$$VitcStakeEventClaimImplCopyWith<$Res> {
  __$$VitcStakeEventClaimImplCopyWithImpl(_$VitcStakeEventClaimImpl _value,
      $Res Function(_$VitcStakeEventClaimImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$VitcStakeEventClaimImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$VitcStakeEventClaimImpl implements _VitcStakeEventClaim {
  const _$VitcStakeEventClaimImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitcStakeEventClaimImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitcStakeEventClaimImplCopyWith<_$VitcStakeEventClaimImpl> get copyWith =>
      __$$VitcStakeEventClaimImplCopyWithImpl<_$VitcStakeEventClaimImpl>(
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
  }) {
    return claim(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
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
  }) {
    return claim(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VitcStakeEventPoolCreated value)? poolCreated,
    TResult? Function(_VitcStakeEventDeposit value)? deposit,
    TResult? Function(_VitcStakeEventWithdraw value)? withdraw,
    TResult? Function(_VitcStakeEventClaim value)? claim,
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
      {required final Address address,
      required final BigInt poolId,
      required final BigInt amount}) = _$VitcStakeEventClaimImpl;

  Address get address;
  @override
  BigInt get poolId;
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$VitcStakeEventClaimImplCopyWith<_$VitcStakeEventClaimImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
