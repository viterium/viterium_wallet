import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/core.dart';

import '../app_providers.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_card.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tx_data_widget.dart';
import 'viteconnect_providers.dart';
import 'viteconnect_types.dart';

class ViteConnectTxSheet extends HookConsumerWidget {
  final VCTxRequest request;
  final VCTxResponse? response;

  const ViteConnectTxSheet({super.key, required this.request, this.response});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final response = this.response;

    final tx = request.tx;
    final toAddress = tx.toAddress;
    final amount = tx.amount;
    final fee = tx.fee;
    final data = tx.data;

    final title = useMemoized(() {
      return tx.map(
        sendTransfer: (_) => l10n.sendConfirm,
        createContract: (_) => l10n.createContractConfirm,
        callContract: (_) => l10n.callContractConfirm,
      );
    }, [request]);

    final toTitle = useMemoized(() {
      return tx.map(
        sendTransfer: (_) => 'To Address',
        createContract: (_) => 'New Contract Address',
        callContract: (_) => 'Contract Address',
      );
    }, [request]);

    final contract = ref.watch(
      contractForAddressProvider(toAddress.viteAddress),
    );

    Future<void> sendTransaction() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      if (tx.address != account.address) {
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
        final hash = await accountService.sendRawTransaction(tx.rawTx);

        final client = accountService.client;
        final accountBlock = await client.getAccountBlockByHash(hash);

        final response = VCTxResponse.confirmed(accountBlock);
        final viteConnect = ref.read(viteConnectProvider.notifier);
        viteConnect.onTxAction(request, response);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send transaction', e, st);

        UIUtil.showSnackbar(l10n.sendError, context);
      } finally {
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
      }
    }

    String? checkMissingBalance() {
      final balance = ref.read(balanceForTokenProvider(request.tokenId));
      if (balance < amount.raw) {
        return request.tokenInfo.symbolLabel;
      }

      if (fee != null && fee != BigInt.zero) {
        if (request.tokenId == viteTokenId) {
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

      final message = tx.maybeMap(
        sendTransfer: (_) {
          final amountStr = NumberUtil.formatedAmount(amount, showApprox: true);
          return '$title $amountStr ${request.tokenInfo.symbolLabel}';
        },
        orElse: () {
          final uiUtil = ref.read(uiUtilProvider);
          return uiUtil.authMessage(title, amount, fee);
        },
      );

      final auth = await authUtil.authenticate(context, message, message);
      if (auth) {
        await sendTransaction();
      }
    }

    Future<void> onCancel() async {
      final viteConnect = ref.read(viteConnectProvider.notifier);
      final response = VCTxResponse.cancelled();
      viteConnect.onTxAction(request, response);

      Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
    }

    return SheetWidget(
      title: title,
      mainWidget: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                if (response != null)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          response.when(
                            confirmed:
                                (_) => Icons.check_circle_outline_outlined,
                            cancelled: () => Icons.cancel_outlined,
                          ),
                          size: 28,
                          color: theme.success,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          response.when(
                            confirmed: (accountBlock) => 'Request Confirmed',
                            cancelled: () => 'Request Cancelled',
                          ),
                          style: styles.remoteMessageCardTitle,
                        ),
                      ],
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    toTitle.toUpperCase(),
                    style: styles.textStyleSubHeader,
                  ),
                ),
                AddressCard(address: toAddress),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Amount'.toUpperCase(),
                    style: styles.textStyleSubHeader,
                  ),
                ),
                AmountCard(amount: amount),
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
                if (data != null) TxDataWidget(data: data, contract: contract),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child:
            response != null
                ? PrimaryOutlineButton(
                  title: l10n.close,
                  onPressed: () => Navigator.of(context).pop(),
                )
                : Column(
                  children: [
                    PrimaryButton(title: l10n.confirm, onPressed: onConfirm),
                    const SizedBox(height: 16),
                    PrimaryOutlineButton(
                      title: l10n.cancel,
                      onPressed: onCancel,
                    ),
                  ],
                ),
      ),
    );
  }
}
