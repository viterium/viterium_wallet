import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_util.dart';
import 'account.dart';
import 'account_details_sheet.dart';

class AccountListItem extends ConsumerWidget {
  final Account account;

  const AccountListItem({super.key, required this.account});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final accounts = ref.watch(accountsProvider);

    void showAccountDetails() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: ref.read(themeProvider),
        widget: AccountDetailsSheet(account: account),
      );
    }

    void removeAccount() {
      accounts.removeAccount(account);
    }

    void confirmDeleteAccount() {
      final pushSettings = ref.read(pushSettingsForAccountProvider(account));
      if (pushSettings.pushEnabled) {
        UIUtil.showSnackbar(
          'First turn off Notifications for this account',
          context,
        );
        return;
      }

      AppDialogs.showConfirmDialog(
        context,
        l10n.hideAccountHeader,
        l10n.hideAccountText.replaceAll("%1", l10n.addAccount),
        l10n.YES,
        removeAccount,
        cancelText: l10n.NO,
      );
    }

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: account.viteAddress));
      UIUtil.showSnackbar('Account address copied!', context);
    }

    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.2 * (account.index > 0 ? 2 : 1),
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            icon: Icons.edit,
            backgroundColor: theme.primary,
            foregroundColor: theme.backgroundDark,
            onPressed: (_) => showAccountDetails(),
          ),
          if (account.index > 0) ...[
            const SizedBox(width: 1),
            SlidableAction(
              icon: Icons.delete,
              backgroundColor: theme.primary,
              foregroundColor: theme.backgroundDark,
              onPressed: (_) => confirmDeleteAccount(),
            ),
          ],
        ],
      ),
      child: Column(
        children: [
          TextButton(
            style: styles.defaultTextButtonStyle,
            onPressed: () {
              ref.read(accountsProvider).selectAccount(account);
              Navigator.of(context).pop();
            },
            child: Container(
              height: 80,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Center(
                          child: Icon(
                            AppIcons.accountwallet,
                            size: 30,
                            color:
                                accounts.isAccountSelected(account)
                                    ? theme.success
                                    : theme.primary,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 40,
                            height: 30,
                            alignment: AlignmentDirectional(0, 0.3),
                            child: Text(
                              account.getShortName().toUpperCase(),
                              style: styles.textStyleAccountShortName,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Account name and address
                  Expanded(
                    child: Container(
                      margin: EdgeInsetsDirectional.only(start: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              account.name,
                              style: styles.textStyleDialogOptions,
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: AddressTwoLineText(
                              address: account.viteAddress,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: TextButton(
                      style: styles.roundedTextButtonStyle,
                      child: Icon(Icons.copy, color: theme.text),
                      onPressed: copyAddress,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
