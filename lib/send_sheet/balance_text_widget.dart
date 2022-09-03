import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';

final selectedTokenProvider = StateProvider<TokenInfo>((ref) => TokenInfo.vite);

class BalanceTextWidget extends ConsumerWidget {
  const BalanceTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final tokenInfo = ref.watch(selectedTokenProvider);
    final tokenId = tokenInfo.tokenId;
    final tokenBalance = ref.watch(formatedTokenBalanceProvider(tokenId));

    return Container(
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: "(",
              style: styles.textStyleTransactionUnitSmall,
            ),
            TextSpan(
              text: tokenBalance,
              style: styles.textStyleBalanceAmountSmall,
            ),
            TextSpan(
              text: ' ${tokenInfo.symbolLabel})',
              style: styles.textStyleTransactionUnitSmall,
            ),
          ],
        ),
      ),
    );
  }
}
