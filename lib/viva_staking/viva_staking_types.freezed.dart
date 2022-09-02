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
      _$VivaPoolInfoCopyWithImpl<$Res>;
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
abstract class _$VivaPoolInfoCopyWith<$Res>
    implements $VivaPoolInfoCopyWith<$Res> {
  factory _$VivaPoolInfoCopyWith(
          _VivaPoolInfo value, $Res Function(_VivaPoolInfo) then) =
      __$VivaPoolInfoCopyWithImpl<$Res>;
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
      BigInt poolId});

  @override
  $TokenCopyWith<$Res> get stakingToken;
  @override
  $TokenCopyWith<$Res> get rewardToken;
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
      poolId: poolId == freezed
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

abstract class _VivaPoolInfo extends VivaPoolInfo {
  const factory _VivaPoolInfo(
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
      required BigInt poolId}) = _$_VivaPoolInfo;
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
  _$VivaPoolInfoCopyWith<_VivaPoolInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VivaPoolInfoAllTearOff {
  const _$VivaPoolInfoAllTearOff();

  _VivaPoolInfoAll call(
      {required VivaPoolInfo poolInfo,
      required VivaExtraPoolInfo extra,
      required TokenInfo stakingTokenInfo,
      required TokenInfo rewardTokenInfo}) {
    return _VivaPoolInfoAll(
      poolInfo: poolInfo,
      extra: extra,
      stakingTokenInfo: stakingTokenInfo,
      rewardTokenInfo: rewardTokenInfo,
    );
  }
}

