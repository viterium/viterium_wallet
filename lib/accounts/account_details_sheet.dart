import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';
import '../widgets/trashcan_button.dart';
import 'account.dart';

final _timerProvider = StateProvider.autoDispose<Timer?>((ref) {
  final Timer? timer = null;

  ref.onDispose(() {
    timer?.cancel();
  });

  return timer;
});

class AccountDetailsSheet extends HookConsumerWidget {
  final Account account;

  const AccountDetailsSheet({super.key, required this.account});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final addressCopiedTimer = ref.watch(_timerProvider.notifier);

    final nameFocusNode = useFocusNode();
    final nameController = useTextEditingController(text: account.name);
    final addressCopied = useState(false);

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: account.viteAddress));
      addressCopied.value = true;
      addressCopiedTimer.state?.cancel();
      addressCopiedTimer.state = Timer(const Duration(milliseconds: 800), () {
        if (!context.mounted) return;
        addressCopied.value = false;
      });
    }

    void deleteAccount() {
      ref.read(accountsProvider).removeAccount(account);

      Navigator.of(context).pop();
    }

    void confirmDelete() {
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
        deleteAccount,
        cancelText: l10n.NO,
      );
    }

    useEffect(() {
      final notifier = ref.read(accountsProvider.notifier);
      return () {
        final name = nameController.text.trim();
        if (name.isNotEmpty && account.name != name) {
          notifier.changeAccountName(account, name);
        }
      };
    }, const []);

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: l10n.account.toUpperCase(),
        leftWidget: TrashcanButton(
          visible: account.index != 0,
          onPressed: confirmDelete,
        ),
        mainWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: AddressThreeLineText(
                address: account.viteAddress,
                type: AddressThreeLineTextType.PRIMARY60,
              ),
            ),
            const SizedBox(),
            AppTextField(
              topMargin: MediaQuery.of(context).size.width * 0.14,
              rightMargin: MediaQuery.of(context).size.width * 0.105,
              controller: nameController,
              focusNode: nameFocusNode,
              textInputAction: TextInputAction.done,
              autocorrect: false,
              keyboardType: TextInputType.text,
              inputFormatters: [LengthLimitingTextInputFormatter(25)],
              style: styles.textStyleAppTextField,
            ),
          ],
        ),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Visibility(
                visible: !addressCopied.value,
                replacement: SuccessButton(title: l10n.addressCopied),
                child: PrimaryButton(
                  title: l10n.copyAddress,
                  onPressed: copyAddress,
                ),
              ),
              const SizedBox(height: 16),
              PrimaryOutlineButton(
                title: l10n.close,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
