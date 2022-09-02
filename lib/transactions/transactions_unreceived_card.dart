import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'unreceived_providers.dart';

final _topBalanceByValueProvider =
    Provider.autoDispose.family<BalanceInfo?, AccountInfo>((ref, accountInfo) {
  if (accountInfo.balances.isEmpty) {
    return null;
  }
  final exchangeRates = ref.watch(exchangeRatesProvider);
  final tokenIds = accountInfo.balances.keys;
  double valueForTokenId(TokenId tokenId) =>
      (exchangeRates[tokenId]?.usdRate ?? 0) *
      (accountInfo.balances[tokenId]?.value.toDouble() ?? 0);

  var topTokenId = tokenIds.first;
  var topValue = valueForTokenId(topTokenId);
  for (final tokenId in tokenIds.skip(1)) {
    final value = valueForTokenId(tokenId);
    if (value > topValue) {
      topTokenId = tokenId;
      topValue = value;
    }
  }
  return accountInfo.balances[topTokenId];
});

class TransactionsUnreceivedCard extends ConsumerWidget {
  const TransactionsUnreceivedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);
    final unreceived = ref.watch(unreceivedProvider(account.address));

    final topBalance = ref.watch(_topBalanceByValueProvider(unreceived));
    final fiatValue = ref.watch(fiatFormatedForTotalValueProvider(unreceived));

    final totalBalances = unreceived.balances.length;
    final tagText = totalBalances > 2
        ? '+${totalBalances - 1} other tokens'
        : '+1 other token';

    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(end: 12),
                    child:
                        Icon(Icons.receipt, color: theme.primary60, size: 20),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Unreceived',
                            textAlign: TextAlign.start,
                            style: styles.textStyleTransactionType,
                          ),
                          const SizedBox(height: 4),
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '${unreceived.blockCount}',
                                  style: styles.textStyleTransactionAmount,
                                ),
                                TextSpan(
                                  text: unreceived.blockCount > 1
                                      ? ' Transactions'.toUpperCase()
                                      : ' Transaction'.toUpperCase(),
                                  style: styles.textStyleTransactionUnit,
                                ),
                              ],
                            ),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (topBalance != null)
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: topBalance.value.toStringAsFixed(
                                  topBalance.value.isInteger ? 0 : 4),
                              style: styles.textStyleTransactionAmount,
                            ),
                            TextSpan(
                              text: ' ${topBalance.tokenInfo.symbolLabel}',
                              style: styles.textStyleTransactionUnit,
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (unreceived.balances.length > 1)
                    Container(
                      margin: const EdgeInsetsDirectional.only(top: 4),
                      padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
                      decoration: BoxDecoration(
                        color: theme.text10,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        tagText,
                        style: styles.tagText,
                      ),
                    )
                  else
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          '≈ $fiatValue',
                          textAlign: TextAlign.end,
                          style: styles.textStyleTransactionAmount,
                          maxLines: 2,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
