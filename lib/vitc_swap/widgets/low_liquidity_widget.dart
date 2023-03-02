import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../../core/core_providers.dart';
import '../vitc_swap_providers.dart';

class LowLiquidityWidget extends ConsumerWidget {
  final String text;
  const LowLiquidityWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.warning_amber_rounded,
            size: 24,
            color: theme.success,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: styles.remoteMessageCardTitle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class VitcSwapLowLiquidity extends ConsumerWidget {
  final Token fromToken;
  final Token toToken;

  const VitcSwapLowLiquidity(
      {super.key, required this.fromToken, required this.toToken});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fromLiquidity =
        ref.watch(vitcSwapLiquidityForTokenProvider(fromToken)).valueOrNull;
    final toLiquidity =
        ref.watch(vitcSwapLiquidityForTokenProvider(toToken)).valueOrNull;

    final lowThreshold = Amount.value(
      Decimal.fromInt(10000),
      tokenInfo: TokenInfo.vite,
    );
    final veryLowThreshold = Amount.value(
      Decimal.fromInt(1000),
      tokenInfo: TokenInfo.vite,
    );
    final noThreshold = Amount.value(
      Decimal.one,
      tokenInfo: TokenInfo.vite,
    );

    String? text = null;
    if (fromLiquidity != null && fromToken != Token.vite) {
      if (fromLiquidity.totalVite < noThreshold.raw) {
        text = 'This pair has no liquidity';
      } else if (fromLiquidity.totalVite < veryLowThreshold.raw) {
        text = 'This pair has very low liquidity';
      } else if (fromLiquidity.totalVite < lowThreshold.raw) {
        text = 'This pair has low liquidity';
      }
    }

    if (toLiquidity != null && toToken != Token.vite) {
      if (toLiquidity.totalVite < noThreshold.raw) {
        text = 'This pair has no liquidity';
      } else if (toLiquidity.totalVite < veryLowThreshold.raw) {
        text = 'This pair has very low liquidity';
      } else if (toLiquidity.totalVite < lowThreshold.raw) {
        text = 'This pair has low liquidity';
      }
    }

    if (text != null) {
      return LowLiquidityWidget(text: text);
    }

    return SizedBox();
  }
}
