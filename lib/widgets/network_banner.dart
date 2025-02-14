import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../node_settings/node_types.dart';

final _networkBannerProvider = Provider<String?>((ref) {
  final network = ref.watch(viteNetworkProvider);
  if (network != ViteNetwork.mainnet) {
    return network.name.toUpperCase();
  }
  return null;
});

class NetworkBanner extends ConsumerWidget {
  final Widget child;

  const NetworkBanner({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final network = ref.watch(_networkBannerProvider);

    if (network == null) {
      return child;
    }

    return Banner(
      message: network,
      location: BannerLocation.topEnd,
      textStyle: styles.textStyleNetworkBanner,
      color: theme.background,
      child: child,
    );
  }
}
