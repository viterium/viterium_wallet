import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'viva_staking_types.freezed.dart';

@freezed
class VivaPoolInfo with _$VivaPoolInfo {
  const factory VivaPoolInfo({
    required TokenInfo stakingToken,
    required TokenInfo rewardToken,
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
        stakingToken: list[0] as TokenInfo,
        rewardToken: list[1] as TokenInfo,
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
}

@freezed
class VivaWithdrawInput with _$VivaWithdrawInput {
  const VivaWithdrawInput._();
  const factory VivaWithdrawInput({
    required BigInt poolId,
    required BigInt amount,
  }) = _VivaWithdrawInput;

  List<Object> toList() => [poolId, amount];
}

@freezed
class VivaDepositInput with _$VivaDepositInput {
  const VivaDepositInput._();
  const factory VivaDepositInput({
    required BigInt poolId,
  }) = _VivaDepositInput;

  List<Object> toList() => [poolId];
}
