import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_util.dart';
import 'account.dart';
import 'account_details_sheet.dart';

class AccountListItem extends ConsumerWidget {
  final Account account;

  const AccountListItem({Key? key, required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final localization = ref.watch(l10nProvider);

    final accounts = ref.watch(accountsProvider);

    void showAccountDetails() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: ref.read(themeProvider),
        widget: AccountDetailsSheet(account: account),
        onDisposed: () => AccountDetailsSheet.saveChanges(ref.read, account),
      );
    }

    void removeAccount() {
      accounts.removeAccount(account);
    }

    void confirmDeleteAccount() {
      AppDialogs.showConfirmDialog(
        context,
        localization.hideAccountHeader,
        localization.hideAccountText.replaceAll(
          "%1",
          localization.addAccount,
        ),
        localization.YES,
        removeAccount,
        cancelText: localization.NO,
      );
    }

    return Slidable(
      secondaryActions: [
        SlideAction(
          child: Container(
            margin: EdgeInsetsDirectional.only(start: 2, top: 1, bottom: 1),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(color: theme.primary),
            child: Icon(Icons.edit, color: theme.backgroundDark),
          ),
          onTap: showAccountDetails,
        ),
        if (account.index > 0)
          SlideAction(
            child: Container(
              margin: EdgeInsetsDirectional.only(start: 2, top: 1, bottom: 1),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(color: theme.primary),
              child: Icon(Icons.delete, color: theme.backgroundDark),
            ),
            onTap: confirmDeleteAccount,
          ),
      ],
      actionExtentRatio: 0.2,
      actionPane: const SlidableStrechActionPane(),
      child: Column(
        children: [
          Divider(height: 2, color: theme.text15),
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
                            color: accounts.isAccountSelected(account)
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
                              style: TextStyle(
                                color: theme.backgroundDark,
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
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
                            child: TwoLineAddressText(
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
                      onPressed: () async {
                        await Clipboard.setData(
                          ClipboardData(text: account.viteAddress),
                        );
                        UIUtil.showSnackbar(
                          'Account address copied!',
                          context,
                        );
                      },
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
