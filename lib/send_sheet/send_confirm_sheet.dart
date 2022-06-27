import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_card.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'send_complete_sheet.dart';

class SendConfirmSheet extends HookConsumerWidget {
  final BigInt amountRaw;
  final TokenInfo tokenInfo;
  final Address destination;
  final String? label;
  final String memo;
  final Uint8List? data;

  SendConfirmSheet({
    Key? key,
    required this.amountRaw,
    required this.tokenInfo,
    required this.destination,
    this.label,
    this.memo = '',
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final amount = Amount.raw(amountRaw, tokenInfo: tokenInfo);

    Future<void> sendTransaction() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      try {
        final address = account.address;
        final toAddress = destination;

        Uint8List? data;
        if (memo.isNotEmpty) {
          data = stringToBytesUtf8(memo);
        } else {
          data = data;
        }

        AppDialogs.showInProgressDialog(
          context,
          'Sending Transaction',
          'Please wait.',
        );

        await autoreceiveService.pauseAutoreceive();

        await accountService.transfer(
          fromAddress: address,
          toAddress: toAddress,
          amount: amount,
          data: data,
        );

        autoreceiveService.resumeAutoreceive();

        Navigator.of(context).pop();

        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          closeOnTap: true,
          removeUntilHome: true,
          widget: SendCompleteSheet(
            amountRaw: amountRaw,
            tokenInfo: tokenInfo,
            destination: destination.viteAddress,
            contactName: label,
          ),
        );
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send transaction', e, st);

        autoreceiveService.resumeAutoreceive();

        final l10n = ref.read(l10nProvider);
        UIUtil.showSnackbar(l10n.sendError, context);

        Navigator.of(context).pop();
      }
    }

    Future<void> onConfirm() async {
      // Authenticate
      final localization = ref.read(l10nProvider);
      final authUtil = ref.read(authUtilProvider);

      final message = localization.sendAmountConfirm
          .replaceAll('%1', amount.value.toString())
          .replaceAll('%2', tokenInfo.symbolLabel);
      final auth = await authUtil.authenticate(context, message, message);
      if (auth) {
        await sendTransaction();
      }
    }

    return SheetWidget(
      title: l10n.sending,
      mainWidget: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AmountCard(amount: amount),
                // "TO" text
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Column(
                    children: [
                      Text(
                        l10n.to.toUpperCase(),
                        style: styles.textStyleSubHeader,
                      ),
                    ],
                  ),
                ),
                AddressCard(address: destination),

                if (data != null) ...[
                  // DATA
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          'Data',
                          style: styles.textStyleHeader(context),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.105,
                        right: MediaQuery.of(context).size.width * 0.105),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: theme.backgroundDarkest,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      data?.hex ?? '',
                      textAlign: TextAlign.center,
                      style: styles.textStyleAddressText90,
                      maxLines: 3,
                    ),
                  ),
                ] else if (memo.isNotEmpty) ...[
                  // MEMO
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          'Memo',
                          style: styles.textStyleHeader(context),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.105,
                        right: MediaQuery.of(context).size.width * 0.105),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: theme.backgroundDarkest,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      memo,
                      textAlign: TextAlign.center,
                      style: styles.textStyleAddressText90,
                      maxLines: 3,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: l10n.confirm,
              onPressed: onConfirm,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.cancel,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
