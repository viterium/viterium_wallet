import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/wallet_button.dart';
import 'account_switcher.dart';

class RecentAccounts extends ConsumerWidget {
  const RecentAccounts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentLast = ref.watch(recentLastAccountProvider);
    final recentSecondLast = ref.watch(recentSecondLastAccountProvider);

    return Row(
      children: [
        // Second Account
        if (recentLast != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: WalletButton(account: recentLast),
          ),
        // Third Account
        if (recentSecondLast != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: WalletButton(account: recentSecondLast),
          ),
        // Account switcher
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const AccountSwitcher(),
        ),
      ],
    );
  }
}
