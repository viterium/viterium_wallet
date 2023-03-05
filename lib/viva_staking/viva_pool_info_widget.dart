import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/numberutil.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_types.dart';

class VivaPoolInfoWidget extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;
  const VivaPoolInfoWidget({
    Key? key,
    required this.poolInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final userInfo = ref.watch(vivaUserInfoProvider(poolInfo.poolId));

    final newInfo =
        ref.watch(vivaPoolInfoForPoolIdProvider(poolInfo.poolId)) ?? poolInfo;

    final rewardTokenInfo = poolInfo.rewardTokenInfo;
    final stakingTokenInfo = poolInfo.stakingTokenInfo;

    final stakingSymbol = stakingTokenInfo.tokenSymbol;
    final rewardSymbol = rewardTokenInfo.tokenSymbol;

    final lastSnapshotHeight = ref.watch(lastKnownSnapshotHeightProvider);
    var height = lastSnapshotHeight;

    final started = newInfo.startBlock < height;
    final ended = newInfo.endBlock < height;

    if (height > newInfo.endBlock) {
      height = newInfo.endBlock;
    }

    var blocks = BigInt.zero;
    var blocksStr = '-';

    final end = poolInfo.endBlock - height;
    var blockDelta = height - newInfo.latestRewardBlock;
    if (!started) {
      blocks = poolInfo.startBlock - height;
      blocksStr = '$blocks';
    } else if (!ended) {
      blocks = end;
      blocksStr = '$end';
    } else {
      blockDelta = BigInt.zero;
    }
    final totalStaked = Amount.raw(
      newInfo.totalStakingBalance,
      tokenInfo: stakingTokenInfo,
    );
    final totalEarnedRaw = started
        ? (height - newInfo.startBlock) * newInfo.rewardPerPeriod
        : BigInt.zero;
    final totalEarned = Amount.raw(
      totalEarnedRaw,
      tokenInfo: rewardTokenInfo,
    );
    final poolTotal = Amount.raw(
      poolInfo.totalRewardBalance,
      tokenInfo: rewardTokenInfo,
    );

    final time = Duration(seconds: blocks.toInt());
    final timeStr = time.inDays > 0
        ? '${time.inDays} Days ${time.inHours.remainder(24)} Hours'
        : '${time.inHours} Hours ${time.inMinutes.remainder(60)} Minutes';

    var rewards = Amount.raw(
      BigInt.zero,
      tokenInfo: rewardTokenInfo,
    );
    final staked = Amount.raw(
      userInfo.stakingBalance,
      tokenInfo: stakingTokenInfo,
    );
    final rewardFactor = BigInt.from(10).pow(36);

    if (userInfo.stakingBalance > BigInt.zero && blockDelta > BigInt.zero) {
      final rewardPerToken = newInfo.rewardPerToken +
          (newInfo.rewardPerPeriod *
              blockDelta *
              rewardFactor ~/
              newInfo.totalStakingBalance);
      final pendingAmount =
          userInfo.stakingBalance * rewardPerToken ~/ rewardFactor -
              userInfo.rewardDebt;
      rewards = Amount.raw(
        pendingAmount,
        tokenInfo: rewardTokenInfo,
      );
    }

    var unlocksInRaw = (ended ? BigInt.from(100) : poolInfo.lockTime) +
        userInfo.lastInteractionBlock -
        lastSnapshotHeight;
    if (unlocksInRaw > end) {
      unlocksInRaw = end;
    }

    final unlocksIn = Duration(seconds: unlocksInRaw.toInt());
    final unlocksInStr = unlocksIn.inDays > 0
        ? '${unlocksIn.inDays} Days ${unlocksIn.inHours.remainder(24)} Hours'
        : unlocksIn.inHours > 0
            ? '${unlocksIn.inHours} Hours ${unlocksIn.inMinutes.remainder(60)} Minutes'
            : '${unlocksIn.inMinutes} Minutes ${unlocksIn.inSeconds.remainder(60)} Seconds';
    final isLocked =
        unlocksInRaw.sign > 0 && userInfo.stakingBalance > BigInt.zero;

    return Container(
      padding: const EdgeInsets.only(top: 12),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Pool total $rewardSymbol earned',
                style: styles.textStyleTransactionType,
              ),
              Text(
                '${NumberUtil.formatedAmount(totalEarned)} / ${NumberUtil.formatedAmount(poolTotal)}',
                style: styles.textStyleAddressPrimary,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Pool total $stakingSymbol staked',
                style: styles.textStyleTransactionType,
              ),
              Text(
                '${NumberUtil.formatedAmount(totalStaked)}',
                style: styles.textStyleAddressPrimary,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      started ? 'Pool ends in ' : 'Pool starts in',
                      style: styles.textStyleTransactionType,
                    ),
                    Text(
                      '$blocksStr Blocks',
                      style: styles.textStyleAddressPrimary,
                    ),
                    Text(timeStr, style: styles.textStyleTransactionUnit),
                  ],
                ),
              ),
              if (isLocked)
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Unlocks in',
                        style: styles.textStyleTransactionType,
                      ),
                      Text(
                        '$unlocksInRaw Blocks',
                        style: styles.textStyleAddressPrimary,
                      ),
                      Text(unlocksInStr,
                          style: styles.textStyleTransactionUnit),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            '$stakingSymbol staked',
            style: styles.textStyleTransactionType,
          ),
          Text(
            '${NumberUtil.formatedAmount(staked)}',
            style: styles.textStyleAddressPrimary,
          ),
          const SizedBox(height: 20),
          Text(
            '$rewardSymbol earned since last claim',
            style: styles.textStyleTransactionType,
          ),
          Text(
            '${NumberUtil.formatedAmount(rewards)}',
            style: styles.textStyleAddressPrimary,
          ),
        ],
      ),
    );
  }
}
