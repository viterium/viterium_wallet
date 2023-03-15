import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vitc_stake_types.freezed.dart';

@freezed
class VitcPoolInfo with _$VitcPoolInfo {
  const VitcPoolInfo._();
  const factory VitcPoolInfo({
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
    required BigInt removedDecimals,
    required BigInt timelock,
    required BigInt poolId,
  }) = _VitcPoolInfo;

  factory VitcPoolInfo.fromList(List<Object> list) => VitcPoolInfo(
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
        removedDecimals: list[10] as BigInt,
        timelock: list[11] as BigInt,
        poolId: list[12] as BigInt,
      );

  TokenId get stakingTokenId => stakingToken.tokenId;
  TokenId get rewardTokenId => rewardToken.tokenId;

  bool get hasShortTimeLock =>
      timelock > BigInt.zero && timelock < endBlock - startBlock;
}

@freezed
class VitcPoolInfoAll with _$VitcPoolInfoAll {
  const VitcPoolInfoAll._();
  const factory VitcPoolInfoAll({
    required VitcPoolInfo poolInfo,
    required TokenInfo stakingTokenInfo,
    required TokenInfo rewardTokenInfo,
  }) = _VitcPoolInfoAll;

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
  BigInt get removedDecimals => poolInfo.removedDecimals;
  BigInt get timelock => poolInfo.timelock;
  BigInt get poolId => poolInfo.poolId;

  bool get hasShortTimeLock => poolInfo.hasShortTimeLock;
}

@freezed
class VitcStakeUserInfo with _$VitcStakeUserInfo {
  const factory VitcStakeUserInfo({
    required BigInt stakingBalance,
    required BigInt rewardDebt,
    required BigInt depositBlock,
  }) = _VitcStakeUserInfo;

  factory VitcStakeUserInfo.fromList(List<Object> list) => VitcStakeUserInfo(
        stakingBalance: list[0] as BigInt,
        rewardDebt: list[1] as BigInt,
        depositBlock: list[2] as BigInt,
      );

  static final empty = VitcStakeUserInfo(
    stakingBalance: BigInt.zero,
    rewardDebt: BigInt.zero,
    depositBlock: BigInt.zero,
  );
}

@freezed
class VitcStakeEvent with _$VitcStakeEvent {
  const factory VitcStakeEvent.poolCreated({
    required BigInt poolId,
  }) = _VitcStakeEventPoolCreated;

  const factory VitcStakeEvent.deposit({
    required Address address,
    required BigInt poolId,
    required BigInt amount,
  }) = _VitcStakeEventDeposit;

  const factory VitcStakeEvent.withdraw({
    required Address address,
    required BigInt poolId,
    required BigInt amount,
  }) = _VitcStakeEventWithdraw;

  const factory VitcStakeEvent.claim({
    required Address address,
    required BigInt poolId,
    required BigInt amount,
  }) = _VitcStakeEventClaim;
}
