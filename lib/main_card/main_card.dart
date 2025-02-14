import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/account_button.dart';
import '../widgets/balance_widget.dart';
import '../widgets/settings_button.dart';
import '../widgets/vite_connect_button.dart';

class MainCard extends ConsumerWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      margin: const EdgeInsets.only(left: 14, right: 14, top: 10),
      height: 130,
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6, top: 6, right: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SettingsButton(),
                const AccountButton(),
                const ViteConnectButton(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text('Total Value', style: styles.textStyleTotalValue),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 14, right: 14),
            child: const BalanceWidget(),
          ),
        ],
      ),
    );
  }
}
