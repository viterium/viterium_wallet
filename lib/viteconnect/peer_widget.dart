import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import 'viteconnect_providers.dart';

class PeerWidget extends ConsumerWidget {
  const PeerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final peer = ref.watch(viteConnectPeerProvider);

    if (peer == null) {
      return Text('Not connected', style: styles.textStyleDialogHeader);
    }

    // workaround for ViteX
    final vitexUrl = 'https://x.vite.net';
    final isVitex = peer.url == vitexUrl;
    final peerName = isVitex ? 'ViteX' : peer.name ?? 'Unknown peer';
    final peerIcon = (peer.icons?.length ?? 0) > 0 ? peer.icons!.first : null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isVitex) ...[
          Image.asset('assets/vitex.png', width: 48, height: 48),
        ] else if (peerIcon != null) ...[
          Image.network(
            peerIcon,
            width: 48,
            height: 48,
            errorBuilder:
                (_, _, _) => Icon(
                  Icons.swap_horiz_outlined,
                  size: 48,
                  color: theme.primary,
                ),
          ),
        ] else
          Icon(Icons.swap_horiz_outlined, size: 48, color: theme.primary),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(peerName, style: styles.textStyleDialogHeader),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  peer.url ?? 'Unknown URL',
                  style: styles.textStyleParagraphBold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
