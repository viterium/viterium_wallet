import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../../app_providers.dart';
import '../../util/numberutil.dart';

class RateWidget extends HookConsumerWidget {
  const RateWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final state = ref.watch(vitcSwapStateProvider);

    final fromAmount = state.fromAmount;
    final toAmount = state.toAmount;

    final fromToken = state.fromToken;
    final toToken = state.toToken;

    final rate = useMemoized(() {
      if (toAmount.raw == BigInt.zero || fromAmount.raw == BigInt.zero) {
        return NumberUtil.textFieldFormatedAmount(
          Amount.value(
            Decimal.zero,
            tokenInfo: TokenInfo.vite.copyWith(decimals: 8),
          ),
        );
      }

      final value = (fromAmount.value / toAmount.value)
          .toDecimal(scaleOnInfinitePrecision: 8);
      return NumberUtil.textFieldFormatedAmount(
        Amount.value(
          value,
          tokenInfo: TokenInfo.vite.copyWith(decimals: 8),
        ),
      );
    }, [state.callId]);

    return Column(
      children: [
        Text(
          'Rate:',
          style: styles.textStyleTransactionType,
        ),
        Text(
          '$rate ${fromToken.symbolLabel} per ${toToken.symbolLabel}',
          style: styles.textStyleAddressPrimary,
        )
      ],
    );
  }
}
