import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../tokens/token_pair_widget.dart';
import '../util/numberutil.dart';
import '../widgets/sheet_util.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_sheet.dart';
import 'viva_staking_types.dart';

class VivaPoolCard extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;
  const VivaPoolCard({super.key, required this.poolInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final stakingSymbol = poolInfo.stakingTokenInfo.tokenSymbol;

    final hasLockTime = poolInfo.lockTime != BigInt.zero;
    final lockTime = Duration(seconds: poolInfo.lockTime.toInt());
    final lockTimeStr =
        lockTime.inDays > 1
            ? '${lockTime.inDays} Days'
            : lockTime.inHours > 0
            ? '${lockTime.inHours} Hours'
            : '${lockTime.inMinutes} Minutes';

    final minDeposit = Amount.raw(
      poolInfo.minimumDeposit,
      tokenInfo: poolInfo.stakingTokenInfo,
    );

    final hasMinDeposit = minDeposit.raw != BigInt.zero;
    final minDepositStr = NumberUtil.formatedAmount(minDeposit);

    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: TextButton(
        style: styles.cardButtonStyle,
        onPressed: () {
          // Refresh selected pool
          final notifier = ref.read(vivaPoolsNotifierProvider.notifier);
          notifier.refreshPoolWithId(poolInfo.poolId);

          final scaffold = ref.read(homePageScaffoldKeyProvider);
          Sheets.showAppHeightNineSheet(
            context: scaffold.currentContext ?? context,
            theme: theme,
            widget: VivaStakingSheet(poolInfo: poolInfo),
            backgroundColor: theme.background,
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Row(
              children: [
                TokenPairWidget(
                  mainTokenId: poolInfo.rewardTokenId,
                  secondaryTokenId: poolInfo.stakingTokenId,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Earn ${poolInfo.rewardTokenInfo.tokenName}',
                          textAlign: TextAlign.start,
                          style: styles.textStyleTransactionType,
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text:
                                'Stake ${poolInfo.stakingTokenInfo.tokenName}',
                            style: styles.textStyleTransactionUnit,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 2),
                          child: Row(
                            children: [
                              if (hasLockTime) ...[
                                Icon(
                                  Icons.lock_clock_outlined,
                                  color: theme.text60,
                                  size: 19,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  lockTimeStr,
                                  style: styles.textStyleTransactionUnit
                                      .copyWith(color: theme.text60),
                                ),
                                const SizedBox(width: 16),
                              ],
                              if (hasMinDeposit) ...[
                                Icon(
                                  Icons.chevron_right,
                                  color: theme.text60,
                                  size: 23,
                                ),
                                Text(
                                  '$minDepositStr $stakingSymbol',
                                  style: styles.textStyleTransactionUnit
                                      .copyWith(color: theme.text60),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Consumer(
                  builder: (context, ref, _) {
                    final apr = ref.watch(vivaAprForPoolInfoProvider(poolInfo));
                    return apr.maybeWhen(
                      data: (data) {
                        if (data.isEmpty) {
                          return const SizedBox();
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'APR',
                              textAlign: TextAlign.end,
                              style: styles.textStyleTransactionType,
                            ),
                            Text(
                              data,
                              textAlign: TextAlign.end,
                              style: styles.textStyleAddressPrimary,
                            ),
                          ],
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
