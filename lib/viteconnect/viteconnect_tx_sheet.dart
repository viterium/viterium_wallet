import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/core.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/address_card.dart';
import '../widgets/amount_card.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import 'transaction_data_widget.dart';
import 'viteconnect_providers.dart';
import 'viteconnect_types.dart';

class ViteConnectTxSheet extends HookConsumerWidget {
  final VCTxRequest request;
  final VCTxResponse? response;

  const ViteConnectTxSheet({
    Key? key,
    required this.request,
    this.response,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);
    final theme = ref.watch(themeProvider);

    final response = this.response;
    final tx = request.transaction;

    final toAddress = tx.toAddress!;
    final rawAmount = tx.amount!;
    final amount = Amount.raw(rawAmount, tokenInfo: request.tokenInfo);
    final fee = tx.fee;
    final data = tx.data;

    final title = useMemoized(() {
      return request.type.when(
        transfer: () => 'Send',
        create: () => 'Create Contract',
        call: () => 'Call Contract',
      );
    }, [request]);

    final toTitle = useMemoized(() {
      return request.type.when(
        transfer: () => 'Destination Address',
        create: () => 'New Contract Address',
        call: () => 'Contract Address',
      );
    }, [request]);

    final contract = ref.watch(
      contractForAddressProvider(toAddress.viteAddress),
    );

    Future<void> sendTransaction() async {
      final account = ref.read(selectedAccountProvider);
      final address = account.address;
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      if (tx.address != address) {
        UIUtil.showSnackbar('Error: Account mismatch', context);
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'Sending Transaction',
          'Please wait.',
        );

        await autoreceiveService.pauseAutoreceive();

        final hash = await accountService.sendTransaction(
          address: address,
          toAddress: toAddress,
          token: request.tokenInfo.token,
          rawAmount: tx.amount!,
          data: data,
        );

        autoreceiveService.resumeAutoreceive();

        final accountBlock =
            await accountService.client.getAccountBlockByHash(hash);

        final viteConnect = ref.read(viteConnectProvider.notifier);
        final response = VCTxResponse.confirmed(accountBlock);
        viteConnect.onTxAction(request, response);

        Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send transaction', e, st);

        autoreceiveService.resumeAutoreceive();

        UIUtil.showSnackbar(l10n.sendError, context);

        Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
      }
    }

    Future<void> onConfirm() async {
      final balance = ref.read(balanceForTokenProvider(request.tokenId));
      if (balance < amount.raw) {
        AppDialogs.showInfoDialog(
          context,
          'Insufficient Balance',
          'You don\'t have enough ${request.tokenInfo.symbolLabel} for this transaction',
        );
        return;
      }
      // Authenticate
      final authUtil = ref.read(authUtilProvider);

      final message =
          '$title\nAmount ${amount.value} ${request.tokenInfo.symbolLabel}';
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
                            confirmed: (_) =>
                                Icons.check_circle_outline_outlined,
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
                      amount: Amount.raw(fee, tokenInfo: TokenInfo.vite)),
                ],
                if (data != null)
                  TransactionDataWidget(data: data, contract: contract),
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
        child: response != null
            ? PrimaryOutlineButton(
                title: l10n.close,
                onPressed: () => Navigator.of(context).pop(),
              )
            : Column(
                children: [
                  PrimaryButton(
                    title: l10n.confirm,
                    onPressed: onConfirm,
                  ),
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
