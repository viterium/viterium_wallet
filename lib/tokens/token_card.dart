import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../send_sheet/balance_text_widget.dart';
import '../util/numberutil.dart';
import '../widgets/sheet_util.dart';
import 'token_icon_widget.dart';
import 'token_sheet.dart';

const defaultTokenIconUrl = 'assets/token_icons/default.png';

class TokenCard extends ConsumerWidget {
  final BalanceInfo item;

  const TokenCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final tokenId = item.tokenInfo.tokenId;
    final symbolLabel = item.tokenInfo.symbolLabel;

    final formatedBalance = NumberUtil.formatedBalance(item);
    final fiatValue = ref.watch(formatedFiatValueForTokenProvider(tokenId));

    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: TextButton(
        style: styles.cardButtonStyle,
        onPressed: () {
          final action = ref.read(tokenCardActionProvider);
          switch (action) {
            case TokenCardAction.showTokenSheet:
              Sheets.showAppHeightNineSheet(
                context: context,
                widget: TokenSheet(tokenInfo: item.tokenInfo),
                theme: theme,
                backgroundColor: theme.background,
              );
              break;
            case TokenCardAction.selectToken:
              final selectedToken = ref.read(selectedTokenProvider.notifier);
              selectedToken.state = item.tokenInfo;

              Navigator.of(context).pop();
              break;
            case TokenCardAction.vitcSwapSelectFromToken:
              final settings = ref.read(vitcSwapSettingsProvider.notifier);
              settings.updateFromToken(item.tokenInfo);

              Navigator.of(context).pop();
              break;
            case TokenCardAction.vitcSwapSelectToToken:
              final settings = ref.read(vitcSwapSettingsProvider.notifier);
              settings.updateToToken(item.tokenInfo);

              Navigator.of(context).pop();
              break;
          }
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
                  TokenIconWidget(tokenId: tokenId),
                  const SizedBox(width: 12),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.tokenInfo.tokenName,
                          textAlign: TextAlign.start,
                          style: styles.textStyleTransactionType,
                        ),
                        Text(
                          symbolLabel,
                          textAlign: TextAlign.start,
                          style: styles.textStyleTransactionUnit,
                        ),
                      ],
                    ),
                  ),
                ]),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        formatedBalance,
                        textAlign: TextAlign.end,
                        style: styles.textStyleTransactionAddress,
                      ),
                      Text(
                        '≈ $fiatValue',
                        textAlign: TextAlign.end,
                        style: styles.textStyleTransactionAmount,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
