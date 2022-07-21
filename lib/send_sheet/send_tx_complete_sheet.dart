import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../transactions/send_tx.dart';
import '../widgets/address_card.dart';
import '../widgets/address_widgets.dart';
import '../widgets/amount_label.dart';
import '../widgets/buttons/success_outline_button.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tx_data_widget.dart';

class SendTxCompleteSheet extends HookConsumerWidget {
  final SendTx tx;

  const SendTxCompleteSheet({
    Key? key,
    required this.tx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final toAddress = tx.toAddress;
    final amount = tx.amount;
    final fee = tx.fee;
    final data = tx.data;
    final contract = ref.watch(
      contractForAddressProvider(toAddress.viteAddress),
    );

    return SheetWidget(
      title: 'Call Successful',
      mainWidget: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Column(
                    children: [
                      Text(
                        tx.maybeMap(
                          sendTransfer: (_) => l10n.sentTo.toUpperCase(),
                          orElse: () => 'Contract Address'.toUpperCase(),
                        ),
                        style: styles.textStyleSubHeaderSuccess,
                      ),
                    ],
                  ),
                ),
                AddressCard(
                  address: toAddress,
                  type: AddressThreeLineTextType.SUCCESS,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Amount'.toUpperCase(),
                    style: styles.textStyleSubHeaderSuccess,
                  ),
                ),
                AmountLabel(amount: amount),
                if (fee != null && fee > BigInt.zero) ...[
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      'Fee'.toUpperCase(),
                      style: styles.textStyleSubHeaderSuccess,
                    ),
                  ),
                  AmountLabel(
                    amount: Amount.raw(fee, tokenInfo: TokenInfo.vite),
                  ),
                ],
                if (data != null)
                  TxDataWidget(
                    data: data,
                    contract: contract,
                  ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: SuccessOutlineButton(
        title: l10n.close,
        margin: const EdgeInsets.only(left: 28, right: 28, top: 8),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
