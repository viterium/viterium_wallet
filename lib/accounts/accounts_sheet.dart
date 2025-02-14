import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import 'account.dart';
import 'account_list_widget.dart';

class AccountsSheet extends HookConsumerWidget {
  const AccountsSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final accounts = ref.watch(accountsProvider);

    final globalKey = useRef(GlobalKey());
    final addingAccount = useState(false);
    final scrollController = useScrollController();

    Future<void> addAccount() async {
      if (addingAccount.value) return;
      addingAccount.value = true;

      final auth = ref.read(walletAuthProvider.notifier);

      final index = accounts.firstAvailableIndex;
      if (index == null) {
        UIUtil.showSnackbar('Max number of accounts reached.', context);
        addingAccount.value = false;
        return;
      }

      final name = l10n.defaultNewAccountName.replaceAll("%1", '${index + 1}');
      final address = await auth.addressAtIndex(index);
      final account = Account(index: index, name: name, address: address);
      accounts.addAccount(account);
      addingAccount.value = false;

      // Scroll if list is full
      final ctx = globalKey.value.currentContext;
      if (ctx != null) {
        RenderBox box = ctx.findRenderObject() as RenderBox;
        if (accounts.accounts.length * 82.0 >= box.size.height) {
          final maxScrollExtent = scrollController.position.maxScrollExtent;
          scrollController.animateTo(
            account.index * 82.0 > maxScrollExtent
                ? maxScrollExtent + 82.0
                : account.index * 82.0,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 200),
          );
        }
      }
    }

    return SheetWidget(
      title: l10n.accounts,
      mainWidget: Stack(
        key: globalKey.value,
        children: [
          AccountListWidget(scrollController: scrollController),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: l10n.addAccount,
              disabled: addingAccount.value,
              onPressed: addAccount,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.close,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
