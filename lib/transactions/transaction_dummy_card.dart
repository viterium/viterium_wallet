import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';

class TransactionDummyCard extends ConsumerWidget {
  final String type;
  final String amount;
  final String address;
  final String tokenSymbol;

  const TransactionDummyCard({
    super.key,
    required this.type,
    required this.amount,
    required this.address,
    required this.tokenSymbol,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    String text;
    IconData icon;
    Color iconColor;

    if (type == l10n.sent) {
      text = l10n.sent;
      icon = AppIcons.sent;
      iconColor = theme.text60;
    } else {
      text = l10n.received;
      icon = AppIcons.received;
      iconColor = theme.primary60;
    }

    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: TextButton(
        style: styles.cardButtonStyle,
        onPressed: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.only(end: 16),
                      child: Icon(icon, color: iconColor, size: 20),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          textAlign: TextAlign.start,
                          style: styles.textStyleTransactionType,
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: '',
                            children: [
                              TextSpan(
                                text: amount,
                                style: styles.textStyleTransactionAmount,
                              ),
                              TextSpan(
                                text: ' $tokenSymbol',
                                style: styles.textStyleTransactionUnit,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  address,
                  textAlign: TextAlign.end,
                  style: styles.textStyleTransactionAddress,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
