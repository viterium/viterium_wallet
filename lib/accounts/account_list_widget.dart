import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import 'account_list_item.dart';
import 'accounts_providers.dart';

class AccountListWidget extends ConsumerWidget {
  final ScrollController scrollController;

  const AccountListWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final accounts = ref.watch(accountsProvider);
    final accountList = accounts.accounts;

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: accountList.length + 1,
      controller: scrollController,
      itemBuilder: (context, index) {
        if (index == accountList.length) {
          return Divider(height: 2, color: theme.text15);
        }
        final account = accountList[index];
        return AccountListItem(account: account);
      },
    );
  }
}
