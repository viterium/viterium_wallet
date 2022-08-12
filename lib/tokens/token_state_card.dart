import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'token_icon_widget.dart';
import 'token_types.dart';

const defaultTokenIconUrl = 'assets/token_icons/default.png';

class TokenStateCard extends ConsumerWidget {
  final TokenInfoState item;
  final ValueChanged<TokenState> onChanged;

  const TokenStateCard({
    Key? key,
    required this.item,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final tokenId = item.info.tokenId;
    final symbolLabel = item.info.symbolLabel;

    final balance = ref.watch(tokenBalanceDisplayProvider(tokenId));

    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    TokenIconWidget(tokenId: tokenId),
                    const SizedBox(width: 12),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.info.tokenName,
                              textAlign: TextAlign.start,
                              style: styles.textStyleTransactionType,
                            ),
                            Text(
                              symbolLabel,
                              textAlign: TextAlign.start,
                              style: styles.textStyleTransactionAddress,
                            ),
                            Text(
                              tokenId,
                              textAlign: TextAlign.start,
                              style: styles.textStyleTransactionUnit,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (balance != '0' && !item.state.enabled)
                Tooltip(
                  message: 'Balance: $balance ${item.info.symbolLabel}',
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.info),
                  ),
                  triggerMode: TooltipTriggerMode.tap,
                  decoration: BoxDecoration(
                    color: theme.backgroundDark,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: theme.primary),
                  ),
                ),
              Container(
                child: Switch.adaptive(
                  activeColor: theme.primary,
                  value: item.state.enabled,
                  onChanged: (value) => onChanged(TokenState(
                    enabled: value,
                    tokenInfo: value ? item.info : null,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
