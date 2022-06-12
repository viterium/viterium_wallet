import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../app_styles.dart';
import '../tokens/token_icon_widget.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_util.dart';
import 'send_complete_sheet.dart';

class SendConfirmSheet extends ConsumerStatefulWidget {
  final BigInt amountRaw;
  final TokenInfo tokenInfo;
  final String destination;
  final String? contactName;
  final String memo;
  final Uint8List? data;

  const SendConfirmSheet({
    Key? key,
    required this.amountRaw,
    required this.tokenInfo,
    required this.destination,
    this.contactName,
    this.memo = '',
    this.data,
  }) : super(key: key);

  _SendConfirmSheetState createState() => _SendConfirmSheetState();
}

class _SendConfirmSheetState extends ConsumerState<SendConfirmSheet> {
  late String amount;
  late String destinationAltered;

  TokenInfo get tokenInfo => widget.tokenInfo;
  int get decimals => widget.tokenInfo.decimals;

  @override
  void initState() {
    super.initState();

    // Derive amount from raw amount
    if (NumberUtil.getStringFromRaw(widget.amountRaw, decimals)
            .replaceAll(',', '') ==
        NumberUtil.getDecimalFromRaw(widget.amountRaw, decimals)
            .toString()) {
      amount = NumberUtil.getStringFromRaw(widget.amountRaw, decimals);
    } else {
      amount = '~' +
          NumberUtil.getDecimalFromRaw(widget.amountRaw, decimals)
              .toStringAsFixed(6);
    }
    destinationAltered = widget.destination;
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final amountAll =
        NumberUtil.getStringFromRaw(widget.amountRaw, decimals, decimals) +
            ' ${tokenInfo.symbolLabel}';

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(
        children: [
          const SheetHandle(),
          // "SENDING" TEXT
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Text(
                  localization.sending.toUpperCase(),
                  style: styles.textStyleHeader(context),
                ),
              ],
            ),
          ),
          //The main widget that holds the text fields, "SENDING" and "TO" texts
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container for the amount text
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.105,
                          right: MediaQuery.of(context).size.width * 0.105,
                        ),
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: theme.backgroundDarkest,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        // Amount text
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 48,
                                maxWidth: 48,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child:
                                    TokenIconWidget(tokenId: tokenInfo.tokenId),
                              ),
                            ),
                            Expanded(
                              child: Tooltip(
                                message: amountAll,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "$amount",
                                            style: TextStyle(
                                              color: theme.primary,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: kFontFamily,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' ${tokenInfo.symbolLabel}',
                                            style: TextStyle(
                                              color: theme.primary,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w100,
                                              fontFamily: kFontFamily,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 48),
                          ],
                        ),
                      ),
                      // "TO" text
                      Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 10),
                        child: Column(
                          children: [
                            Text(
                              localization.to.toUpperCase(),
                              style: styles.textStyleHeader(context),
                            ),
                          ],
                        ),
                      ),
                      // Address text
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
                        child: ThreeLineAddressText(
                          address: destinationAltered,
                          contactName: widget.contactName,
                        ),
                      ),

                      if (widget.data != null) ...[
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
                            widget.data?.hex ?? '',
                            textAlign: TextAlign.center,
                            style: styles.textStyleAddressText90,
                            maxLines: 3,
                          ),
                        ),
                      ] else if (widget.memo.isNotEmpty) ...[
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
                            widget.memo,
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
          ),
          //A container for CONFIRM and CANCEL buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                PrimaryButton(
                  title: localization.confirm,
                  onPressed: onConfirm,
                ),
                const SizedBox(height: 16),
                PrimaryOutlineButton(
                  title: localization.cancel,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onConfirm() async {
    // Authenticate
    final localization = ref.read(l10nProvider);
    final authUtil = ref.read(authUtilProvider);

    final message = localization.sendAmountConfirm
        .replaceAll('%1', amount)
        .replaceAll('%2', tokenInfo.symbolLabel);
    final auth = await authUtil.authenticate(context, message, message);
    if (auth) {
      await sendTransaction();
    }
  }

  Future<void> sendTransaction() async {
    final account = ref.read(selectedAccountProvider);
    final accountService = ref.read(accountServiceProvider);
    final autoreceiveService = ref.read(autoreceiveServiceProvider(account));
    try {
      final address = account.address;
      final toAddress = Address.parse(destinationAltered);

      final amount = Amount.raw(widget.amountRaw, tokenInfo: tokenInfo);

      Uint8List? data;
      if (widget.memo.isNotEmpty) {
        data = stringToBytesUtf8(widget.memo);
      } else {
        data = widget.data;
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

      // Show complete
      final contacts = ref.read(contactsProvider);
      final contact = contacts.getContactWithAddress(
        widget.destination,
        includeLabels: true,
      );
      final contactName = contact?.name;

      //Navigator.of(context).popUntil(RouteUtils.withNameLike('/home'));

      Sheets.showAppHeightNineSheet(
        context: context,
        theme: ref.read(themeProvider),
        closeOnTap: true,
        removeUntilHome: true,
        widget: SendCompleteSheet(
          amountRaw: widget.amountRaw,
          tokenInfo: tokenInfo,
          destination: destinationAltered,
          contactName: contactName,
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
}
