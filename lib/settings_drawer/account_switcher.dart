import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../accounts/accounts_sheet.dart';
import '../app_icons.dart';
import '../core/core_providers.dart';
import '../widgets/sheet_util.dart';

class AccountSwitcher extends ConsumerWidget {
  const AccountSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    void showAccountsSheet() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const AccountsSheet(),
      );
    }

    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: TextButton(
        style: styles.roundButtonStyle,
        onPressed: showAccountsSheet,
        child: Icon(AppIcons.accountswitcher, size: 36, color: theme.primary),
      ),
    );
  }
}
