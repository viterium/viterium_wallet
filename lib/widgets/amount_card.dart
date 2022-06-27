import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_styles.dart';
import '../core/core_providers.dart';
import '../tokens/token_icon_widget.dart';
import '../util/numberutil.dart';

class AmountCard extends HookConsumerWidget {
  final Amount amount;

  const AmountCard({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final amountRaw = amount.raw;
    final tokenInfo = amount.tokenInfo;
    final decimals = tokenInfo.decimals;

    final amountValue = useMemoized(() {
      if (NumberUtil.getStringFromRaw(amountRaw, decimals)
              .replaceAll(',', '') ==
          NumberUtil.getDecimalFromRaw(amountRaw, decimals).toString()) {
        return NumberUtil.getStringFromRaw(amountRaw, decimals);
      } else {
        return '~' +
            NumberUtil.getDecimalFromRaw(amountRaw, decimals)
                .toStringAsFixed(6);
      }
    }, [amountRaw, decimals]);

    final amountAll = useMemoized(() {
      return NumberUtil.getStringFromRaw(amountRaw, decimals, decimals) +
          ' ${tokenInfo.symbolLabel}';
    }, [amountRaw, decimals, tokenInfo.symbolLabel]);

    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(50),
      ),
      // Amount text
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 48,
              maxWidth: 48,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: TokenIconWidget(tokenId: tokenInfo.tokenId),
            ),
          ),
          Expanded(
            child: Tooltip(
              message: amountAll,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$amountValue",
                          style: TextStyle(
                            color: theme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: kFontFamily,
                          ),
                        ),
                        TextSpan(
                          text: ' ${tokenInfo.symbolLabel}',
                          style: TextStyle(
                            color: theme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            fontFamily: kFontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }
}