/// @nodoc
const $VivaPoolInfoAll = _$VivaPoolInfoAllTearOff();

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
      _$VivaPoolInfoAllCopyWithImpl<$Res>;
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
class _$VivaPoolInfoAllCopyWithImpl<$Res>
    implements $VivaPoolInfoAllCopyWith<$Res> {
  _$VivaPoolInfoAllCopyWithImpl(this._value, this._then);

  final VivaPoolInfoAll _value;
  // ignore: unused_field
  final $Res Function(VivaPoolInfoAll) _then;

  @override
  $Res call({
    Object? poolInfo = freezed,
    Object? extra = freezed,
    Object? stakingTokenInfo = freezed,
    Object? rewardTokenInfo = freezed,
  }) {
    return _then(_value.copyWith(
      poolInfo: poolInfo == freezed
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VivaPoolInfo,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as VivaExtraPoolInfo,
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
  $VivaPoolInfoCopyWith<$Res> get poolInfo {
    return $VivaPoolInfoCopyWith<$Res>(_value.poolInfo, (value) {
      return _then(_value.copyWith(poolInfo: value));
    });
  }

  @override
  $VivaExtraPoolInfoCopyWith<$Res> get extra {
    return $VivaExtraPoolInfoCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value));
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
abstract class _$VivaPoolInfoAllCopyWith<$Res>
    implements $VivaPoolInfoAllCopyWith<$Res> {
  factory _$VivaPoolInfoAllCopyWith(
          _VivaPoolInfoAll value, $Res Function(_VivaPoolInfoAll) then) =
      __$VivaPoolInfoAllCopyWithImpl<$Res>;
  @override
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
class __$VivaPoolInfoAllCopyWithImpl<$Res>
    extends _$VivaPoolInfoAllCopyWithImpl<$Res>
    implements _$VivaPoolInfoAllCopyWith<$Res> {
  __$VivaPoolInfoAllCopyWithImpl(
      _VivaPoolInfoAll _value, $Res Function(_VivaPoolInfoAll) _then)
      : super(_value, (v) => _then(v as _VivaPoolInfoAll));

  @override
  _VivaPoolInfoAll get _value => super._value as _VivaPoolInfoAll;

  @override
  $Res call({
    Object? poolInfo = freezed,
    Object? extra = freezed,
    Object? stakingTokenInfo = freezed,
    Object? rewardTokenInfo = freezed,
  }) {
    return _then(_VivaPoolInfoAll(
      poolInfo: poolInfo == freezed
          ? _value.poolInfo
          : poolInfo // ignore: cast_nullable_to_non_nullable
              as VivaPoolInfo,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as VivaExtraPoolInfo,
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
            other is _VivaPoolInfoAll &&
            const DeepCollectionEquality().equals(other.poolInfo, poolInfo) &&
            const DeepCollectionEquality().equals(other.extra, extra) &&
            const DeepCollectionEquality()
                .equals(other.stakingTokenInfo, stakingTokenInfo) &&
            const DeepCollectionEquality()
                .equals(other.rewardTokenInfo, rewardTokenInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(poolInfo),
      const DeepCollectionEquality().hash(extra),
      const DeepCollectionEquality().hash(stakingTokenInfo),
      const DeepCollectionEquality().hash(rewardTokenInfo));

  @JsonKey(ignore: true)
  @override
  _$VivaPoolInfoAllCopyWith<_VivaPoolInfoAll> get copyWith =>
      __$VivaPoolInfoAllCopyWithImpl<_VivaPoolInfoAll>(this, _$identity);
}

abstract class _VivaPoolInfoAll extends VivaPoolInfoAll {
  const factory _VivaPoolInfoAll(
      {required VivaPoolInfo poolInfo,
      required VivaExtraPoolInfo extra,
      required TokenInfo stakingTokenInfo,
      required TokenInfo rewardTokenInfo}) = _$_VivaPoolInfoAll;
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
  _$VivaPoolInfoAllCopyWith<_VivaPoolInfoAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VivaExtraPoolInfoTearOff {
  const _$VivaExtraPoolInfoTearOff();

  _VivaExtraPoolInfo call(
      {required BigInt minimumDeposit,
      required BigInt maximumTotalStakingBalance,
      required BigInt lockTime}) {
    return _VivaExtraPoolInfo(
      minimumDeposit: minimumDeposit,
      maximumTotalStakingBalance: maximumTotalStakingBalance,
      lockTime: lockTime,
    );
  }
}

/// @nodoc
const $VivaExtraPoolInfo = _$VivaExtraPoolInfoTearOff();

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
      _$VivaExtraPoolInfoCopyWithImpl<$Res>;
  $Res call(
      {BigInt minimumDeposit,
      BigInt maximumTotalStakingBalance,
      BigInt lockTime});
}

/// @nodoc
class _$VivaExtraPoolInfoCopyWithImpl<$Res>
    implements $VivaExtraPoolInfoCopyWith<$Res> {
  _$VivaExtraPoolInfoCopyWithImpl(this._value, this._then);

  final VivaExtraPoolInfo _value;
  // ignore: unused_field
  final $Res Function(VivaExtraPoolInfo) _then;

  @override
  $Res call({
    Object? minimumDeposit = freezed,
    Object? maximumTotalStakingBalance = freezed,
    Object? lockTime = freezed,
  }) {
    return _then(_value.copyWith(
      minimumDeposit: minimumDeposit == freezed
          ? _value.minimumDeposit
          : minimumDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
      maximumTotalStakingBalance: maximumTotalStakingBalance == freezed
          ? _value.maximumTotalStakingBalance
          : maximumTotalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockTime: lockTime == freezed
          ? _value.lockTime
          : lockTime // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
abstract class _$VivaExtraPoolInfoCopyWith<$Res>
    implements $VivaExtraPoolInfoCopyWith<$Res> {
  factory _$VivaExtraPoolInfoCopyWith(
          _VivaExtraPoolInfo value, $Res Function(_VivaExtraPoolInfo) then) =
      __$VivaExtraPoolInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {BigInt minimumDeposit,
      BigInt maximumTotalStakingBalance,
      BigInt lockTime});
}

/// @nodoc
class __$VivaExtraPoolInfoCopyWithImpl<$Res>
    extends _$VivaExtraPoolInfoCopyWithImpl<$Res>
    implements _$VivaExtraPoolInfoCopyWith<$Res> {
  __$VivaExtraPoolInfoCopyWithImpl(
      _VivaExtraPoolInfo _value, $Res Function(_VivaExtraPoolInfo) _then)
      : super(_value, (v) => _then(v as _VivaExtraPoolInfo));

  @override
  _VivaExtraPoolInfo get _value => super._value as _VivaExtraPoolInfo;

  @override
  $Res call({
    Object? minimumDeposit = freezed,
    Object? maximumTotalStakingBalance = freezed,
    Object? lockTime = freezed,
  }) {
    return _then(_VivaExtraPoolInfo(
      minimumDeposit: minimumDeposit == freezed
          ? _value.minimumDeposit
          : minimumDeposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
      maximumTotalStakingBalance: maximumTotalStakingBalance == freezed
          ? _value.maximumTotalStakingBalance
          : maximumTotalStakingBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockTime: lockTime == freezed
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
            other is _VivaExtraPoolInfo &&
            const DeepCollectionEquality()
                .equals(other.minimumDeposit, minimumDeposit) &&
            const DeepCollectionEquality().equals(
                other.maximumTotalStakingBalance, maximumTotalStakingBalance) &&
            const DeepCollectionEquality().equals(other.lockTime, lockTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(minimumDeposit),
      const DeepCollectionEquality().hash(maximumTotalStakingBalance),
      const DeepCollectionEquality().hash(lockTime));

  @JsonKey(ignore: true)
  @override
  _$VivaExtraPoolInfoCopyWith<_VivaExtraPoolInfo> get copyWith =>
      __$VivaExtraPoolInfoCopyWithImpl<_VivaExtraPoolInfo>(this, _$identity);
}

abstract class _VivaExtraPoolInfo implements VivaExtraPoolInfo {
  const factory _VivaExtraPoolInfo(
      {required BigInt minimumDeposit,
      required BigInt maximumTotalStakingBalance,
      required BigInt lockTime}) = _$_VivaExtraPoolInfo;

  @override
  BigInt get minimumDeposit;
  @override
  BigInt get maximumTotalStakingBalance;
  @override
  BigInt get lockTime;
  @override
  @JsonKey(ignore: true)
  _$VivaExtraPoolInfoCopyWith<_VivaExtraPoolInfo> get copyWith =>
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
class _$VivaEventTearOff {
  const _$VivaEventTearOff();

  _VivaEventPoolCreated poolCreated({required BigInt poolId}) {
    return _VivaEventPoolCreated(
      poolId: poolId,
    );
  }

  _VivaEventDeposit deposit(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) {
    return _VivaEventDeposit(
      address: address,
      poolId: poolId,
      amount: amount,
    );
  }

  _VivaEventWithdraw withdraw(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) {
    return _VivaEventWithdraw(
      address: address,
      poolId: poolId,
      amount: amount,
    );
  }

  _VivaEventEmergencyWithdraw emergencyWithdraw(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) {
    return _VivaEventEmergencyWithdraw(
      address: address,
      poolId: poolId,
      amount: amount,
    );
  }

  _VivaEventClaim claim(
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) {
    return _VivaEventClaim(
      address: address,
      poolId: poolId,
      amount: amount,
    );
  }

  _VivaEventUnknown unknown({required VmLog vmLog}) {
    return _VivaEventUnknown(
      vmLog: vmLog,
    );
  }
}

/// @nodoc
const $VivaEvent = _$VivaEventTearOff();

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
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
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
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
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
      _$VivaEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VivaEventCopyWithImpl<$Res> implements $VivaEventCopyWith<$Res> {
  _$VivaEventCopyWithImpl(this._value, this._then);

  final VivaEvent _value;
  // ignore: unused_field
  final $Res Function(VivaEvent) _then;
}

/// @nodoc
abstract class _$VivaEventPoolCreatedCopyWith<$Res> {
  factory _$VivaEventPoolCreatedCopyWith(_VivaEventPoolCreated value,
          $Res Function(_VivaEventPoolCreated) then) =
      __$VivaEventPoolCreatedCopyWithImpl<$Res>;
  $Res call({BigInt poolId});
}

/// @nodoc
class __$VivaEventPoolCreatedCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res>
    implements _$VivaEventPoolCreatedCopyWith<$Res> {
  __$VivaEventPoolCreatedCopyWithImpl(
      _VivaEventPoolCreated _value, $Res Function(_VivaEventPoolCreated) _then)
      : super(_value, (v) => _then(v as _VivaEventPoolCreated));

  @override
  _VivaEventPoolCreated get _value => super._value as _VivaEventPoolCreated;

  @override
  $Res call({
    Object? poolId = freezed,
  }) {
    return _then(_VivaEventPoolCreated(
      poolId: poolId == freezed
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
            other is _VivaEventPoolCreated &&
            const DeepCollectionEquality().equals(other.poolId, poolId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(poolId));

  @JsonKey(ignore: true)
  @override
  _$VivaEventPoolCreatedCopyWith<_VivaEventPoolCreated> get copyWith =>
      __$VivaEventPoolCreatedCopyWithImpl<_VivaEventPoolCreated>(
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
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
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
  const factory _VivaEventPoolCreated({required BigInt poolId}) =
      _$_VivaEventPoolCreated;

  BigInt get poolId;
  @JsonKey(ignore: true)
  _$VivaEventPoolCreatedCopyWith<_VivaEventPoolCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VivaEventDepositCopyWith<$Res> {
  factory _$VivaEventDepositCopyWith(
          _VivaEventDeposit value, $Res Function(_VivaEventDeposit) then) =
      __$VivaEventDepositCopyWithImpl<$Res>;
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$VivaEventDepositCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res>
    implements _$VivaEventDepositCopyWith<$Res> {
  __$VivaEventDepositCopyWithImpl(
      _VivaEventDeposit _value, $Res Function(_VivaEventDeposit) _then)
      : super(_value, (v) => _then(v as _VivaEventDeposit));

  @override
  _VivaEventDeposit get _value => super._value as _VivaEventDeposit;

  @override
  $Res call({
    Object? address = freezed,
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VivaEventDeposit(
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
            other is _VivaEventDeposit &&
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
  _$VivaEventDepositCopyWith<_VivaEventDeposit> get copyWith =>
      __$VivaEventDepositCopyWithImpl<_VivaEventDeposit>(this, _$identity);

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
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
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
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) = _$_VivaEventDeposit;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$VivaEventDepositCopyWith<_VivaEventDeposit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VivaEventWithdrawCopyWith<$Res> {
  factory _$VivaEventWithdrawCopyWith(
          _VivaEventWithdraw value, $Res Function(_VivaEventWithdraw) then) =
      __$VivaEventWithdrawCopyWithImpl<$Res>;
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$VivaEventWithdrawCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res>
    implements _$VivaEventWithdrawCopyWith<$Res> {
  __$VivaEventWithdrawCopyWithImpl(
      _VivaEventWithdraw _value, $Res Function(_VivaEventWithdraw) _then)
      : super(_value, (v) => _then(v as _VivaEventWithdraw));

  @override
  _VivaEventWithdraw get _value => super._value as _VivaEventWithdraw;

  @override
  $Res call({
    Object? address = freezed,
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VivaEventWithdraw(
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
            other is _VivaEventWithdraw &&
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
  _$VivaEventWithdrawCopyWith<_VivaEventWithdraw> get copyWith =>
      __$VivaEventWithdrawCopyWithImpl<_VivaEventWithdraw>(this, _$identity);

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
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
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
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) = _$_VivaEventWithdraw;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$VivaEventWithdrawCopyWith<_VivaEventWithdraw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VivaEventEmergencyWithdrawCopyWith<$Res> {
  factory _$VivaEventEmergencyWithdrawCopyWith(
          _VivaEventEmergencyWithdraw value,
          $Res Function(_VivaEventEmergencyWithdraw) then) =
      __$VivaEventEmergencyWithdrawCopyWithImpl<$Res>;
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$VivaEventEmergencyWithdrawCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res>
    implements _$VivaEventEmergencyWithdrawCopyWith<$Res> {
  __$VivaEventEmergencyWithdrawCopyWithImpl(_VivaEventEmergencyWithdraw _value,
      $Res Function(_VivaEventEmergencyWithdraw) _then)
      : super(_value, (v) => _then(v as _VivaEventEmergencyWithdraw));

  @override
  _VivaEventEmergencyWithdraw get _value =>
      super._value as _VivaEventEmergencyWithdraw;

  @override
  $Res call({
    Object? address = freezed,
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VivaEventEmergencyWithdraw(
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
            other is _VivaEventEmergencyWithdraw &&
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
  _$VivaEventEmergencyWithdrawCopyWith<_VivaEventEmergencyWithdraw>
      get copyWith => __$VivaEventEmergencyWithdrawCopyWithImpl<
          _VivaEventEmergencyWithdraw>(this, _$identity);

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
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)? claim,
    TResult Function(VmLog vmLog)? unknown,
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
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
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
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) = _$_VivaEventEmergencyWithdraw;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$VivaEventEmergencyWithdrawCopyWith<_VivaEventEmergencyWithdraw>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VivaEventClaimCopyWith<$Res> {
  factory _$VivaEventClaimCopyWith(
          _VivaEventClaim value, $Res Function(_VivaEventClaim) then) =
      __$VivaEventClaimCopyWithImpl<$Res>;
  $Res call({Address address, BigInt poolId, BigInt amount});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$VivaEventClaimCopyWithImpl<$Res> extends _$VivaEventCopyWithImpl<$Res>
    implements _$VivaEventClaimCopyWith<$Res> {
  __$VivaEventClaimCopyWithImpl(
      _VivaEventClaim _value, $Res Function(_VivaEventClaim) _then)
      : super(_value, (v) => _then(v as _VivaEventClaim));

  @override
  _VivaEventClaim get _value => super._value as _VivaEventClaim;

  @override
  $Res call({
    Object? address = freezed,
    Object? poolId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_VivaEventClaim(
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
            other is _VivaEventClaim &&
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
  _$VivaEventClaimCopyWith<_VivaEventClaim> get copyWith =>
      __$VivaEventClaimCopyWithImpl<_VivaEventClaim>(this, _$identity);

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
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
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
      {required Address address,
      required BigInt poolId,
      required BigInt amount}) = _$_VivaEventClaim;

  Address get address;
  BigInt get poolId;
  BigInt get amount;
  @JsonKey(ignore: true)
  _$VivaEventClaimCopyWith<_VivaEventClaim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VivaEventUnknownCopyWith<$Res> {
  factory _$VivaEventUnknownCopyWith(
          _VivaEventUnknown value, $Res Function(_VivaEventUnknown) then) =
      __$VivaEventUnknownCopyWithImpl<$Res>;
  $Res call({VmLog vmLog});

  $VmLogCopyWith<$Res> get vmLog;
}

/// @nodoc
class __$VivaEventUnknownCopyWithImpl<$Res>
    extends _$VivaEventCopyWithImpl<$Res>
    implements _$VivaEventUnknownCopyWith<$Res> {
  __$VivaEventUnknownCopyWithImpl(
      _VivaEventUnknown _value, $Res Function(_VivaEventUnknown) _then)
      : super(_value, (v) => _then(v as _VivaEventUnknown));

  @override
  _VivaEventUnknown get _value => super._value as _VivaEventUnknown;

  @override
  $Res call({
    Object? vmLog = freezed,
  }) {
    return _then(_VivaEventUnknown(
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
            other is _VivaEventUnknown &&
            const DeepCollectionEquality().equals(other.vmLog, vmLog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(vmLog));

  @JsonKey(ignore: true)
  @override
  _$VivaEventUnknownCopyWith<_VivaEventUnknown> get copyWith =>
      __$VivaEventUnknownCopyWithImpl<_VivaEventUnknown>(this, _$identity);

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
    TResult Function(BigInt poolId)? poolCreated,
    TResult Function(Address address, BigInt poolId, BigInt amount)? deposit,
    TResult Function(Address address, BigInt poolId, BigInt amount)? withdraw,
    TResult Function(Address address, BigInt poolId, BigInt amount)?
        emergencyWithdraw,
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
    TResult Function(_VivaEventPoolCreated value)? poolCreated,
    TResult Function(_VivaEventDeposit value)? deposit,
    TResult Function(_VivaEventWithdraw value)? withdraw,
    TResult Function(_VivaEventEmergencyWithdraw value)? emergencyWithdraw,
    TResult Function(_VivaEventClaim value)? claim,
    TResult Function(_VivaEventUnknown value)? unknown,
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
  const factory _VivaEventUnknown({required VmLog vmLog}) = _$_VivaEventUnknown;

  VmLog get vmLog;
  @JsonKey(ignore: true)
  _$VivaEventUnknownCopyWith<_VivaEventUnknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PoolFilterTearOff {
  const _$PoolFilterTearOff();

  _PoolFilter call(
      {bool stakedOnly = false,
      bool ended = false,
      PoolSortOrder sortOrder = PoolSortOrder.byDefault,
      String searchTerm = ''}) {
    return _PoolFilter(
      stakedOnly: stakedOnly,
      ended: ended,
      sortOrder: sortOrder,
      searchTerm: searchTerm,
    );
  }
}

/// @nodoc
const $PoolFilter = _$PoolFilterTearOff();

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
      _$PoolFilterCopyWithImpl<$Res>;
  $Res call(
      {bool stakedOnly,
      bool ended,
      PoolSortOrder sortOrder,
      String searchTerm});
}

/// @nodoc
class _$PoolFilterCopyWithImpl<$Res> implements $PoolFilterCopyWith<$Res> {
  _$PoolFilterCopyWithImpl(this._value, this._then);

  final PoolFilter _value;
  // ignore: unused_field
  final $Res Function(PoolFilter) _then;

  @override
  $Res call({
    Object? stakedOnly = freezed,
    Object? ended = freezed,
    Object? sortOrder = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_value.copyWith(
      stakedOnly: stakedOnly == freezed
          ? _value.stakedOnly
          : stakedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as PoolSortOrder,
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PoolFilterCopyWith<$Res> implements $PoolFilterCopyWith<$Res> {
  factory _$PoolFilterCopyWith(
          _PoolFilter value, $Res Function(_PoolFilter) then) =
      __$PoolFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool stakedOnly,
      bool ended,
      PoolSortOrder sortOrder,
      String searchTerm});
}

/// @nodoc
class __$PoolFilterCopyWithImpl<$Res> extends _$PoolFilterCopyWithImpl<$Res>
    implements _$PoolFilterCopyWith<$Res> {
  __$PoolFilterCopyWithImpl(
      _PoolFilter _value, $Res Function(_PoolFilter) _then)
      : super(_value, (v) => _then(v as _PoolFilter));

  @override
  _PoolFilter get _value => super._value as _PoolFilter;

  @override
  $Res call({
    Object? stakedOnly = freezed,
    Object? ended = freezed,
    Object? sortOrder = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_PoolFilter(
      stakedOnly: stakedOnly == freezed
          ? _value.stakedOnly
          : stakedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as PoolSortOrder,
      searchTerm: searchTerm == freezed
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

  @JsonKey()
  @override
  final bool stakedOnly;
  @JsonKey()
  @override
  final bool ended;
  @JsonKey()
  @override
  final PoolSortOrder sortOrder;
  @JsonKey()
  @override
  final String searchTerm;

  @override
  String toString() {
    return 'PoolFilter(stakedOnly: $stakedOnly, ended: $ended, sortOrder: $sortOrder, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PoolFilter &&
            const DeepCollectionEquality()
                .equals(other.stakedOnly, stakedOnly) &&
            const DeepCollectionEquality().equals(other.ended, ended) &&
            const DeepCollectionEquality().equals(other.sortOrder, sortOrder) &&
            const DeepCollectionEquality()
                .equals(other.searchTerm, searchTerm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stakedOnly),
      const DeepCollectionEquality().hash(ended),
      const DeepCollectionEquality().hash(sortOrder),
      const DeepCollectionEquality().hash(searchTerm));

  @JsonKey(ignore: true)
  @override
  _$PoolFilterCopyWith<_PoolFilter> get copyWith =>
      __$PoolFilterCopyWithImpl<_PoolFilter>(this, _$identity);
}

abstract class _PoolFilter implements PoolFilter {
  const factory _PoolFilter(
      {bool stakedOnly,
      bool ended,
      PoolSortOrder sortOrder,
      String searchTerm}) = _$_PoolFilter;

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
  _$PoolFilterCopyWith<_PoolFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
