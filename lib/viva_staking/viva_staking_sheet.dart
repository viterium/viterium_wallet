import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/core.dart';

import '../app_providers.dart';
import '../tokens/token_pair_widget.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_handle.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_types.dart';

class VivaStakingSheet extends ConsumerWidget {
  final VivaPoolInfo poolInfo;
  const VivaStakingSheet({Key? key, required this.poolInfo}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final rewardTokenId = poolInfo.rewardToken.tokenId;
    final stakingTokenId = poolInfo.stakingToken.tokenId;
    final rewardTokenInfo = poolInfo.rewardToken;
    final stakingTokenInfo = poolInfo.stakingToken;

    ref.watch(vivaPoolInfoForPoolIdProvider(poolInfo.poolId));

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SheetHandle(),
                Container(
                  margin: const EdgeInsets.only(left: 14, right: 14, top: 10),
                  decoration: BoxDecoration(
                    color: theme.backgroundDark,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [theme.boxShadow],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              TokenPairWidget(
                                mainTokenId: rewardTokenId,
                                secondaryTokenId: stakingTokenId,
                              ),
                              const SizedBox(width: 16),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Earn ${rewardTokenInfo.tokenName}',
                                      style: styles.textStyleTransactionType,
                                    ),
                                    Text(
                                      'Stake ${stakingTokenInfo.tokenName}',
                                      textAlign: TextAlign.start,
                                      style: styles.textStyleTransactionUnit,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ],
                        ),
                        Consumer(builder: (context, ref, _) {
                          final userInfo =
                              ref.watch(vivaUserInfoProvider(poolInfo.poolId));
                          final newInfo = ref.watch(
                              vivaPoolInfoForPoolIdProvider(poolInfo.poolId));
                          final latestBlock = ref.watch(snapshotTickerProvider);
                          final stakingSymbol = stakingTokenInfo.tokenSymbol;
                          final rewardSymbol = rewardTokenInfo.tokenSymbol;
                          final heightStr = latestBlock.asData?.value.height;
                          var height = BigInt.parse(heightStr!);
                          if (height > newInfo!.endBlock) {
                            height = newInfo.endBlock;
                          }
                          var blocks = '-';

                          final end = poolInfo.endBlock - height;
                          var blockDelta = height - newInfo.latestRewardBlock;
                          if (end.sign > 0) {
                            blocks = '$end';
                          } else {
                            blockDelta = BigInt.zero;
                          }
                          final totalStaked = Amount.raw(
                              newInfo.totalStakingBalance,
                              tokenInfo: stakingTokenInfo);
                          final totalEarnedRaw = (height - newInfo.startBlock) *
                              newInfo.rewardPerPeriod;
                          final totalEarned = Amount.raw(totalEarnedRaw,
                              tokenInfo: rewardTokenInfo);

                          var rewards = Amount.raw(
                            BigInt.zero,
                            tokenInfo: rewardTokenInfo,
                          );
                          final staked = Amount.raw(
                            userInfo.stakingBalance,
                            tokenInfo: stakingTokenInfo,
                          );
                          final rewardFactor = BigInt.from(10).pow(36);

                          if (userInfo.stakingBalance > BigInt.zero &&
                              blockDelta > BigInt.zero) {
                            final rewardPerToken = newInfo.rewardPerToken +
                                (newInfo.rewardPerPeriod *
                                    blockDelta *
                                    rewardFactor ~/
                                    newInfo.totalStakingBalance);
                            final pendingAmount = userInfo.stakingBalance *
                                    rewardPerToken ~/
                                    rewardFactor -
                                userInfo.rewardDebt;
                            rewards = Amount.raw(
                              pendingAmount,
                              tokenInfo: rewardTokenInfo,
                            );
                          }

                          return Container(
                            padding: const EdgeInsets.only(top: 20),
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Text(
                                              'Pool total $rewardSymbol earned',
                                              style: styles
                                                  .textStyleTransactionType,
                                            ),
                                            Text(
                                              '${totalEarned.value.toStringAsFixed(4)}',
                                              style: styles
                                                  .textStyleAddressPrimary,
                                            ),
                                          ]),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Text(
                                            'Pool total $stakingSymbol staked',
                                            style:
                                                styles.textStyleTransactionType,
                                          ),
                                          Text(
                                            '${totalStaked.value.toStringAsFixed(4)}',
                                            style:
                                                styles.textStyleAddressPrimary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Pool ends in ',
                                  style: styles.textStyleTransactionType,
                                ),
                                Text(
                                  '$blocks Blocks',
                                  style: styles.textStyleAddressPrimary,
                                ),
                                const SizedBox(height: 40),
                                Text(
                                  '$stakingSymbol staked',
                                  style: styles.textStyleTransactionType,
                                ),
                                Text(
                                  '${staked.value.toStringAsFixed(2)}',
                                  style: styles.textStyleAddressPrimary,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  '$rewardSymbol earned since last claim',
                                  style: styles.textStyleTransactionType,
                                ),
                                Text(
                                  '${rewards.value.toStringAsFixed(8)}',
                                  style: styles.textStyleAddressPrimary,
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  PrimaryButton(
                    title: 'Claim ${poolInfo.rewardToken.tokenSymbol}',
                    onPressed: () {
                      final service = ref.read(vivaStakingServiceProvider);
                      final account = ref.read(selectedAccountProvider);
                      service.claimRewards(
                        poolId: poolInfo.poolId,
                        address: account.address,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: PrimaryOutlineButton(
                          title: 'Stake',
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: PrimaryOutlineButton(
                          title: 'Withdraw',
                          onPressed: () {
                            final userInfo =
                                ref.read(vivaUserInfoProvider(poolInfo.poolId));
                            final newInfo = ref.read(
                                vivaPoolInfoForPoolIdProvider(poolInfo.poolId));
                            if (newInfo == null) {
                              return;
                            }
                            final service =
                                ref.read(vivaStakingServiceProvider);
                            final account = ref.read(selectedAccountProvider);
                            service.withdraw(
                              poolId: newInfo.poolId,
                              address: account.address,
                              rawValue: userInfo.stakingBalance,
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
