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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VivaPoolInfo {
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
  BigInt get poolId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaPoolInfoCopyWith<VivaPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaPoolInfoCopyWith<$Res> {
  factory $VivaPoolInfoCopyWith(
          VivaPoolInfo value, $Res Function(VivaPoolInfo) then) =
      _$VivaPoolInfoCopyWithImpl<$Res, VivaPoolInfo>;
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
      BigInt poolId});

  $TokenCopyWith<$Res> get stakingToken;
  $TokenCopyWith<$Res> get rewardToken;
}

/// @nodoc
class _$VivaPoolInfoCopyWithImpl<$Res, $Val extends VivaPoolInfo>
    implements $VivaPoolInfoCopyWith<$Res> {
  _$VivaPoolInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$_VivaPoolInfoCopyWith<$Res>
    implements $VivaPoolInfoCopyWith<$Res> {
  factory _$$_VivaPoolInfoCopyWith(
          _$_VivaPoolInfo value, $Res Function(_$_VivaPoolInfo) then) =
      __$$_VivaPoolInfoCopyWithImpl<$Res>;
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
      BigInt poolId});

  @override
  $TokenCopyWith<$Res> get stakingToken;
  @override
  $TokenCopyWith<$Res> get rewardToken;
}

/// @nodoc
class __$$_VivaPoolInfoCopyWithImpl<$Res>
    extends _$VivaPoolInfoCopyWithImpl<$Res, _$_VivaPoolInfo>
    implements _$$_VivaPoolInfoCopyWith<$Res> {
  __$$_VivaPoolInfoCopyWithImpl(
      _$_VivaPoolInfo _value, $Res Function(_$_VivaPoolInfo) _then)
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
    Object? poolId = null,
  }) {
    return _then(_$_VivaPoolInfo(
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
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VivaPoolInfo extends _VivaPoolInfo {
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
  final BigInt poolId;

  @override
  String toString() {
    return 'VivaPoolInfo(stakingToken: $stakingToken, rewardToken: $rewardToken, totalStakingBalance: $totalStakingBalance, totalRewardBalance: $totalRewardBalance, startBlock: $startBlock, endBlock: $endBlock, latestRewardBlock: $latestRewardBlock, rewardPerPeriod: $rewardPerPeriod, rewardPerToken: $rewardPerToken, paidOut: $paidOut, poolId: $poolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaPoolInfo &&
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
      poolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaPoolInfoCopyWith<_$_VivaPoolInfo> get copyWith =>
      __$$_VivaPoolInfoCopyWithImpl<_$_VivaPoolInfo>(this, _$identity);
}

abstract class _VivaPoolInfo extends VivaPoolInfo {
  const factory _VivaPoolInfo(
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
      required final BigInt poolId}) = _$_VivaPoolInfo;
  const _VivaPoolInfo._() : super._();

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
  BigInt get poolId;
  @override
  @JsonKey(ignore: true)
  _$$_VivaPoolInfoCopyWith<_$_VivaPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VivaPoolInfoAll {
  VivaPoolInfo get poolInfo => throw _privateConstructorUsedError;
  VivaExtraPoolInfo get extra => throw _privateConstructorUsedError;
  TokenInfo get stakingTokenInfo => throw _privateConstructorUsedError;
  TokenInfo get rewardTokenInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaPoolInfoAllCopyWith<VivaPoolInfoAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaPoolInfoAllCopyWith<$Res> {
  factory $VivaPoolInfoAllCopyWith(
          VivaPoolInfoAll value, $Res Function(VivaPoolInfoAll) then) =
      _$VivaPoolInfoAllCopyWithImpl<$Res, VivaPoolInfoAll>;
  @useResult
  $Res call(
      {VivaPoolInfo poolInfo,
      VivaExtraPoolInfo extra,
      TokenInfo stakingTokenInfo,
      TokenInfo rewardTokenInfo});

  $VivaPoolInfoCopyWith<$Res> get poolInfo;
  $VivaExtraPoolInfoCopyWith<$Res> get extra;
  $TokenInfoCopyWith<$Res> get stakingTokenInfo;
  $TokenInfoCopyWith<$Res> get rewardTokenInfo;
}

/// @nodoc
class _$VivaPoolInfoAllCopyWithImpl<$Res, $Val extends VivaPoolInfoAll>
    implements $VivaPoolInfoAllCopyWith<$Res> {
  _$VivaPoolInfoAllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolInfo = null,
    Object? extra = null,
    Object? stakingTokenInfo = null,
    Object? rewardTokenInfo = null,
  }) {
    return _then(_value.copyWith(
      poolInfo: null == poolInfo
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VivaPoolInfo,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as VivaExtraPoolInfo,
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
  $VivaPoolInfoCopyWith<$Res> get poolInfo {
    return $VivaPoolInfoCopyWith<$Res>(_value.poolInfo, (value) {
      return _then(_value.copyWith(poolInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VivaExtraPoolInfoCopyWith<$Res> get extra {
    return $VivaExtraPoolInfoCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
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
abstract class _$$_VivaPoolInfoAllCopyWith<$Res>
    implements $VivaPoolInfoAllCopyWith<$Res> {
  factory _$$_VivaPoolInfoAllCopyWith(
          _$_VivaPoolInfoAll value, $Res Function(_$_VivaPoolInfoAll) then) =
      __$$_VivaPoolInfoAllCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VivaPoolInfo poolInfo,
      VivaExtraPoolInfo extra,
      TokenInfo stakingTokenInfo,
      TokenInfo rewardTokenInfo});

  @override
  $VivaPoolInfoCopyWith<$Res> get poolInfo;
  @override
  $VivaExtraPoolInfoCopyWith<$Res> get extra;
  @override
  $TokenInfoCopyWith<$Res> get stakingTokenInfo;
  @override
  $TokenInfoCopyWith<$Res> get rewardTokenInfo;
}

/// @nodoc
class __$$_VivaPoolInfoAllCopyWithImpl<$Res>
    extends _$VivaPoolInfoAllCopyWithImpl<$Res, _$_VivaPoolInfoAll>
    implements _$$_VivaPoolInfoAllCopyWith<$Res> {
  __$$_VivaPoolInfoAllCopyWithImpl(
      _$_VivaPoolInfoAll _value, $Res Function(_$_VivaPoolInfoAll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolInfo = null,
    Object? extra = null,
    Object? stakingTokenInfo = null,
    Object? rewardTokenInfo = null,
  }) {
    return _then(_$_VivaPoolInfoAll(
      poolInfo: null == poolInfo
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VivaPoolInfo,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as VivaExtraPoolInfo,
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

class _$_VivaPoolInfoAll extends _VivaPoolInfoAll {
  const _$_VivaPoolInfoAll(
      {required this.poolInfo,
      required this.extra,
      required this.stakingTokenInfo,
      required this.rewardTokenInfo})
      : super._();

  @override
  final VivaPoolInfo poolInfo;
  @override
  final VivaExtraPoolInfo extra;
  @override
  final TokenInfo stakingTokenInfo;
  @override
  final TokenInfo rewardTokenInfo;

  @override
  String toString() {
    return 'VivaPoolInfoAll(poolInfo: $poolInfo, extra: $extra, stakingTokenInfo: $stakingTokenInfo, rewardTokenInfo: $rewardTokenInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaPoolInfoAll &&
            (identical(other.poolInfo, poolInfo) ||
                other.poolInfo == poolInfo) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.stakingTokenInfo, stakingTokenInfo) ||
                other.stakingTokenInfo == stakingTokenInfo) &&
            (identical(other.rewardTokenInfo, rewardTokenInfo) ||
                other.rewardTokenInfo == rewardTokenInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, poolInfo, extra, stakingTokenInfo, rewardTokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaPoolInfoAllCopyWith<_$_VivaPoolInfoAll> get copyWith =>
      __$$_VivaPoolInfoAllCopyWithImpl<_$_VivaPoolInfoAll>(this, _$identity);
}

abstract class _VivaPoolInfoAll extends VivaPoolInfoAll {
  const factory _VivaPoolInfoAll(
      {required final VivaPoolInfo poolInfo,
      required final VivaExtraPoolInfo extra,
      required final TokenInfo stakingTokenInfo,
      required final TokenInfo rewardTokenInfo}) = _$_VivaPoolInfoAll;
  const _VivaPoolInfoAll._() : super._();

  @override
  VivaPoolInfo get poolInfo;
  @override
  VivaExtraPoolInfo get extra;
  @override
  TokenInfo get stakingTokenInfo;
  @override
  TokenInfo get rewardTokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$_VivaPoolInfoAllCopyWith<_$_VivaPoolInfoAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VivaExtraPoolInfo {
  BigInt get minimumDeposit => throw _privateConstructorUsedError;
  BigInt get maximumTotalStakingBalance => throw _privateConstructorUsedError;
  BigInt get lockTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaExtraPoolInfoCopyWith<VivaExtraPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaExtraPoolInfoCopyWith<$Res> {
  factory $VivaExtraPoolInfoCopyWith(
          VivaExtraPoolInfo value, $Res Function(VivaExtraPoolInfo) then) =
      _$VivaExtraPoolInfoCopyWithImpl<$Res, VivaExtraPoolInfo>;
  @useResult
  $Res call(
      {BigInt minimumDeposit,
      BigInt maximumTotalStakingBalance,
      BigInt lockTime});
}

/// @nodoc
class _$VivaExtraPoolInfoCopyWithImpl<$Res, $Val extends VivaExtraPoolInfo>
    implements $VivaExtraPoolInfoCopyWith<$Res> {
  _$VivaExtraPoolInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimumDeposit = null,
    Object? maximumTotalStakingBalance = null,
    Object? lockTime = null,
  }) {
    return _then(_value.copyWith(
      minimumDeposit: null == minimumDeposit
          ? _value.minimumDeposit
          : minimumDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
      maximumTotalStakingBalance: null == maximumTotalStakingBalance
          ? _value.maximumTotalStakingBalance
          : maximumTotalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockTime: null == lockTime
          ? _value.lockTime
          : lockTime // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VivaExtraPoolInfoCopyWith<$Res>
    implements $VivaExtraPoolInfoCopyWith<$Res> {
  factory _$$_VivaExtraPoolInfoCopyWith(_$_VivaExtraPoolInfo value,
          $Res Function(_$_VivaExtraPoolInfo) then) =
      __$$_VivaExtraPoolInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt minimumDeposit,
      BigInt maximumTotalStakingBalance,
      BigInt lockTime});
}

/// @nodoc
class __$$_VivaExtraPoolInfoCopyWithImpl<$Res>
    extends _$VivaExtraPoolInfoCopyWithImpl<$Res, _$_VivaExtraPoolInfo>
    implements _$$_VivaExtraPoolInfoCopyWith<$Res> {
  __$$_VivaExtraPoolInfoCopyWithImpl(
      _$_VivaExtraPoolInfo _value, $Res Function(_$_VivaExtraPoolInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimumDeposit = null,
    Object? maximumTotalStakingBalance = null,
    Object? lockTime = null,
  }) {
    return _then(_$_VivaExtraPoolInfo(
      minimumDeposit: null == minimumDeposit
          ? _value.minimumDeposit
          : minimumDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
      maximumTotalStakingBalance: null == maximumTotalStakingBalance
          ? _value.maximumTotalStakingBalance
          : maximumTotalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockTime: null == lockTime
          ? _value.lockTime
          : lockTime // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VivaExtraPoolInfo implements _VivaExtraPoolInfo {
  const _$_VivaExtraPoolInfo(
      {required this.minimumDeposit,
      required this.maximumTotalStakingBalance,
      required this.lockTime});

  @override
  final BigInt minimumDeposit;
  @override
  final BigInt maximumTotalStakingBalance;
  @override
  final BigInt lockTime;

  @override
  String toString() {
    return 'VivaExtraPoolInfo(minimumDeposit: $minimumDeposit, maximumTotalStakingBalance: $maximumTotalStakingBalance, lockTime: $lockTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaExtraPoolInfo &&
            (identical(other.minimumDeposit, minimumDeposit) ||
                other.minimumDeposit == minimumDeposit) &&
            (identical(other.maximumTotalStakingBalance,
                    maximumTotalStakingBalance) ||
                other.maximumTotalStakingBalance ==
                    maximumTotalStakingBalance) &&
            (identical(other.lockTime, lockTime) ||
                other.lockTime == lockTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, minimumDeposit, maximumTotalStakingBalance, lockTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaExtraPoolInfoCopyWith<_$_VivaExtraPoolInfo> get copyWith =>
      __$$_VivaExtraPoolInfoCopyWithImpl<_$_VivaExtraPoolInfo>(
          this, _$identity);
}

abstract class _VivaExtraPoolInfo implements VivaExtraPoolInfo {
  const factory _VivaExtraPoolInfo(
      {required final BigInt minimumDeposit,
      required final BigInt maximumTotalStakingBalance,
      required final BigInt lockTime}) = _$_VivaExtraPoolInfo;

  @override
  BigInt get minimumDeposit;
  @override
  BigInt get maximumTotalStakingBalance;
  @override
  BigInt get lockTime;
  @override
  @JsonKey(ignore: true)
  _$$_VivaExtraPoolInfoCopyWith<_$_VivaExtraPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$VivaUserInfoCopyWithImpl<$Res, VivaUserInfo>;
  @useResult
  $Res call({BigInt stakingBalance, BigInt rewardDebt});
}

/// @nodoc
class _$VivaUserInfoCopyWithImpl<$Res, $Val extends VivaUserInfo>
    implements $VivaUserInfoCopyWith<$Res> {
  _$VivaUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingBalance = null,
    Object? rewardDebt = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VivaUserInfoCopyWith<$Res>
    implements $VivaUserInfoCopyWith<$Res> {
  factory _$$_VivaUserInfoCopyWith(
          _$_VivaUserInfo value, $Res Function(_$_VivaUserInfo) then) =
      __$$_VivaUserInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt stakingBalance, BigInt rewardDebt});
}

/// @nodoc
class __$$_VivaUserInfoCopyWithImpl<$Res>
    extends _$VivaUserInfoCopyWithImpl<$Res, _$_VivaUserInfo>
    implements _$$_VivaUserInfoCopyWith<$Res> {
  __$$_VivaUserInfoCopyWithImpl(
      _$_VivaUserInfo _value, $Res Function(_$_VivaUserInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingBalance = null,
    Object? rewardDebt = null,
  }) {
    return _then(_$_VivaUserInfo(
      stakingBalance: null == stakingBalance
          ? _value.stakingBalance
          : stakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardDebt: null == rewardDebt
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
            other is _$_VivaUserInfo &&
            (identical(other.stakingBalance, stakingBalance) ||
                other.stakingBalance == stakingBalance) &&
            (identical(other.rewardDebt, rewardDebt) ||
                other.rewardDebt == rewardDebt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakingBalance, rewardDebt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaUserInfoCopyWith<_$_VivaUserInfo> get copyWith =>
      __$$_VivaUserInfoCopyWithImpl<_$_VivaUserInfo>(this, _$identity);
}

abstract class _VivaUserInfo implements VivaUserInfo {
  const factory _VivaUserInfo(
      {required final BigInt stakingBalance,
      required final BigInt rewardDebt}) = _$_VivaUserInfo;

  @override
  BigInt get stakingBalance;
  @override
  BigInt get rewardDebt;
  @override
  @JsonKey(ignore: true)
  _$$_VivaUserInfoCopyWith<_$_VivaUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VivaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        emergencyWithdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult? Function(VmLog vmLog)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VivaEventPoolCreated value) poolCreated,
    required TResult Function(_VivaEventDeposit value) deposit,
    required TResult Function(_VivaEventWithdraw value) withdraw,
    required TResult Function(_VivaEventEmergencyWithdraw value)
        emergencyWithdraw,
    required TResult Function(_VivaEventClaim value) claim,
    required TResult Function(_VivaEventUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
    TResult? Function(_VivaEventUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaEventCopyWith<$Res> {
  factory $VivaEventCopyWith(VivaEvent value, $Res Function(VivaEvent) then) =
      _$VivaEventCopyWithImpl<$Res, VivaEvent>;
}

/// @nodoc
class _$VivaEventCopyWithImpl<$Res, $Val extends VivaEvent>
    implements $VivaEventCopyWith<$Res> {
  _$VivaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VivaEventPoolCreatedCopyWith<$Res> {
  factory _$$_VivaEventPoolCreatedCopyWith(_$_VivaEventPoolCreated value,
          $Res Function(_$_VivaEventPoolCreated) then) =
      __$$_VivaEventPoolCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt poolId});
}

/// @nodoc
class __$$_VivaEventPoolCreatedCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$_VivaEventPoolCreated>
    implements _$$_VivaEventPoolCreatedCopyWith<$Res> {
  __$$_VivaEventPoolCreatedCopyWithImpl(_$_VivaEventPoolCreated _value,
      $Res Function(_$_VivaEventPoolCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolId = null,
  }) {
    return _then(_$_VivaEventPoolCreated(
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$_VivaEventPoolCreated implements _VivaEventPoolCreated {
  const _$_VivaEventPoolCreated({required this.poolId});

  @override
  final BigInt poolId;

  @override
  String toString() {
    return 'VivaEvent.poolCreated(poolId: $poolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaEventPoolCreated &&
            (identical(other.poolId, poolId) || other.poolId == poolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaEventPoolCreatedCopyWith<_$_VivaEventPoolCreated> get copyWith =>
      __$$_VivaEventPoolCreatedCopyWithImpl<_$_VivaEventPoolCreated>(
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
        emergencyWithdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return poolCreated(poolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult? Function(VmLog vmLog)? unknown,
  }) {
    return poolCreated?.call(poolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    required TResult Function(_VivaEventPoolCreated value) poolCreated,
    required TResult Function(_VivaEventDeposit value) deposit,
    required TResult Function(_VivaEventWithdraw value) withdraw,
    required TResult Function(_VivaEventEmergencyWithdraw value)
        emergencyWithdraw,
    required TResult Function(_VivaEventClaim value) claim,
    required TResult Function(_VivaEventUnknown value) unknown,
  }) {
    return poolCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
    TResult? Function(_VivaEventUnknown value)? unknown,
  }) {
    return poolCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (poolCreated != null) {
      return poolCreated(this);
    }
    return orElse();
  }
}

abstract class _VivaEventPoolCreated implements VivaEvent {
  const factory _VivaEventPoolCreated({required final BigInt poolId}) =
      _$_VivaEventPoolCreated;

  BigInt get poolId;
  @JsonKey(ignore: true)
  _$$_VivaEventPoolCreatedCopyWith<_$_VivaEventPoolCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VivaEventDepositCopyWith<$Res> {
  factory _$$_VivaEventDepositCopyWith(
          _$_VivaEventDeposit value, $Res Function(_$_VivaEventDeposit) then) =
      __$$_VivaEventDepositCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_VivaEventDepositCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$_VivaEventDeposit>
    implements _$$_VivaEventDepositCopyWith<$Res> {
  __$$_VivaEventDepositCopyWithImpl(
      _$_VivaEventDeposit _value, $Res Function(_$_VivaEventDeposit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$_VivaEventDeposit(
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

class _$_VivaEventDeposit implements _VivaEventDeposit {
  const _$_VivaEventDeposit(
      {required this.address, required this.poolId, required this.amount});

  @override
  final Address address;
  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VivaEvent.deposit(address: $address, poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaEventDeposit &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaEventDepositCopyWith<_$_VivaEventDeposit> get copyWith =>
      __$$_VivaEventDepositCopyWithImpl<_$_VivaEventDeposit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        emergencyWithdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return deposit(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult? Function(VmLog vmLog)? unknown,
  }) {
    return deposit?.call(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    required TResult Function(_VivaEventPoolCreated value) poolCreated,
    required TResult Function(_VivaEventDeposit value) deposit,
    required TResult Function(_VivaEventWithdraw value) withdraw,
    required TResult Function(_VivaEventEmergencyWithdraw value)
        emergencyWithdraw,
    required TResult Function(_VivaEventClaim value) claim,
    required TResult Function(_VivaEventUnknown value) unknown,
  }) {
    return deposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
    TResult? Function(_VivaEventUnknown value)? unknown,
  }) {
    return deposit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (deposit != null) {
      return deposit(this);
    }
    return orElse();
  }
}

abstract class _VivaEventDeposit implements VivaEvent {
  const factory _VivaEventDeposit(
      {required final Address address,
      required final BigInt poolId,
      required final BigInt amount}) = _$_VivaEventDeposit;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$$_VivaEventDepositCopyWith<_$_VivaEventDeposit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VivaEventWithdrawCopyWith<$Res> {
  factory _$$_VivaEventWithdrawCopyWith(_$_VivaEventWithdraw value,
          $Res Function(_$_VivaEventWithdraw) then) =
      __$$_VivaEventWithdrawCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_VivaEventWithdrawCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$_VivaEventWithdraw>
    implements _$$_VivaEventWithdrawCopyWith<$Res> {
  __$$_VivaEventWithdrawCopyWithImpl(
      _$_VivaEventWithdraw _value, $Res Function(_$_VivaEventWithdraw) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$_VivaEventWithdraw(
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

class _$_VivaEventWithdraw implements _VivaEventWithdraw {
  const _$_VivaEventWithdraw(
      {required this.address, required this.poolId, required this.amount});

  @override
  final Address address;
  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VivaEvent.withdraw(address: $address, poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaEventWithdraw &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaEventWithdrawCopyWith<_$_VivaEventWithdraw> get copyWith =>
      __$$_VivaEventWithdrawCopyWithImpl<_$_VivaEventWithdraw>(
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
        emergencyWithdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return withdraw(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult? Function(VmLog vmLog)? unknown,
  }) {
    return withdraw?.call(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    required TResult Function(_VivaEventPoolCreated value) poolCreated,
    required TResult Function(_VivaEventDeposit value) deposit,
    required TResult Function(_VivaEventWithdraw value) withdraw,
    required TResult Function(_VivaEventEmergencyWithdraw value)
        emergencyWithdraw,
    required TResult Function(_VivaEventClaim value) claim,
    required TResult Function(_VivaEventUnknown value) unknown,
  }) {
    return withdraw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
    TResult? Function(_VivaEventUnknown value)? unknown,
  }) {
    return withdraw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (withdraw != null) {
      return withdraw(this);
    }
    return orElse();
  }
}

abstract class _VivaEventWithdraw implements VivaEvent {
  const factory _VivaEventWithdraw(
      {required final Address address,
      required final BigInt poolId,
      required final BigInt amount}) = _$_VivaEventWithdraw;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$$_VivaEventWithdrawCopyWith<_$_VivaEventWithdraw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VivaEventEmergencyWithdrawCopyWith<$Res> {
  factory _$$_VivaEventEmergencyWithdrawCopyWith(
          _$_VivaEventEmergencyWithdraw value,
          $Res Function(_$_VivaEventEmergencyWithdraw) then) =
      __$$_VivaEventEmergencyWithdrawCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_VivaEventEmergencyWithdrawCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$_VivaEventEmergencyWithdraw>
    implements _$$_VivaEventEmergencyWithdrawCopyWith<$Res> {
  __$$_VivaEventEmergencyWithdrawCopyWithImpl(
      _$_VivaEventEmergencyWithdraw _value,
      $Res Function(_$_VivaEventEmergencyWithdraw) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$_VivaEventEmergencyWithdraw(
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

class _$_VivaEventEmergencyWithdraw implements _VivaEventEmergencyWithdraw {
  const _$_VivaEventEmergencyWithdraw(
      {required this.address, required this.poolId, required this.amount});

  @override
  final Address address;
  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VivaEvent.emergencyWithdraw(address: $address, poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaEventEmergencyWithdraw &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaEventEmergencyWithdrawCopyWith<_$_VivaEventEmergencyWithdraw>
      get copyWith => __$$_VivaEventEmergencyWithdrawCopyWithImpl<
          _$_VivaEventEmergencyWithdraw>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        emergencyWithdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return emergencyWithdraw(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult? Function(VmLog vmLog)? unknown,
  }) {
    return emergencyWithdraw?.call(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
    required TResult orElse(),
  }) {
    if (emergencyWithdraw != null) {
      return emergencyWithdraw(address, poolId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VivaEventPoolCreated value) poolCreated,
    required TResult Function(_VivaEventDeposit value) deposit,
    required TResult Function(_VivaEventWithdraw value) withdraw,
    required TResult Function(_VivaEventEmergencyWithdraw value)
        emergencyWithdraw,
    required TResult Function(_VivaEventClaim value) claim,
    required TResult Function(_VivaEventUnknown value) unknown,
  }) {
    return emergencyWithdraw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
    TResult? Function(_VivaEventUnknown value)? unknown,
  }) {
    return emergencyWithdraw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (emergencyWithdraw != null) {
      return emergencyWithdraw(this);
    }
    return orElse();
  }
}

abstract class _VivaEventEmergencyWithdraw implements VivaEvent {
  const factory _VivaEventEmergencyWithdraw(
      {required final Address address,
      required final BigInt poolId,
      required final BigInt amount}) = _$_VivaEventEmergencyWithdraw;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$$_VivaEventEmergencyWithdrawCopyWith<_$_VivaEventEmergencyWithdraw>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VivaEventClaimCopyWith<$Res> {
  factory _$$_VivaEventClaimCopyWith(
          _$_VivaEventClaim value, $Res Function(_$_VivaEventClaim) then) =
      __$$_VivaEventClaimCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_VivaEventClaimCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$_VivaEventClaim>
    implements _$$_VivaEventClaimCopyWith<$Res> {
  __$$_VivaEventClaimCopyWithImpl(
      _$_VivaEventClaim _value, $Res Function(_$_VivaEventClaim) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$_VivaEventClaim(
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

class _$_VivaEventClaim implements _VivaEventClaim {
  const _$_VivaEventClaim(
      {required this.address, required this.poolId, required this.amount});

  @override
  final Address address;
  @override
  final BigInt poolId;
  @override
  final BigInt amount;

  @override
  String toString() {
    return 'VivaEvent.claim(address: $address, poolId: $poolId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaEventClaim &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaEventClaimCopyWith<_$_VivaEventClaim> get copyWith =>
      __$$_VivaEventClaimCopyWithImpl<_$_VivaEventClaim>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        emergencyWithdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return claim(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult? Function(VmLog vmLog)? unknown,
  }) {
    return claim?.call(address, poolId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    required TResult Function(_VivaEventPoolCreated value) poolCreated,
    required TResult Function(_VivaEventDeposit value) deposit,
    required TResult Function(_VivaEventWithdraw value) withdraw,
    required TResult Function(_VivaEventEmergencyWithdraw value)
        emergencyWithdraw,
    required TResult Function(_VivaEventClaim value) claim,
    required TResult Function(_VivaEventUnknown value) unknown,
  }) {
    return claim(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
    TResult? Function(_VivaEventUnknown value)? unknown,
  }) {
    return claim?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (claim != null) {
      return claim(this);
    }
    return orElse();
  }
}

abstract class _VivaEventClaim implements VivaEvent {
  const factory _VivaEventClaim(
      {required final Address address,
      required final BigInt poolId,
      required final BigInt amount}) = _$_VivaEventClaim;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$$_VivaEventClaimCopyWith<_$_VivaEventClaim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VivaEventUnknownCopyWith<$Res> {
  factory _$$_VivaEventUnknownCopyWith(
          _$_VivaEventUnknown value, $Res Function(_$_VivaEventUnknown) then) =
      __$$_VivaEventUnknownCopyWithImpl<$Res>;
  @useResult
  $Res call({VmLog vmLog});

  $VmLogCopyWith<$Res> get vmLog;
}

/// @nodoc
class __$$_VivaEventUnknownCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$_VivaEventUnknown>
    implements _$$_VivaEventUnknownCopyWith<$Res> {
  __$$_VivaEventUnknownCopyWithImpl(
      _$_VivaEventUnknown _value, $Res Function(_$_VivaEventUnknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vmLog = null,
  }) {
    return _then(_$_VivaEventUnknown(
      vmLog: null == vmLog
          ? _value.vmLog
          : vmLog // ignore: cast_nullable_to_non_nullable
              as VmLog,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VmLogCopyWith<$Res> get vmLog {
    return $VmLogCopyWith<$Res>(_value.vmLog, (value) {
      return _then(_value.copyWith(vmLog: value));
    });
  }
}

/// @nodoc

class _$_VivaEventUnknown implements _VivaEventUnknown {
  const _$_VivaEventUnknown({required this.vmLog});

  @override
  final VmLog vmLog;

  @override
  String toString() {
    return 'VivaEvent.unknown(vmLog: $vmLog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VivaEventUnknown &&
            (identical(other.vmLog, vmLog) || other.vmLog == vmLog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vmLog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VivaEventUnknownCopyWith<_$_VivaEventUnknown> get copyWith =>
      __$$_VivaEventUnknownCopyWithImpl<_$_VivaEventUnknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt poolId) poolCreated,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        deposit,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        withdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        emergencyWithdraw,
    required TResult Function(Address address, BigInt poolId, BigInt amount)
        claim,
    required TResult Function(VmLog vmLog) unknown,
  }) {
    return unknown(vmLog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt poolId)? poolCreated,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult? Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult? Function(VmLog vmLog)? unknown,
  }) {
    return unknown?.call(vmLog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    required TResult Function(_VivaEventPoolCreated value) poolCreated,
    required TResult Function(_VivaEventDeposit value) deposit,
    required TResult Function(_VivaEventWithdraw value) withdraw,
    required TResult Function(_VivaEventEmergencyWithdraw value)
        emergencyWithdraw,
    required TResult Function(_VivaEventClaim value) claim,
    required TResult Function(_VivaEventUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
    TResult? Function(_VivaEventUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _VivaEventUnknown implements VivaEvent {
  const factory _VivaEventUnknown({required final VmLog vmLog}) =
      _$_VivaEventUnknown;

  VmLog get vmLog;
  @JsonKey(ignore: true)
  _$$_VivaEventUnknownCopyWith<_$_VivaEventUnknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PoolFilter {
  bool get stakedOnly => throw _privateConstructorUsedError;
  bool get ended => throw _privateConstructorUsedError;
  PoolSortOrder get sortOrder => throw _privateConstructorUsedError;
  String get searchTerm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PoolFilterCopyWith<PoolFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolFilterCopyWith<$Res> {
  factory $PoolFilterCopyWith(
          PoolFilter value, $Res Function(PoolFilter) then) =
      _$PoolFilterCopyWithImpl<$Res, PoolFilter>;
  @useResult
  $Res call(
      {bool stakedOnly,
      bool ended,
      PoolSortOrder sortOrder,
      String searchTerm});
}

/// @nodoc
class _$PoolFilterCopyWithImpl<$Res, $Val extends PoolFilter>
    implements $PoolFilterCopyWith<$Res> {
  _$PoolFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakedOnly = null,
    Object? ended = null,
    Object? sortOrder = null,
    Object? searchTerm = null,
  }) {
    return _then(_value.copyWith(
      stakedOnly: null == stakedOnly
          ? _value.stakedOnly
          : stakedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      ended: null == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as PoolSortOrder,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PoolFilterCopyWith<$Res>
    implements $PoolFilterCopyWith<$Res> {
  factory _$$_PoolFilterCopyWith(
          _$_PoolFilter value, $Res Function(_$_PoolFilter) then) =
      __$$_PoolFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool stakedOnly,
      bool ended,
      PoolSortOrder sortOrder,
      String searchTerm});
}

/// @nodoc
class __$$_PoolFilterCopyWithImpl<$Res>
    extends _$PoolFilterCopyWithImpl<$Res, _$_PoolFilter>
    implements _$$_PoolFilterCopyWith<$Res> {
  __$$_PoolFilterCopyWithImpl(
      _$_PoolFilter _value, $Res Function(_$_PoolFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakedOnly = null,
    Object? ended = null,
    Object? sortOrder = null,
    Object? searchTerm = null,
  }) {
    return _then(_$_PoolFilter(
      stakedOnly: null == stakedOnly
          ? _value.stakedOnly
          : stakedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      ended: null == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as PoolSortOrder,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PoolFilter implements _PoolFilter {
  const _$_PoolFilter(
      {this.stakedOnly = false,
      this.ended = false,
      this.sortOrder = PoolSortOrder.byDefault,
      this.searchTerm = ''});

  @override
  @JsonKey()
  final bool stakedOnly;
  @override
  @JsonKey()
  final bool ended;
  @override
  @JsonKey()
  final PoolSortOrder sortOrder;
  @override
  @JsonKey()
  final String searchTerm;

  @override
  String toString() {
    return 'PoolFilter(stakedOnly: $stakedOnly, ended: $ended, sortOrder: $sortOrder, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PoolFilter &&
            (identical(other.stakedOnly, stakedOnly) ||
                other.stakedOnly == stakedOnly) &&
            (identical(other.ended, ended) || other.ended == ended) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stakedOnly, ended, sortOrder, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PoolFilterCopyWith<_$_PoolFilter> get copyWith =>
      __$$_PoolFilterCopyWithImpl<_$_PoolFilter>(this, _$identity);
}

abstract class _PoolFilter implements PoolFilter {
  const factory _PoolFilter(
      {final bool stakedOnly,
      final bool ended,
      final PoolSortOrder sortOrder,
      final String searchTerm}) = _$_PoolFilter;

  @override
  bool get stakedOnly;
  @override
  bool get ended;
  @override
  PoolSortOrder get sortOrder;
  @override
  String get searchTerm;
  @override
  @JsonKey(ignore: true)
  _$$_PoolFilterCopyWith<_$_PoolFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
