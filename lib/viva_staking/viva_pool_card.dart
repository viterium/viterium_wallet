import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../tokens/token_icon_widget.dart';
import '../widgets/sheet_util.dart';
import 'viva_staking_sheet.dart';
import 'viva_staking_types.dart';

class VivaPoolCard extends ConsumerWidget {
  final VivaPoolInfo poolInfo;
  const VivaPoolCard({Key? key, required this.poolInfo}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
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
          Sheets.showAppHeightEightSheet(
            context: context,
            theme: theme,
            widget: VivaStakingSheet(poolInfo: poolInfo),
            backgroundColor: theme.background,
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  TokenIconWidget(tokenId: poolInfo.rewardToken.tokenId),
                  const SizedBox(width: 16),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Earn ${poolInfo.rewardToken.tokenSymbol}',
                          textAlign: TextAlign.start,
                          style: styles.textStyleTransactionType,
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: 'Stake ${poolInfo.stakingToken.tokenSymbol}',
                            style: styles.textStyleTransactionUnit,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
