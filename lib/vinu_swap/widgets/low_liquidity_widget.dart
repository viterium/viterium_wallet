import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/vinu_swap/vinu_swap_types.dart';

import '../../widgets/warning_widget.dart';
import '../vinu_swap_providers.dart';

class LowLiquidityWidget extends ConsumerWidget {
  final Token fromToken;
  final Token toToken;

  const LowLiquidityWidget({
    super.key,
    required this.fromToken,
    required this.toToken,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fromLiquidity =
        ref.watch(vinuSwapLiquidityForTokenProvider(fromToken)).valueOrNull;
    final toLiquidity =
        ref.watch(vinuSwapLiquidityForTokenProvider(toToken)).valueOrNull;

    final lowThreshold = Amount.value(
      Decimal.fromInt(5000000000),
      tokenInfo: TokenInfo.vite,
    );
    final veryLowThreshold = Amount.value(
      Decimal.fromInt(500000000),
      tokenInfo: TokenInfo.vite,
    );
    final noThreshold = Amount.value(
      Decimal.fromInt(5000000),
      tokenInfo: TokenInfo.vite,
    );

    String? text = null;
    if (fromLiquidity != null && fromToken != kVinuToken) {
      if (fromLiquidity.totalVinu < noThreshold.raw) {
        text = 'This pair has no liquidity';
      } else if (fromLiquidity.totalVinu < veryLowThreshold.raw) {
        text = 'This pair has very low liquidity';
      } else if (fromLiquidity.totalVinu < lowThreshold.raw) {
        text = 'This pair has low liquidity';
      }
    }

    if (toLiquidity != null && toToken != kVinuToken) {
      if (toLiquidity.totalVinu < noThreshold.raw) {
        text = 'This pair has no liquidity';
      } else if (toLiquidity.totalVinu < veryLowThreshold.raw) {
        text = 'This pair has very low liquidity';
      } else if (toLiquidity.totalVinu < lowThreshold.raw) {
        text = 'This pair has low liquidity';
      }
    }

    if (text != null) {
      return WarningWidget(text: text);
    }

    return SizedBox();
  }
}
