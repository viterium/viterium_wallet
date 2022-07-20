import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../transactions/send_tx.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_card.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tx_data_widget.dart';
import 'send_complete_sheet.dart';
import 'send_tx_complete_sheet.dart';

class SendConfirmSheet extends HookConsumerWidget {
  final SendTx tx;
  final String? label;

  SendConfirmSheet({
    Key? key,
    required this.tx,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final address = tx.address;
    final toAddress = tx.toAddress;
    final amount = tx.amount;

    final fee = tx.fee;
    final data = tx.data;

    final isSendTransfer = tx.maybeMap(
      sendTransfer: (_) => true,
      orElse: () => false,
    );

    final contract = ref.watch(
      contractForAddressProvider(toAddress.viteAddress),
    );

    final title = useMemoized(() {
      return tx.map(
        sendTransfer: (_) => l10n.sendConfirm,
        createContract: (_) => l10n.createContractConfirm,
        callContract: (_) => l10n.callContractConfirm,
      );
    }, [tx]);

    final toTitle = useMemoized(() {
      return tx.map(
        sendTransfer: (_) => 'To Address',
        createContract: (_) => 'New Contract Address',
        callContract: (_) => 'Contract Address',
      );
    }, [tx]);

    Future<void> sendTransaction() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      if (address != account.address) {
        UIUtil.showSnackbar('Error: Address mismatch', context);
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'Sending Transaction',
          'Please wait...',
        );

        await autoreceiveService.pauseAutoreceive();
        await accountService.sendRawTransaction(tx.rawTx);
        autoreceiveService.resumeAutoreceive();

        Navigator.of(context).pop();

        final sheet = tx.maybeMap(
          sendTransfer: (_) => SendCompleteSheet(
            amount: tx.amount,
            toAddress: tx.toAddress,
            data: tx.data,
          ),
          orElse: () => SendTxCompleteSheet(
            tx: tx,
          ),
        );

        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          closeOnTap: true,
          removeUntilHome: true,
          widget: sheet,
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

    String authMessage() {
      final uiUtil = ref.read(uiUtilProvider);
      return tx.map(
        sendTransfer: (_) {
          final amountStr = NumberUtil.approx(amount: amount);
          return '${l10n.sendConfirm} ${amountStr} ${amount.symbolLabel}';
        },
        callContract: (_) {
          return uiUtil.authMessage(l10n.callContractConfirm, amount, fee);
        },
        createContract: (_) {
          return uiUtil.authMessage(l10n.createContractConfirm, amount, fee);
        },
      );
    }

    String? checkMissingBalance() {
      final balance = ref.read(balanceForTokenProvider(tx.tokenId));
      if (balance < amount.raw) {
        return tx.tokenInfo.symbolLabel;
      }

      if (fee != null && fee != BigInt.zero) {
        if (tx.tokenId == viteTokenId) {
          if (balance < amount.raw + fee) {
            return TokenInfo.vite.symbolLabel;
          }
        } else {
          final viteBalance = ref.read(balanceForTokenProvider(viteTokenId));
          if (viteBalance < fee) {
            return TokenInfo.vite.symbolLabel;
          }
        }
      }
      return null;
    }

    Future<void> onConfirm() async {
      final symbolLabel = checkMissingBalance();
      if (symbolLabel != null) {
        AppDialogs.showInfoDialog(
          context,
          'Insufficient Balance',
          'You don\'t have enough ${symbolLabel} for this transaction',
        );
        return;
      }

      // Authenticate
      final authUtil = ref.read(authUtilProvider);
      final message = authMessage();
      final auth = await authUtil.authenticate(context, message, message);
      if (auth) {
        await sendTransaction();
      }
    }

    return SheetWidget(
      title: title,
      mainWidget: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isSendTransfer) AmountCard(amount: amount),
                // "TO" text
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Column(
                    children: [
                      Text(
                        toTitle.toUpperCase(),
                        style: styles.textStyleSubHeader,
                      ),
                    ],
                  ),
                ),
                AddressCard(address: toAddress),
                if (!isSendTransfer) ...[
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      'Amount'.toUpperCase(),
                      style: styles.textStyleSubHeader,
                    ),
                  ),
                  AmountCard(amount: amount),
                ],
                if (fee != null && fee > BigInt.zero) ...[
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      'Fee'.toUpperCase(),
                      style: styles.textStyleSubHeader,
                    ),
                  ),
                  AmountCard(
                    amount: Amount.raw(fee, tokenInfo: TokenInfo.vite),
                  ),
                ],
                if (data != null)
                  TxDataWidget(
                    data: data,
                    contract: contract,
                  ),
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
