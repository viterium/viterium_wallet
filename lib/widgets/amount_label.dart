import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../core/core_providers.dart';
import '../util/numberutil.dart';

class AmountLabel extends HookConsumerWidget {
  final Amount amount;

  const AmountLabel({super.key, required this.amount});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final formatedAmount = useMemoized(() {
      return NumberUtil.formatedAmount(amount, showApprox: true);
    }, [amount]);

    final exactAmount = useMemoized(() {
      return NumberUtil.approx(amount: amount, precision: amount.decimals) +
          ' ${amount.symbolLabel}';
    }, [amount]);

    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(50),
      ),
      // Amount text
      child: Tooltip(
        message: exactAmount,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: formatedAmount,
                    style: styles.textStyleApproxAmountSuccess,
                  ),
                  TextSpan(
                    text: ' ${amount.symbolLabel}',
                    style: styles.textStyleTokenSymbolSuccess,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
