import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../app_providers.dart';
import '../util/caseconverter.dart';
import '../widgets/dialog.dart';
import 'wallet_types.dart';

final walletItemProvider =
    Provider<WalletInfo>((ref) => throw UnimplementedError());

class WalletCard extends ConsumerWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final wallet = ref.watch(walletItemProvider);

    Future<void> selectWallet() async {
      final notifier = ref.read(walletBundleProvider.notifier);
      await notifier.selectWallet(wallet);

      Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
    }

    Future<void> removeWallet() async {
      final notifier = ref.read(walletBundleProvider.notifier);
      await notifier.removeWallet(wallet);
    }

    Future<void> checkAuth() async {
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticate(
        context,
        'Enter PIN to Remove Wallet',
        'Authenticate to Remove Wallet',
      );
      if (auth) {
        await removeWallet();
      }
    }

    void areYouSureRemoveWallet() {
      AppDialogs.showConfirmDialog(
        context,
        localization.areYouSure,
        localization.removeWalletReassurance,
        localization.YES,
        checkAuth,
      );
    }

    void confirmRemoveWallet() {
      AppDialogs.showConfirmDialog(
        context,
        CaseChange.toUpperCase(localization.warning, ref),
        localization.removeWalletDetail,
        localization.removeWalletAction.toUpperCase(),
        areYouSureRemoveWallet,
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 6),
      child: Slidable(
        actionExtentRatio: 0.18,
        secondaryActions: [
          SlideAction(
            child: Center(child: Icon(Icons.delete, color: theme.text)),
            onTap: confirmRemoveWallet,
          )
        ],
        actionPane: const SlidableBehindActionPane(),
        child: Container(
          child: TextButton(
            style: styles.darkCardButtonStyle,
            onPressed: selectWallet,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(width: 8),
                        Icon(
                          CupertinoIcons.creditcard,
                          size: 26,
                          color: theme.primary,
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Text(
                            wallet.name,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: styles.textStyleParagraphBold.copyWith(
                                fontSize: 18, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: theme.text30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
