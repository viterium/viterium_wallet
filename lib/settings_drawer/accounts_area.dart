import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../accounts/account_details_sheet.dart';
import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/selected_wallet_button.dart';
import '../widgets/sheet_util.dart';
import 'recent_accounts.dart';

class AccountWidget extends ConsumerWidget {
  const AccountWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.read(themeProvider);
    final styles = ref.read(stylesProvider);

    final account = ref.watch(selectedAccountProvider);

    return TextButton(
      style: styles.accountButtonStyle,
      onPressed: null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              '${account.name}',
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: theme.text,
              ),
            ),
          ),
          TwoLineAddressText(address: account.viteAddress),
        ],
      ),
    );
  }
}

class AccountsArea extends ConsumerWidget {
  const AccountsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final wallet = ref.watch(walletProvider);
    final account = ref.watch(selectedAccountProvider);

    void showAccountDetails() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: AccountDetailsSheet(account: account),
        onDisposed: () => AccountDetailsSheet.saveChanges(ref.read, account),
      );
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main Account
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 30),
            child: const SelectedWalletButton(),
          ),
          // A row for other accounts and account switcher
          const RecentAccounts(),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 12, bottom: 8),
        child: TextButton(
          style: styles.accountButtonStyle,
          onPressed: showAccountDetails,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text(
                  '${wallet.name} - ${account.name}',
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: theme.text,
                  ),
                ),
              ),
              TwoLineAddressText(address: account.viteAddress),
            ],
          ),
        ),
      ),
    ]);
  }
}
