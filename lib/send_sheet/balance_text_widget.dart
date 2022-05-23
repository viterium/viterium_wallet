import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../app_styles.dart';

final selectedTokenProvider = StateProvider<TokenInfo>((ref) => TokenInfo.vite);

class BalanceTextWidget extends ConsumerWidget {
  const BalanceTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final tokenInfo = ref.watch(selectedTokenProvider);
    final tokenBalance =
        ref.watch(tokenBalanceDisplayProvider(tokenInfo.tokenId));

    return Container(
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: "(",
              style: TextStyle(
                color: theme.primary60,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontFamily: kFontFamily,
              ),
            ),
            TextSpan(
              text: tokenBalance,
              style: TextStyle(
                color: theme.primary60,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: kFontFamily,
              ),
            ),
            TextSpan(
              text: ' ${tokenInfo.tokenSymbol})',
              style: TextStyle(
                color: theme.primary60,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontFamily: kFontFamily,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
