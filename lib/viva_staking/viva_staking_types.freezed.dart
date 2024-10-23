// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viva_staking_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VivaPoolInfo _$VivaPoolInfoFromJson(Map<String, dynamic> json) {
  return _VivaPoolInfo.fromJson(json);
}

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$VivaPoolInfoImplCopyWith<$Res>
    implements $VivaPoolInfoCopyWith<$Res> {
  factory _$$VivaPoolInfoImplCopyWith(
          _$VivaPoolInfoImpl value, $Res Function(_$VivaPoolInfoImpl) then) =
      __$$VivaPoolInfoImplCopyWithImpl<$Res>;
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
class __$$VivaPoolInfoImplCopyWithImpl<$Res>
    extends _$VivaPoolInfoCopyWithImpl<$Res, _$VivaPoolInfoImpl>
    implements _$$VivaPoolInfoImplCopyWith<$Res> {
  __$$VivaPoolInfoImplCopyWithImpl(
      _$VivaPoolInfoImpl _value, $Res Function(_$VivaPoolInfoImpl) _then)
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
    return _then(_$VivaPoolInfoImpl(
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
@JsonSerializable()
class _$VivaPoolInfoImpl extends _VivaPoolInfo {
  const _$VivaPoolInfoImpl(
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

  factory _$VivaPoolInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VivaPoolInfoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaPoolInfoImpl &&
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

  @JsonKey(ignore: true)
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
  _$$VivaPoolInfoImplCopyWith<_$VivaPoolInfoImpl> get copyWith =>
      __$$VivaPoolInfoImplCopyWithImpl<_$VivaPoolInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VivaPoolInfoImplToJson(
      this,
    );
  }
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
      required final BigInt poolId}) = _$VivaPoolInfoImpl;
  const _VivaPoolInfo._() : super._();

  factory _VivaPoolInfo.fromJson(Map<String, dynamic> json) =
      _$VivaPoolInfoImpl.fromJson;

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
  _$$VivaPoolInfoImplCopyWith<_$VivaPoolInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VivaExtraPoolInfo _$VivaExtraPoolInfoFromJson(Map<String, dynamic> json) {
  return _VivaExtraPoolInfo.fromJson(json);
}

/// @nodoc
mixin _$VivaExtraPoolInfo {
  BigInt get minimumDeposit => throw _privateConstructorUsedError;
  BigInt get maximumTotalStakingBalance => throw _privateConstructorUsedError;
  BigInt get lockTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$VivaExtraPoolInfoImplCopyWith<$Res>
    implements $VivaExtraPoolInfoCopyWith<$Res> {
  factory _$$VivaExtraPoolInfoImplCopyWith(_$VivaExtraPoolInfoImpl value,
          $Res Function(_$VivaExtraPoolInfoImpl) then) =
      __$$VivaExtraPoolInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt minimumDeposit,
      BigInt maximumTotalStakingBalance,
      BigInt lockTime});
}

/// @nodoc
class __$$VivaExtraPoolInfoImplCopyWithImpl<$Res>
    extends _$VivaExtraPoolInfoCopyWithImpl<$Res, _$VivaExtraPoolInfoImpl>
    implements _$$VivaExtraPoolInfoImplCopyWith<$Res> {
  __$$VivaExtraPoolInfoImplCopyWithImpl(_$VivaExtraPoolInfoImpl _value,
      $Res Function(_$VivaExtraPoolInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimumDeposit = null,
    Object? maximumTotalStakingBalance = null,
    Object? lockTime = null,
  }) {
    return _then(_$VivaExtraPoolInfoImpl(
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
@JsonSerializable()
class _$VivaExtraPoolInfoImpl implements _VivaExtraPoolInfo {
  const _$VivaExtraPoolInfoImpl(
      {required this.minimumDeposit,
      required this.maximumTotalStakingBalance,
      required this.lockTime});

  factory _$VivaExtraPoolInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VivaExtraPoolInfoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaExtraPoolInfoImpl &&
            (identical(other.minimumDeposit, minimumDeposit) ||
                other.minimumDeposit == minimumDeposit) &&
            (identical(other.maximumTotalStakingBalance,
                    maximumTotalStakingBalance) ||
                other.maximumTotalStakingBalance ==
                    maximumTotalStakingBalance) &&
            (identical(other.lockTime, lockTime) ||
                other.lockTime == lockTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, minimumDeposit, maximumTotalStakingBalance, lockTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaExtraPoolInfoImplCopyWith<_$VivaExtraPoolInfoImpl> get copyWith =>
      __$$VivaExtraPoolInfoImplCopyWithImpl<_$VivaExtraPoolInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VivaExtraPoolInfoImplToJson(
      this,
    );
  }
}

abstract class _VivaExtraPoolInfo implements VivaExtraPoolInfo {
  const factory _VivaExtraPoolInfo(
      {required final BigInt minimumDeposit,
      required final BigInt maximumTotalStakingBalance,
      required final BigInt lockTime}) = _$VivaExtraPoolInfoImpl;

  factory _VivaExtraPoolInfo.fromJson(Map<String, dynamic> json) =
      _$VivaExtraPoolInfoImpl.fromJson;

  @override
  BigInt get minimumDeposit;
  @override
  BigInt get maximumTotalStakingBalance;
  @override
  BigInt get lockTime;
  @override
  @JsonKey(ignore: true)
  _$$VivaExtraPoolInfoImplCopyWith<_$VivaExtraPoolInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VivaPoolInfoAll _$VivaPoolInfoAllFromJson(Map<String, dynamic> json) {
  return _VivaPoolInfoAll.fromJson(json);
}

/// @nodoc
mixin _$VivaPoolInfoAll {
  VivaPoolInfo get poolInfo => throw _privateConstructorUsedError;
  VivaExtraPoolInfo get extra => throw _privateConstructorUsedError;
  TokenInfo get stakingTokenInfo => throw _privateConstructorUsedError;
  TokenInfo get rewardTokenInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$VivaPoolInfoAllImplCopyWith<$Res>
    implements $VivaPoolInfoAllCopyWith<$Res> {
  factory _$$VivaPoolInfoAllImplCopyWith(_$VivaPoolInfoAllImpl value,
          $Res Function(_$VivaPoolInfoAllImpl) then) =
      __$$VivaPoolInfoAllImplCopyWithImpl<$Res>;
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
class __$$VivaPoolInfoAllImplCopyWithImpl<$Res>
    extends _$VivaPoolInfoAllCopyWithImpl<$Res, _$VivaPoolInfoAllImpl>
    implements _$$VivaPoolInfoAllImplCopyWith<$Res> {
  __$$VivaPoolInfoAllImplCopyWithImpl(
      _$VivaPoolInfoAllImpl _value, $Res Function(_$VivaPoolInfoAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolInfo = null,
    Object? extra = null,
    Object? stakingTokenInfo = null,
    Object? rewardTokenInfo = null,
  }) {
    return _then(_$VivaPoolInfoAllImpl(
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
@JsonSerializable()
class _$VivaPoolInfoAllImpl extends _VivaPoolInfoAll {
  const _$VivaPoolInfoAllImpl(
      {required this.poolInfo,
      required this.extra,
      required this.stakingTokenInfo,
      required this.rewardTokenInfo})
      : super._();

  factory _$VivaPoolInfoAllImpl.fromJson(Map<String, dynamic> json) =>
      _$$VivaPoolInfoAllImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaPoolInfoAllImpl &&
            (identical(other.poolInfo, poolInfo) ||
                other.poolInfo == poolInfo) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.stakingTokenInfo, stakingTokenInfo) ||
                other.stakingTokenInfo == stakingTokenInfo) &&
            (identical(other.rewardTokenInfo, rewardTokenInfo) ||
                other.rewardTokenInfo == rewardTokenInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, poolInfo, extra, stakingTokenInfo, rewardTokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaPoolInfoAllImplCopyWith<_$VivaPoolInfoAllImpl> get copyWith =>
      __$$VivaPoolInfoAllImplCopyWithImpl<_$VivaPoolInfoAllImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VivaPoolInfoAllImplToJson(
      this,
    );
  }
}

abstract class _VivaPoolInfoAll extends VivaPoolInfoAll {
  const factory _VivaPoolInfoAll(
      {required final VivaPoolInfo poolInfo,
      required final VivaExtraPoolInfo extra,
      required final TokenInfo stakingTokenInfo,
      required final TokenInfo rewardTokenInfo}) = _$VivaPoolInfoAllImpl;
  const _VivaPoolInfoAll._() : super._();

  factory _VivaPoolInfoAll.fromJson(Map<String, dynamic> json) =
      _$VivaPoolInfoAllImpl.fromJson;

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
  _$$VivaPoolInfoAllImplCopyWith<_$VivaPoolInfoAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VivaUserInfo {
  BigInt get stakingBalance => throw _privateConstructorUsedError;
  BigInt get rewardDebt => throw _privateConstructorUsedError;
  BigInt get lastInteractionBlock => throw _privateConstructorUsedError;

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
  $Res call(
      {BigInt stakingBalance, BigInt rewardDebt, BigInt lastInteractionBlock});
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
    Object? lastInteractionBlock = null,
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
      lastInteractionBlock: null == lastInteractionBlock
          ? _value.lastInteractionBlock
          : lastInteractionBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VivaUserInfoImplCopyWith<$Res>
    implements $VivaUserInfoCopyWith<$Res> {
  factory _$$VivaUserInfoImplCopyWith(
          _$VivaUserInfoImpl value, $Res Function(_$VivaUserInfoImpl) then) =
      __$$VivaUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt stakingBalance, BigInt rewardDebt, BigInt lastInteractionBlock});
}

/// @nodoc
class __$$VivaUserInfoImplCopyWithImpl<$Res>
    extends _$VivaUserInfoCopyWithImpl<$Res, _$VivaUserInfoImpl>
    implements _$$VivaUserInfoImplCopyWith<$Res> {
  __$$VivaUserInfoImplCopyWithImpl(
      _$VivaUserInfoImpl _value, $Res Function(_$VivaUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingBalance = null,
    Object? rewardDebt = null,
    Object? lastInteractionBlock = null,
  }) {
    return _then(_$VivaUserInfoImpl(
      stakingBalance: null == stakingBalance
          ? _value.stakingBalance
          : stakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      rewardDebt: null == rewardDebt
          ? _value.rewardDebt
          : rewardDebt // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lastInteractionBlock: null == lastInteractionBlock
          ? _value.lastInteractionBlock
          : lastInteractionBlock // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$VivaUserInfoImpl implements _VivaUserInfo {
  const _$VivaUserInfoImpl(
      {required this.stakingBalance,
      required this.rewardDebt,
      required this.lastInteractionBlock});

  @override
  final BigInt stakingBalance;
  @override
  final BigInt rewardDebt;
  @override
  final BigInt lastInteractionBlock;

  @override
  String toString() {
    return 'VivaUserInfo(stakingBalance: $stakingBalance, rewardDebt: $rewardDebt, lastInteractionBlock: $lastInteractionBlock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaUserInfoImpl &&
            (identical(other.stakingBalance, stakingBalance) ||
                other.stakingBalance == stakingBalance) &&
            (identical(other.rewardDebt, rewardDebt) ||
                other.rewardDebt == rewardDebt) &&
            (identical(other.lastInteractionBlock, lastInteractionBlock) ||
                other.lastInteractionBlock == lastInteractionBlock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stakingBalance, rewardDebt, lastInteractionBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaUserInfoImplCopyWith<_$VivaUserInfoImpl> get copyWith =>
      __$$VivaUserInfoImplCopyWithImpl<_$VivaUserInfoImpl>(this, _$identity);
}

abstract class _VivaUserInfo implements VivaUserInfo {
  const factory _VivaUserInfo(
      {required final BigInt stakingBalance,
      required final BigInt rewardDebt,
      required final BigInt lastInteractionBlock}) = _$VivaUserInfoImpl;

  @override
  BigInt get stakingBalance;
  @override
  BigInt get rewardDebt;
  @override
  BigInt get lastInteractionBlock;
  @override
  @JsonKey(ignore: true)
  _$$VivaUserInfoImplCopyWith<_$VivaUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VivaEvent {
  BigInt get poolId => throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VivaEventPoolCreated value)? poolCreated,
    TResult? Function(_VivaEventDeposit value)? deposit,
    TResult? Function(_VivaEventWithdraw value)? withdraw,
    TResult? Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult? Function(_VivaEventClaim value)? claim,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaEventCopyWith<VivaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaEventCopyWith<$Res> {
  factory $VivaEventCopyWith(VivaEvent value, $Res Function(VivaEvent) then) =
      _$VivaEventCopyWithImpl<$Res, VivaEvent>;
  @useResult
  $Res call({BigInt poolId});
}

/// @nodoc
class _$VivaEventCopyWithImpl<$Res, $Val extends VivaEvent>
    implements $VivaEventCopyWith<$Res> {
  _$VivaEventCopyWithImpl(this._value, this._then);

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
abstract class _$$VivaEventPoolCreatedImplCopyWith<$Res>
    implements $VivaEventCopyWith<$Res> {
  factory _$$VivaEventPoolCreatedImplCopyWith(_$VivaEventPoolCreatedImpl value,
          $Res Function(_$VivaEventPoolCreatedImpl) then) =
      __$$VivaEventPoolCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt poolId});
}

/// @nodoc
class __$$VivaEventPoolCreatedImplCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$VivaEventPoolCreatedImpl>
    implements _$$VivaEventPoolCreatedImplCopyWith<$Res> {
  __$$VivaEventPoolCreatedImplCopyWithImpl(_$VivaEventPoolCreatedImpl _value,
      $Res Function(_$VivaEventPoolCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolId = null,
  }) {
    return _then(_$VivaEventPoolCreatedImpl(
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$VivaEventPoolCreatedImpl implements _VivaEventPoolCreated {
  const _$VivaEventPoolCreatedImpl({required this.poolId});

  @override
  final BigInt poolId;

  @override
  String toString() {
    return 'VivaEvent.poolCreated(poolId: $poolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaEventPoolCreatedImpl &&
            (identical(other.poolId, poolId) || other.poolId == poolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaEventPoolCreatedImplCopyWith<_$VivaEventPoolCreatedImpl>
      get copyWith =>
          __$$VivaEventPoolCreatedImplCopyWithImpl<_$VivaEventPoolCreatedImpl>(
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
      _$VivaEventPoolCreatedImpl;

  @override
  BigInt get poolId;
  @override
  @JsonKey(ignore: true)
  _$$VivaEventPoolCreatedImplCopyWith<_$VivaEventPoolCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VivaEventDepositImplCopyWith<$Res>
    implements $VivaEventCopyWith<$Res> {
  factory _$$VivaEventDepositImplCopyWith(_$VivaEventDepositImpl value,
          $Res Function(_$VivaEventDepositImpl) then) =
      __$$VivaEventDepositImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$VivaEventDepositImplCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$VivaEventDepositImpl>
    implements _$$VivaEventDepositImplCopyWith<$Res> {
  __$$VivaEventDepositImplCopyWithImpl(_$VivaEventDepositImpl _value,
      $Res Function(_$VivaEventDepositImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$VivaEventDepositImpl(
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

class _$VivaEventDepositImpl implements _VivaEventDeposit {
  const _$VivaEventDepositImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaEventDepositImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaEventDepositImplCopyWith<_$VivaEventDepositImpl> get copyWith =>
      __$$VivaEventDepositImplCopyWithImpl<_$VivaEventDepositImpl>(
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
      required final BigInt amount}) = _$VivaEventDepositImpl;

  Address get address;
  @override
  BigInt get poolId;
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$VivaEventDepositImplCopyWith<_$VivaEventDepositImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VivaEventWithdrawImplCopyWith<$Res>
    implements $VivaEventCopyWith<$Res> {
  factory _$$VivaEventWithdrawImplCopyWith(_$VivaEventWithdrawImpl value,
          $Res Function(_$VivaEventWithdrawImpl) then) =
      __$$VivaEventWithdrawImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$VivaEventWithdrawImplCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$VivaEventWithdrawImpl>
    implements _$$VivaEventWithdrawImplCopyWith<$Res> {
  __$$VivaEventWithdrawImplCopyWithImpl(_$VivaEventWithdrawImpl _value,
      $Res Function(_$VivaEventWithdrawImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$VivaEventWithdrawImpl(
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

class _$VivaEventWithdrawImpl implements _VivaEventWithdraw {
  const _$VivaEventWithdrawImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaEventWithdrawImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaEventWithdrawImplCopyWith<_$VivaEventWithdrawImpl> get copyWith =>
      __$$VivaEventWithdrawImplCopyWithImpl<_$VivaEventWithdrawImpl>(
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
      required final BigInt amount}) = _$VivaEventWithdrawImpl;

  Address get address;
  @override
  BigInt get poolId;
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$VivaEventWithdrawImplCopyWith<_$VivaEventWithdrawImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VivaEventEmergencyWithdrawImplCopyWith<$Res>
    implements $VivaEventCopyWith<$Res> {
  factory _$$VivaEventEmergencyWithdrawImplCopyWith(
          _$VivaEventEmergencyWithdrawImpl value,
          $Res Function(_$VivaEventEmergencyWithdrawImpl) then) =
      __$$VivaEventEmergencyWithdrawImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$VivaEventEmergencyWithdrawImplCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$VivaEventEmergencyWithdrawImpl>
    implements _$$VivaEventEmergencyWithdrawImplCopyWith<$Res> {
  __$$VivaEventEmergencyWithdrawImplCopyWithImpl(
      _$VivaEventEmergencyWithdrawImpl _value,
      $Res Function(_$VivaEventEmergencyWithdrawImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$VivaEventEmergencyWithdrawImpl(
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

class _$VivaEventEmergencyWithdrawImpl implements _VivaEventEmergencyWithdraw {
  const _$VivaEventEmergencyWithdrawImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaEventEmergencyWithdrawImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaEventEmergencyWithdrawImplCopyWith<_$VivaEventEmergencyWithdrawImpl>
      get copyWith => __$$VivaEventEmergencyWithdrawImplCopyWithImpl<
          _$VivaEventEmergencyWithdrawImpl>(this, _$identity);

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
      required final BigInt amount}) = _$VivaEventEmergencyWithdrawImpl;

  Address get address;
  @override
  BigInt get poolId;
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$VivaEventEmergencyWithdrawImplCopyWith<_$VivaEventEmergencyWithdrawImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VivaEventClaimImplCopyWith<$Res>
    implements $VivaEventCopyWith<$Res> {
  factory _$$VivaEventClaimImplCopyWith(_$VivaEventClaimImpl value,
          $Res Function(_$VivaEventClaimImpl) then) =
      __$$VivaEventClaimImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$VivaEventClaimImplCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res, _$VivaEventClaimImpl>
    implements _$$VivaEventClaimImplCopyWith<$Res> {
  __$$VivaEventClaimImplCopyWithImpl(
      _$VivaEventClaimImpl _value, $Res Function(_$VivaEventClaimImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? poolId = null,
    Object? amount = null,
  }) {
    return _then(_$VivaEventClaimImpl(
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

class _$VivaEventClaimImpl implements _VivaEventClaim {
  const _$VivaEventClaimImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaEventClaimImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, poolId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaEventClaimImplCopyWith<_$VivaEventClaimImpl> get copyWith =>
      __$$VivaEventClaimImplCopyWithImpl<_$VivaEventClaimImpl>(
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
      required final BigInt amount}) = _$VivaEventClaimImpl;

  Address get address;
  @override
  BigInt get poolId;
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$VivaEventClaimImplCopyWith<_$VivaEventClaimImpl> get copyWith =>
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
abstract class _$$PoolFilterImplCopyWith<$Res>
    implements $PoolFilterCopyWith<$Res> {
  factory _$$PoolFilterImplCopyWith(
          _$PoolFilterImpl value, $Res Function(_$PoolFilterImpl) then) =
      __$$PoolFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool stakedOnly,
      bool ended,
      PoolSortOrder sortOrder,
      String searchTerm});
}

/// @nodoc
class __$$PoolFilterImplCopyWithImpl<$Res>
    extends _$PoolFilterCopyWithImpl<$Res, _$PoolFilterImpl>
    implements _$$PoolFilterImplCopyWith<$Res> {
  __$$PoolFilterImplCopyWithImpl(
      _$PoolFilterImpl _value, $Res Function(_$PoolFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakedOnly = null,
    Object? ended = null,
    Object? sortOrder = null,
    Object? searchTerm = null,
  }) {
    return _then(_$PoolFilterImpl(
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

class _$PoolFilterImpl implements _PoolFilter {
  const _$PoolFilterImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolFilterImpl &&
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
  _$$PoolFilterImplCopyWith<_$PoolFilterImpl> get copyWith =>
      __$$PoolFilterImplCopyWithImpl<_$PoolFilterImpl>(this, _$identity);
}

abstract class _PoolFilter implements PoolFilter {
  const factory _PoolFilter(
      {final bool stakedOnly,
      final bool ended,
      final PoolSortOrder sortOrder,
      final String searchTerm}) = _$PoolFilterImpl;

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
  _$$PoolFilterImplCopyWith<_$PoolFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VivaStakingCache _$VivaStakingCacheFromJson(Map<String, dynamic> json) {
  return _VivaPoolsCache.fromJson(json);
}

/// @nodoc
mixin _$VivaStakingCache {
  @JsonKey(fromJson: _poolsFromJson)
  IMap<BigInt, VivaPoolInfoAll> get pools => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VivaStakingCacheCopyWith<VivaStakingCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaStakingCacheCopyWith<$Res> {
  factory $VivaStakingCacheCopyWith(
          VivaStakingCache value, $Res Function(VivaStakingCache) then) =
      _$VivaStakingCacheCopyWithImpl<$Res, VivaStakingCache>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _poolsFromJson) IMap<BigInt, VivaPoolInfoAll> pools});
}

/// @nodoc
class _$VivaStakingCacheCopyWithImpl<$Res, $Val extends VivaStakingCache>
    implements $VivaStakingCacheCopyWith<$Res> {
  _$VivaStakingCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pools = null,
  }) {
    return _then(_value.copyWith(
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as IMap<BigInt, VivaPoolInfoAll>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VivaPoolsCacheImplCopyWith<$Res>
    implements $VivaStakingCacheCopyWith<$Res> {
  factory _$$VivaPoolsCacheImplCopyWith(_$VivaPoolsCacheImpl value,
          $Res Function(_$VivaPoolsCacheImpl) then) =
      __$$VivaPoolsCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _poolsFromJson) IMap<BigInt, VivaPoolInfoAll> pools});
}

/// @nodoc
class __$$VivaPoolsCacheImplCopyWithImpl<$Res>
    extends _$VivaStakingCacheCopyWithImpl<$Res, _$VivaPoolsCacheImpl>
    implements _$$VivaPoolsCacheImplCopyWith<$Res> {
  __$$VivaPoolsCacheImplCopyWithImpl(
      _$VivaPoolsCacheImpl _value, $Res Function(_$VivaPoolsCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pools = null,
  }) {
    return _then(_$VivaPoolsCacheImpl(
      pools: null == pools
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as IMap<BigInt, VivaPoolInfoAll>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VivaPoolsCacheImpl implements _VivaPoolsCache {
  const _$VivaPoolsCacheImpl(
      {@JsonKey(fromJson: _poolsFromJson) this.pools = const IMapConst({})});

  factory _$VivaPoolsCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$VivaPoolsCacheImplFromJson(json);

  @override
  @JsonKey(fromJson: _poolsFromJson)
  final IMap<BigInt, VivaPoolInfoAll> pools;

  @override
  String toString() {
    return 'VivaStakingCache(pools: $pools)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaPoolsCacheImpl &&
            (identical(other.pools, pools) || other.pools == pools));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pools);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaPoolsCacheImplCopyWith<_$VivaPoolsCacheImpl> get copyWith =>
      __$$VivaPoolsCacheImplCopyWithImpl<_$VivaPoolsCacheImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VivaPoolsCacheImplToJson(
      this,
    );
  }
}

abstract class _VivaPoolsCache implements VivaStakingCache {
  const factory _VivaPoolsCache(
      {@JsonKey(fromJson: _poolsFromJson)
      final IMap<BigInt, VivaPoolInfoAll> pools}) = _$VivaPoolsCacheImpl;

  factory _VivaPoolsCache.fromJson(Map<String, dynamic> json) =
      _$VivaPoolsCacheImpl.fromJson;

  @override
  @JsonKey(fromJson: _poolsFromJson)
  IMap<BigInt, VivaPoolInfoAll> get pools;
  @override
  @JsonKey(ignore: true)
  _$$VivaPoolsCacheImplCopyWith<_$VivaPoolsCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VivaUserInfoState {
  IMap<BigInt, VivaUserInfo> get userInfo => throw _privateConstructorUsedError;
  ISet<BigInt> get pendingPoolIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VivaUserInfoStateCopyWith<VivaUserInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VivaUserInfoStateCopyWith<$Res> {
  factory $VivaUserInfoStateCopyWith(
          VivaUserInfoState value, $Res Function(VivaUserInfoState) then) =
      _$VivaUserInfoStateCopyWithImpl<$Res, VivaUserInfoState>;
  @useResult
  $Res call({IMap<BigInt, VivaUserInfo> userInfo, ISet<BigInt> pendingPoolIds});
}

/// @nodoc
class _$VivaUserInfoStateCopyWithImpl<$Res, $Val extends VivaUserInfoState>
    implements $VivaUserInfoStateCopyWith<$Res> {
  _$VivaUserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
    Object? pendingPoolIds = null,
  }) {
    return _then(_value.copyWith(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as IMap<BigInt, VivaUserInfo>,
      pendingPoolIds: null == pendingPoolIds
          ? _value.pendingPoolIds
          : pendingPoolIds // ignore: cast_nullable_to_non_nullable
              as ISet<BigInt>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VivaUserInfoStateImplCopyWith<$Res>
    implements $VivaUserInfoStateCopyWith<$Res> {
  factory _$$VivaUserInfoStateImplCopyWith(_$VivaUserInfoStateImpl value,
          $Res Function(_$VivaUserInfoStateImpl) then) =
      __$$VivaUserInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IMap<BigInt, VivaUserInfo> userInfo, ISet<BigInt> pendingPoolIds});
}

/// @nodoc
class __$$VivaUserInfoStateImplCopyWithImpl<$Res>
    extends _$VivaUserInfoStateCopyWithImpl<$Res, _$VivaUserInfoStateImpl>
    implements _$$VivaUserInfoStateImplCopyWith<$Res> {
  __$$VivaUserInfoStateImplCopyWithImpl(_$VivaUserInfoStateImpl _value,
      $Res Function(_$VivaUserInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
    Object? pendingPoolIds = null,
  }) {
    return _then(_$VivaUserInfoStateImpl(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as IMap<BigInt, VivaUserInfo>,
      pendingPoolIds: null == pendingPoolIds
          ? _value.pendingPoolIds
          : pendingPoolIds // ignore: cast_nullable_to_non_nullable
              as ISet<BigInt>,
    ));
  }
}

/// @nodoc

class _$VivaUserInfoStateImpl extends _VivaUserInfoState {
  const _$VivaUserInfoStateImpl(
      {this.userInfo = const IMapConst({}),
      this.pendingPoolIds = const ISetConst({})})
      : super._();

  @override
  @JsonKey()
  final IMap<BigInt, VivaUserInfo> userInfo;
  @override
  @JsonKey()
  final ISet<BigInt> pendingPoolIds;

  @override
  String toString() {
    return 'VivaUserInfoState(userInfo: $userInfo, pendingPoolIds: $pendingPoolIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VivaUserInfoStateImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            const DeepCollectionEquality()
                .equals(other.pendingPoolIds, pendingPoolIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo,
      const DeepCollectionEquality().hash(pendingPoolIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VivaUserInfoStateImplCopyWith<_$VivaUserInfoStateImpl> get copyWith =>
      __$$VivaUserInfoStateImplCopyWithImpl<_$VivaUserInfoStateImpl>(
          this, _$identity);
}

abstract class _VivaUserInfoState extends VivaUserInfoState {
  const factory _VivaUserInfoState(
      {final IMap<BigInt, VivaUserInfo> userInfo,
      final ISet<BigInt> pendingPoolIds}) = _$VivaUserInfoStateImpl;
  const _VivaUserInfoState._() : super._();

  @override
  IMap<BigInt, VivaUserInfo> get userInfo;
  @override
  ISet<BigInt> get pendingPoolIds;
  @override
  @JsonKey(ignore: true)
  _$$VivaUserInfoStateImplCopyWith<_$VivaUserInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
