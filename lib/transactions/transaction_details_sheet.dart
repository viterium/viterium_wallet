import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../contacts/contact_add_sheet.dart';
import '../util/util.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_util.dart';

class TransactionDetailsSheet extends HookConsumerWidget {
  final String hash;
  final String address;
  final bool displayContactButton;

  const TransactionDetailsSheet({
    super.key,
    required this.hash,
    required this.address,
    this.displayContactButton = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final addressCopied = useState(false);
    final addressCopiedTimer = useRef<Timer?>(null);

    final iconColor =
        addressCopied.value ? theme.successDark : theme.backgroundDark;

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: address));
      addressCopied.value = true;
      addressCopiedTimer.value?.cancel();
      addressCopiedTimer.value = Timer(const Duration(milliseconds: 800), () {
        addressCopied.value = false;
      });
    }

    void addContact() {
      Navigator.of(context).pop();
      Sheets.showAppHeightNineSheet(
        context: context,
        widget: ContactAddSheet(address: address),
        theme: theme,
      );
    }

    void viewDetails() {
      final explorer = ref.read(blockExplorerProvider);
      openUrl(explorer.urlForTx(hash));
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              Stack(
                children: [
                  Visibility(
                    visible: !addressCopied.value,
                    replacement: SuccessButton(title: l10n.addressCopied),
                    child: PrimaryButton(
                      title: l10n.copyAddress,
                      onPressed: copyAddress,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Container(
                          height: 55,
                          width: 55,
                          child: Visibility(
                            visible: displayContactButton,
                            child: TextButton(
                              style: styles.innerButtonStyle,
                              onPressed: addContact,
                              child: Icon(
                                AppIcons.addcontact,
                                size: 35,
                                color: iconColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              PrimaryOutlineButton(
                title: l10n.viewDetails,
                onPressed: viewDetails,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
