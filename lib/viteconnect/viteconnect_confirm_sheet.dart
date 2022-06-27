import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/core.dart';
import 'package:viterium_wallet/util/ui_util.dart';
import 'package:viterium_wallet/viteconnect/contract_data_widget.dart';
import 'package:viterium_wallet/viteconnect/viteconnect_providers.dart';
import 'package:viterium_wallet/viteconnect/viteconnect_types.dart';
import 'package:viterium_wallet/widgets/address_card.dart';
import 'package:viterium_wallet/widgets/amount_card.dart';
import 'package:viterium_wallet/widgets/dialog.dart';
import 'package:viterium_wallet/widgets/sheet_widget.dart';

import '../app_providers.dart';
import '../widgets/buttons.dart';

class ViteConnectConfirmSheet extends HookConsumerWidget {
  final VCTxRequest txRequest;

  const ViteConnectConfirmSheet({
    Key? key,
    required this.txRequest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final amount = Amount.raw(txRequest.amount, tokenInfo: txRequest.tokenInfo);
    final fee = txRequest.fee;
    final data = txRequest.data;

    final contract = ref.watch(
      contractForAddressProvider(txRequest.toAddress.viteAddress),
    );

    Future<void> invokeContract() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      if (txRequest.address != account.address) {
        UIUtil.showSnackbar('Error: Account mismatch', context);
        return;
      }

      try {
        final address = account.address;
        final toAddress = txRequest.toAddress;

        AppDialogs.showInProgressDialog(
          context,
          'Sending Transaction',
          'Please wait.',
        );

        await autoreceiveService.pauseAutoreceive();

        final hash = await accountService.sendTransaction(
          address: address,
          toAddress: toAddress,
          token: txRequest.tokenInfo.token,
          rawAmount: txRequest.amount,
          data: txRequest.data,
        );

        autoreceiveService.resumeAutoreceive();

        final accountBlock =
            await accountService.client.getAccountBlockByHash(hash);

        final viteConnect = ref.read(viteConnectProvider.notifier);
        final response = VCTxResponse.confirmed(accountBlock);
        viteConnect.onUserResponse(txRequest, response);

        Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send transaction', e, st);

        autoreceiveService.resumeAutoreceive();

        final l10n = ref.read(l10nProvider);
        UIUtil.showSnackbar(l10n.sendError, context);

        Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
      }
    }

    Future<void> onConfirm() async {
      // Authenticate
      final authUtil = ref.read(authUtilProvider);

      final message =
          'Call Contract\nAmount ${amount.value} ${txRequest.tokenInfo.symbolLabel}';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth) {
        await invokeContract();
      }
    }

    Future<void> onCancel() async {
      final viteConnect = ref.read(viteConnectProvider.notifier);
      final response = VCTxResponse.cancelled();
      viteConnect.onUserResponse(txRequest, response);
    }

    return SheetWidget(
      title: 'Call Contract',
      mainWidget: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                'Contract Address'.toUpperCase(),
                style: styles.textStyleSubHeader,
              ),
            ),
            AddressCard(address: txRequest.toAddress),
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
              AmountCard(amount: Amount.raw(fee, tokenInfo: TokenInfo.vite)),
            ],
            ContractDataWidget(data: data, contract: contract),
          ],
        ),
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
              onPressed: onCancel,
            ),
          ],
        ),
      ),
    );
  }
}
