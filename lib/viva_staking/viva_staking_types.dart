import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'viva_staking_types.freezed.dart';

@freezed
class VivaPoolInfo with _$VivaPoolInfo {
  const VivaPoolInfo._();
  const factory VivaPoolInfo({
    required Token stakingToken,
    required Token rewardToken,
    required BigInt totalStakingBalance,
    required BigInt totalRewardBalance,
    required BigInt startBlock,
    required BigInt endBlock,
    required BigInt latestRewardBlock,
    required BigInt rewardPerPeriod,
    required BigInt rewardPerToken,
    required BigInt paidOut,
    required BigInt poolId,
  }) = _VivaPoolInfo;

  factory VivaPoolInfo.fromList(List<Object> list) => VivaPoolInfo(
        stakingToken: list[0] as Token,
        rewardToken: list[1] as Token,
        totalStakingBalance: list[2] as BigInt,
        totalRewardBalance: list[3] as BigInt,
        startBlock: list[4] as BigInt,
        endBlock: list[5] as BigInt,
        latestRewardBlock: list[6] as BigInt,
        rewardPerPeriod: list[7] as BigInt,
        rewardPerToken: list[8] as BigInt,
        paidOut: list[9] as BigInt,
        poolId: list[10] as BigInt,
      );

  TokenId get stakingTokenId => stakingToken.tokenId;
  TokenId get rewardTokenId => rewardToken.tokenId;
}

@freezed
class VivaPoolInfoAll with _$VivaPoolInfoAll {
  const VivaPoolInfoAll._();
  const factory VivaPoolInfoAll({
    required VivaPoolInfo poolInfo,
    required VivaExtraPoolInfo extra,
    required TokenInfo stakingTokenInfo,
    required TokenInfo rewardTokenInfo,
  }) = _VivaPoolInfoAll;

  Token get stakingToken => poolInfo.stakingToken;
  TokenId get stakingTokenId => stakingToken.tokenId;
  Token get rewardToken => poolInfo.rewardToken;
  TokenId get rewardTokenId => rewardToken.tokenId;
  BigInt get totalStakingBalance => poolInfo.totalStakingBalance;
  BigInt get totalRewardBalance => poolInfo.totalRewardBalance;
  BigInt get startBlock => poolInfo.startBlock;
  BigInt get endBlock => poolInfo.endBlock;
  BigInt get latestRewardBlock => poolInfo.latestRewardBlock;
  BigInt get rewardPerPeriod => poolInfo.rewardPerPeriod;
  BigInt get rewardPerToken => poolInfo.rewardPerToken;
  BigInt get paidOut => poolInfo.paidOut;
  BigInt get poolId => poolInfo.poolId;
  BigInt get minimumDeposit => extra.minimumDeposit;
  BigInt get maximumTotalStakingBalance => extra.maximumTotalStakingBalance;
  BigInt get lockTime => extra.lockTime;
}

@freezed
class VivaExtraPoolInfo with _$VivaExtraPoolInfo {
  const factory VivaExtraPoolInfo({
    required BigInt minimumDeposit,
    required BigInt maximumTotalStakingBalance,
    required BigInt lockTime,
  }) = _VivaExtraPoolInfo;

  factory VivaExtraPoolInfo.fromList(List<Object> list) => VivaExtraPoolInfo(
        minimumDeposit: list[0] as BigInt,
        maximumTotalStakingBalance: list[1] as BigInt,
        lockTime: list[2] as BigInt,
      );
}

@freezed
class VivaUserInfo with _$VivaUserInfo {
  const factory VivaUserInfo({
    required BigInt stakingBalance,
    required BigInt rewardDebt,
  }) = _VivaUserInfo;

  factory VivaUserInfo.fromList(List<Object> list) => VivaUserInfo(
        stakingBalance: list[0] as BigInt,
        rewardDebt: list[1] as BigInt,
      );

  static final empty = VivaUserInfo(
    stakingBalance: BigInt.zero,
    rewardDebt: BigInt.zero,
  );
}

@freezed
class VivaEvent with _$VivaEvent {
  const factory VivaEvent.poolCreated({
    required BigInt poolId,
  }) = _VivaEventPoolCreated;

  const factory VivaEvent.deposit({
    required Address address,
    required BigInt poolId,
    required BigInt amount,
  }) = _VivaEventDeposit;

  const factory VivaEvent.withdraw({
    required Address address,
    required BigInt poolId,
    required BigInt amount,
  }) = _VivaEventWithdraw;

  const factory VivaEvent.emergencyWithdraw({
    required Address address,
    required BigInt poolId,
    required BigInt amount,
  }) = _VivaEventEmergencyWithdraw;

  const factory VivaEvent.claim({
    required Address address,
    required BigInt poolId,
    required BigInt amount,
  }) = _VivaEventClaim;

  const factory VivaEvent.unknown({
    required VmLog vmLog,
  }) = _VivaEventUnknown;
}

enum PoolSortOrder {
  byDefault,
  byApr,
  byTotalStaked,
}

@freezed
class PoolFilter with _$PoolFilter {
  const factory PoolFilter({
    @Default(false) bool stakedOnly,
    @Default(false) bool ended,
    @Default(PoolSortOrder.byDefault) PoolSortOrder sortOrder,
    @Default('') String searchTerm,
  }) = _PoolFilter;
}
