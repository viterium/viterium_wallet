import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class DefiInfoWidget extends ConsumerWidget {
  const DefiInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = ref.read(l10nProvider);

    final title = 'DeFi Center';
    final content =
        'The DeFi Center allows users to directly access on-chain staking and swap protocols without using ViteConnect.\n\nStake on Viva Staking Pools and VITCStake and trade tokens in an instant on VITCSwap from the convenience of your wallet.';

    return AlertDialog(
      title: Text(title, style: styles.textStyleButtonPrimaryOutline),
      content: SingleChildScrollView(
        child: Text(content, style: styles.textStyleParagraph),
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.close.toUpperCase(),
            style: styles.textStyleDialogButtonText,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
