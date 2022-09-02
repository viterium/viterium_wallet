import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../main_card/main_card.dart';
import '../tokens/token_pair_widget.dart';
import '../widgets/sheet_util.dart';
import 'vitc_stake_providers.dart';
import 'vitc_stake_sheet.dart';
import 'vitc_stake_types.dart';

class VitcStakePoolCard extends ConsumerWidget {
  final VitcPoolInfoAll poolInfo;
  const VitcStakePoolCard({Key? key, required this.poolInfo}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final stakingSymbol = poolInfo.stakingTokenInfo.tokenSymbol;

    final hasLockTime = poolInfo.timelock != BigInt.zero;
    final lockTime = Duration(seconds: poolInfo.timelock.toInt());
    final lockTimeStr = lockTime.inDays > 1
        ? '${lockTime.inDays} Days'
        : lockTime.inHours > 0
            ? '${lockTime.inHours} Hours'
            : '${lockTime.inMinutes} Minutes';

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
          final scaffold = ref.read(homePageScaffoldKeyProvider);
          Sheets.showAppHeightEightSheet(
            context: scaffold.currentContext ?? context,
            theme: theme,
            widget: VitcStakeSheet(poolInfo: poolInfo),
            backgroundColor: theme.background,
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
            child: Row(children: [
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
                        'Earn ${poolInfo.rewardTokenInfo.tokenSymbol}',
                        textAlign: TextAlign.start,
                        style: styles.textStyleTransactionType,
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text:
                              'Stake ${poolInfo.stakingTokenInfo.tokenSymbol}',
                          style: styles.textStyleTransactionUnit,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Consumer(builder: (context, ref, _) {
                final apr =
                    ref.watch(vitcStakeAprForPoolInfoProvider(poolInfo));
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
              }),
            ]),
          ),
        ),
      ),
    );
  }
}
