import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_styles.dart';
import '../util/formatters.dart';
import '../util/numberutil.dart';
import '../widgets/app_text_field.dart';
import 'balance_text_widget.dart';
import 'send_sheet_providers.dart';

class SendAmountWidget extends ConsumerStatefulWidget {
  final BigInt? quickSendAmount;

  const SendAmountWidget({
    Key? key,
    this.quickSendAmount,
  });

  @override
  _SendAmountWidgetState createState() => _SendAmountWidgetState();
}

class _SendAmountWidgetState extends ConsumerState<SendAmountWidget> {
  final _sendAmountFocusNode = FocusNode();
  final _sendAmountController = TextEditingController();

  String _amountValidationText = '';
  String? _amountHint = '';

  BigInt? _rawAmount;

  late BigInt? quickSendAmount = widget.quickSendAmount;

  // TokenInfo get tokenInfo => widget.tokenInfo;
  // String get tokenName => tokenInfo.tokenName;
  // String get tokenSymbol => tokenInfo.tokenSymbol;
  // TokenId get tokenId => tokenInfo.tokenId;

  @override
  void initState() {
    super.initState();

    _sendAmountFocusNode.addListener(() {
      if (_sendAmountFocusNode.hasFocus) {
        if (_rawAmount != null) {
          final tokenInfo = ref.read(selectedTokenProvider);
          setState(() {
            _sendAmountController.text = NumberUtil.getRawAsUsableString(
                _rawAmount!, tokenInfo.decimals);
            _rawAmount = null;
          });
        }
        if (quickSendAmount != null) {
          _sendAmountController.text = '';
          setState(() => quickSendAmount = null);
        }
        setState(() => _amountHint = null);
      } else {
        setState(() => _amountHint = '');
      }
    });

    // Set quick send amount
    if (quickSendAmount != null) {
      final tokenInfo = ref.read(selectedTokenProvider);
      _sendAmountController.text = NumberUtil.getRawAsUsableString(
        quickSendAmount!,
        tokenInfo.decimals,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final tokenInfo = ref.watch(selectedTokenProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppTextField(
          focusNode: _sendAmountFocusNode,
          controller: _sendAmountController,
          topMargin: 30,
          cursorColor: theme.primary,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: theme.primary,
            fontFamily: kFontFamily,
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(24),
            if (_rawAmount == null)
              CurrencyFormatter(maxDecimalDigits: tokenInfo.decimals),
          ],
          onChanged: (text) {
            // Always reset the error message to be less annoying
            setState(() {
              _amountValidationText = '';
              // Reset the raw amount
              _rawAmount = null;
            });
          },
          textInputAction: TextInputAction.next,
          maxLines: null,
          autocorrect: false,
          hintText: _amountHint == null ? '' : localization.enterAmount,
          prefixButton: TextFieldButton(
            icon: AppIcons.swapcurrency,
            widget: Image.asset(
              'assets/token_icons/${tokenInfo.tokenId}.png',
              width: 32,
              height: 32,
            ),
            onPressed: () {},
          ),
          suffixButton: TextFieldButton(
            icon: AppIcons.max,
            onPressed: () {
              if (_isMaxSend) {
                return;
              }
              final tokenInfo = ref.read(selectedTokenProvider);
              final tokenBalance =
                  ref.read(tokenBalanceDisplayProvider(tokenInfo.tokenId));
              ref.read(amountStateProvider.notifier).setAmount(tokenBalance);
              ref.read(addressStateProvider.notifier).editAddress(context);
            },
          ),
          fadeSuffixOnCondition: true,
          suffixShowFirstCondition: !_isMaxSend,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          textAlign: TextAlign.center,
          onSubmitted: (text) {
            FocusScope.of(context).unfocus();
            ref.read(addressStateProvider.notifier).focusAddress(context);
          },
        ),
        Container(
          alignment: const AlignmentDirectional(0, 0),
          margin: const EdgeInsets.only(top: 3),
          child: Text(
            _amountValidationText,
            style: TextStyle(
              fontSize: 14,
              color: theme.primary,
              fontFamily: kFontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  bool get _isMaxSend {
    final text = _sendAmountController.text;
    if (text.isEmpty) {
      return false;
    }
    final tokenInfo = ref.read(selectedTokenProvider);
    final balance = ref.read(tokenBalanceDisplayProvider(tokenInfo.tokenId));
    return text == balance;
  }
}
