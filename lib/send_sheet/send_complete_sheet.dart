import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/core.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../widgets/address_card.dart';
import '../widgets/address_widgets.dart';
import '../widgets/amount_label.dart';
import '../widgets/buttons/success_outline_button.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_handle.dart';
import 'send_data_widget.dart';

class SendCompleteSheet extends HookConsumerWidget {
  final Amount amount;
  final Address toAddress;
  final Uint8List? data;

  const SendCompleteSheet({
    Key? key,
    required this.amount,
    required this.toAddress,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(
        children: [
          const SheetHandle(),
          //A main container that holds the amount, address and "SENT TO" texts
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: const AlignmentDirectional(0, 0),
                        margin: const EdgeInsets.only(top: 50, bottom: 25),
                        child: Icon(
                          AppIcons.success,
                          size: 100,
                          color: theme.success,
                        ),
                      ),
                      const SizedBox(height: 20),
                      AmountLabel(amount: amount),
                      // Container for the "SENT TO" text
                      Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 10),
                        alignment: Alignment.center,
                        child: Text(
                          l10n.sentTo.toUpperCase(),
                          style: styles.textStyleHeaderSuccess,
                        ),
                      ),
                      AddressCard(
                        address: toAddress,
                        type: AddressThreeLineTextType.SUCCESS,
                      ),
                      if (data != null)
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                            bottom: 10,
                          ),
                          child: SendDataWidget(
                            data: data!,
                            success: true,
                          ),
                        ),
                    ],
                  ),
                ),
                const ListTopGradient(),
                const ListBottomGradient(),
              ],
            ),
          ),
          SuccessOutlineButton(
            title: l10n.close,
            margin: const EdgeInsets.only(left: 28, right: 28, top: 8),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
