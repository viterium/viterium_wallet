import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import '../tokens/token_pair_widget.dart';
import 'viva_pool_info_widget.dart';
import 'viva_staking_types.dart';

class VivaPoolDetailsCard extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;
  const VivaPoolDetailsCard({
    Key? key,
    required this.poolInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final rewardTokenId = poolInfo.rewardTokenId;
    final stakingTokenId = poolInfo.stakingTokenId;
    final rewardTokenInfo = poolInfo.rewardTokenInfo;
    final stakingTokenInfo = poolInfo.stakingTokenInfo;

    return Container(
      margin: const EdgeInsets.only(left: 14, right: 14, top: 10),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
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
            VivaPoolInfoWidget(poolInfo: poolInfo),
          ],
        ),
      ),
    );
  }
}
