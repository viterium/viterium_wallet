import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../accounts/accounts_sheet.dart';
import '../app_providers.dart';
import '../main_card/main_card.dart';
import '../util/ui_util.dart';
import 'address_widgets.dart';
import 'sheet_util.dart';

class AccountButton extends ConsumerWidget {
  const AccountButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);

    void showAccounts() {
      final scaffold = ref.read(homePageScaffoldKeyProvider);
      Sheets.showAppHeightNineSheet(
        context: scaffold.currentContext ?? context,
        theme: theme,
        widget: const AccountsSheet(),
      );
    }

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: account.viteAddress));
      UIUtil.showSnackbar('Address copied!', context);
    }

    return TextButton(
      style: styles.defaultTextButtonStyle,
      onPressed: showAccounts,
      onLongPress: copyAddress,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              account.name,
              style: styles.textStyleAccountName,
            ),
            AddressShortText(address: account.viteAddress),
          ],
        ),
      ),
    );
  }
}
