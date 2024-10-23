// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viva_staking_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VivaPoolInfoImpl _$$VivaPoolInfoImplFromJson(Map json) => _$VivaPoolInfoImpl(
      stakingToken: Token.fromJson(json['stakingToken'] as String),
      rewardToken: Token.fromJson(json['rewardToken'] as String),
      totalStakingBalance: BigInt.parse(json['totalStakingBalance'] as String),
      totalRewardBalance: BigInt.parse(json['totalRewardBalance'] as String),
      startBlock: BigInt.parse(json['startBlock'] as String),
      endBlock: BigInt.parse(json['endBlock'] as String),
      latestRewardBlock: BigInt.parse(json['latestRewardBlock'] as String),
      rewardPerPeriod: BigInt.parse(json['rewardPerPeriod'] as String),
      rewardPerToken: BigInt.parse(json['rewardPerToken'] as String),
      paidOut: BigInt.parse(json['paidOut'] as String),
      poolId: BigInt.parse(json['poolId'] as String),
    );

Map<String, dynamic> _$$VivaPoolInfoImplToJson(_$VivaPoolInfoImpl instance) =>
    <String, dynamic>{
      'stakingToken': instance.stakingToken.toJson(),
      'rewardToken': instance.rewardToken.toJson(),
      'totalStakingBalance': instance.totalStakingBalance.toString(),
      'totalRewardBalance': instance.totalRewardBalance.toString(),
      'startBlock': instance.startBlock.toString(),
      'endBlock': instance.endBlock.toString(),
      'latestRewardBlock': instance.latestRewardBlock.toString(),
      'rewardPerPeriod': instance.rewardPerPeriod.toString(),
      'rewardPerToken': instance.rewardPerToken.toString(),
      'paidOut': instance.paidOut.toString(),
      'poolId': instance.poolId.toString(),
    };

_$VivaExtraPoolInfoImpl _$$VivaExtraPoolInfoImplFromJson(Map json) =>
    _$VivaExtraPoolInfoImpl(
      minimumDeposit: BigInt.parse(json['minimumDeposit'] as String),
      maximumTotalStakingBalance:
          BigInt.parse(json['maximumTotalStakingBalance'] as String),
      lockTime: BigInt.parse(json['lockTime'] as String),
    );

Map<String, dynamic> _$$VivaExtraPoolInfoImplToJson(
        _$VivaExtraPoolInfoImpl instance) =>
    <String, dynamic>{
      'minimumDeposit': instance.minimumDeposit.toString(),
      'maximumTotalStakingBalance':
          instance.maximumTotalStakingBalance.toString(),
      'lockTime': instance.lockTime.toString(),
    };

_$VivaPoolInfoAllImpl _$$VivaPoolInfoAllImplFromJson(Map json) =>
    _$VivaPoolInfoAllImpl(
      poolInfo: VivaPoolInfo.fromJson(
          Map<String, dynamic>.from(json['poolInfo'] as Map)),
      extra: VivaExtraPoolInfo.fromJson(
          Map<String, dynamic>.from(json['extra'] as Map)),
      stakingTokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['stakingTokenInfo'] as Map)),
      rewardTokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['rewardTokenInfo'] as Map)),
    );

Map<String, dynamic> _$$VivaPoolInfoAllImplToJson(
        _$VivaPoolInfoAllImpl instance) =>
    <String, dynamic>{
      'poolInfo': instance.poolInfo.toJson(),
      'extra': instance.extra.toJson(),
      'stakingTokenInfo': instance.stakingTokenInfo.toJson(),
      'rewardTokenInfo': instance.rewardTokenInfo.toJson(),
    };

_$VivaPoolsCacheImpl _$$VivaPoolsCacheImplFromJson(Map json) =>
    _$VivaPoolsCacheImpl(
      pools: json['pools'] == null
          ? const IMapConst({})
          : _poolsFromJson(json['pools'] as Map),
    );

Map<String, dynamic> _$$VivaPoolsCacheImplToJson(
        _$VivaPoolsCacheImpl instance) =>
    <String, dynamic>{
      'pools': instance.pools.toJson(
        (value) => value.toString(),
        (value) => value.toJson(),
      ),
    };
