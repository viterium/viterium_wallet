import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';
import '../widgets/trashcan_button.dart';
import 'account.dart';

final _accountNameProvider = StateProvider<String?>((ref) => null);

final _timerProvider = StateProvider.autoDispose<Timer?>((ref) {
  final Timer? timer = null;

  ref.onDispose(() {
    timer?.cancel();
  });

  return timer;
});

class AccountDetailsSheet extends HookConsumerWidget {
  final Account account;

  const AccountDetailsSheet({
    Key? key,
    required this.account,
  }) : super(key: key);

  // FIXME - workaround
  static void saveChanges(Reader read, Account account) {
    final name = read(_accountNameProvider);
    if (name != null && account.name != name && name.trim().isNotEmpty) {
      final accounts = read(accountsProvider);
      accounts.changeAccountName(account, name);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final addressCopiedTimer = ref.watch(_timerProvider.notifier);

    final nameFocusNode = useFocusNode();
    final nameController = useTextEditingController(text: account.name);
    final addressCopied = useState(false);
    final isMounted = useIsMounted();

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: account.viteAddress));
      addressCopied.value = true;
      addressCopiedTimer.state?.cancel();
      addressCopiedTimer.state = Timer(
        const Duration(milliseconds: 800),
        () {
          if (!isMounted()) return;
          addressCopied.value = false;
        },
      );
    }

    void updateName(String value) {
      ref.read(_accountNameProvider.notifier).state = value;
    }

    void deleteAccount() {
      ref.read(_accountNameProvider.notifier).state = null;
      ref.read(accountsProvider).removeAccount(account);

      Navigator.of(context).pop();
    }

    void confirmDelete() {
      AppDialogs.showConfirmDialog(
        context,
        localization.hideAccountHeader,
        localization.hideAccountText.replaceAll(
          "%1",
          localization.addAccount,
        ),
        localization.YES,
        deleteAccount,
        cancelText: localization.NO,
      );
    }

    useEffect(() {
      Future.microtask(() => updateName(account.name));
      return;
    }, const []);

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: localization.account.toUpperCase(),
        leftWidget: TrashcanButton(
          visible: account.index != 0,
          onPressed: confirmDelete,
        ),
        mainWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ThreeLineAddressText(
                address: account.viteAddress,
                type: ThreeLineAddressTextType.PRIMARY60,
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
              inputFormatters: [
                LengthLimitingTextInputFormatter(25),
              ],
              style: styles.textStyleAppTextField,
              onChanged: updateName,
            ),
          ],
        ),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
            Visibility(
              visible: !addressCopied.value,
              replacement: SuccessButton(
                title: localization.addressCopied,
              ),
              child: PrimaryButton(
                title: localization.copyAddress,
                onPressed: copyAddress,
              ),
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: localization.close,
              onPressed: () => Navigator.pop(context),
            ),
          ]),
        ),
      ),
    );
  }
}
