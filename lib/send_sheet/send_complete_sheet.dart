import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/core.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_styles.dart';
import '../util/numberutil.dart';
import '../widgets/address_widgets.dart';
import '../widgets/buttons/success_outline_button.dart';
import '../widgets/sheet_handle.dart';

class SendCompleteSheet extends ConsumerStatefulWidget {
  final BigInt amountRaw;
  final TokenInfo tokenInfo;
  final String destination;
  final String? contactName;

  const SendCompleteSheet({
    Key? key,
    required this.amountRaw,
    required this.tokenInfo,
    required this.destination,
    this.contactName,
  }) : super(key: key);

  _SendCompleteSheetState createState() => _SendCompleteSheetState();
}

class _SendCompleteSheetState extends ConsumerState<SendCompleteSheet> {
  late final amount = NumberUtil.approxAmount(widget.amountRaw, decimals);
  late final destination = widget.destination;

  late final decimals = widget.tokenInfo.decimals;
  late final tokenSymbol = widget.tokenInfo.tokenSymbol;

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    final amountAll =
        NumberUtil.getStringFromRaw(widget.amountRaw, decimals, decimals) +
            ' ${tokenSymbol}';

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(
        children: [
          const SheetHandle(),
          //A main container that holds the amount, address and "SENT TO" texts
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Success tick (icon)
                Container(
                  alignment: const AlignmentDirectional(0, 0),
                  margin: const EdgeInsets.only(bottom: 25),
                  child: Icon(
                    AppIcons.success,
                    size: 100,
                    color: theme.success,
                  ),
                ),
                // Container for the Amount Text
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.105,
                    right: MediaQuery.of(context).size.width * 0.105,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 15,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.backgroundDarkest,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  // Amount text
                  child: Tooltip(
                    message: amountAll,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: amountApprox,
                                style: styles.textStyleApproxAmountSuccess,
                              ),
                              TextSpan(
                                text: ' $tokenSymbol',
                                style: styles.textStyleTokenSymbolSuccess,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Container for the "SENT TO" text
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Column(
                    children: [
                      // "SENT TO" text
                      Text(
                        l10n.sentTo.toUpperCase(),
                        style: styles.textStyleHeaderSuccess,
                      ),
                    ],
                  ),
                ),
                // The container for the address
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 15,
                  ),
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.105,
                    right: MediaQuery.of(context).size.width * 0.105,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.backgroundDarkest,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: AddressThreeLineText(
                    address: destination,
                    type: AddressThreeLineTextType.SUCCESS,
                    label: widget.contactName,
                  ),
                ),
              ],
            ),
          ),
          // CLOSE Button
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
