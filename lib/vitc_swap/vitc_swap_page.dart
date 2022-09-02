import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rate_limiter/rate_limiter.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../send_sheet/balance_text_widget.dart';
import '../tokens/token_icon_widget.dart';
import '../util/formatters.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_util.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'vitc_swap_slippage_dialog.dart';
import 'vitc_swap_token_select_sheet.dart';

class VitcSwapPage extends HookConsumerWidget {
  const VitcSwapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final account = ref.watch(selectedAccountProvider);
    final settings = ref.watch(vitcSwapSettingsProvider);

    final fromTokenInfo = settings.fromToken;
    final toTokenInfo = settings.toToken;

    final fromBalance =
        ref.watch(balanceForTokenProvider(fromTokenInfo.tokenId));

    final fromAmountController = useTextEditingController();
    final toAmountController = useTextEditingController();

    final fromAmountRaw = useState(BigInt.zero);
    final toAmountRaw = useState(BigInt.zero);

    useEffect(() {
      fromAmountRaw.value = BigInt.zero;
      toAmountRaw.value = BigInt.zero;
      return null;
    }, [fromTokenInfo, toTokenInfo]);

    final fromAmount = useMemoized(() {
      return Amount.raw(fromAmountRaw.value, tokenInfo: fromTokenInfo);
    }, [fromAmountRaw.value, fromTokenInfo]);

    final toAmount = useMemoized(() {
      return Amount.raw(toAmountRaw.value, tokenInfo: toTokenInfo);
    }, [toAmountRaw.value, toTokenInfo]);

    final onUpdate = useState(0);

    final rate = useMemoized(() {
      if (toAmount.value == Decimal.zero) {
        return Decimal.zero;
      }

      final value = (fromAmount.value / toAmount.value)
              .toDecimal(scaleOnInfinitePrecision: 8) *
          Decimal.ten.pow(8);
      return NumberUtil.getStringFromRaw(value.toBigInt(), 8, 8);
    }, [onUpdate.value]);

    final fromCurrencyFormatter = useMemoized(() {
      final formatter = NumberFormat.currency(name: '');
      return CurrencyFormatter(
        groupSeparator: formatter.symbols.GROUP_SEP,
        decimalSeparator: formatter.symbols.DECIMAL_SEP,
        maxDecimalDigits: fromTokenInfo.decimals,
      );
    }, [fromTokenInfo]);

    final toCurrencyFormatter = useMemoized(() {
      final formatter = NumberFormat.currency(name: '');
      return CurrencyFormatter(
        groupSeparator: formatter.symbols.GROUP_SEP,
        decimalSeparator: formatter.symbols.DECIMAL_SEP,
        maxDecimalDigits: toTokenInfo.decimals,
      );
    }, [toTokenInfo]);

    final isMaxSwap = useMemoized(() {
      return fromBalance == fromAmountRaw.value;
    }, [fromBalance, fromAmountRaw.value]);

    Future<void> updatedFromAmount(Amount amount) async {
      final service = ref.read(vitcSwapServiceProvider);
      debounce(() async {
        try {
          final toAmount = await service.getConversion(
            fromAmount: amount,
            to: toTokenInfo,
          );

          toAmountRaw.value = toAmount.raw;

          final text = NumberUtil.textFieldFormatedAmount(toAmount);
          toAmountController.value = TextEditingValue(
            text: text,
            selection: TextSelection.collapsed(offset: text.length),
          );
          onUpdate.value += 1;
        } catch (e) {
          // TODO - show message
        }
      }, const Duration(milliseconds: 10))();
    }

    useEffect(() {
      if (fromAmountRaw.value == BigInt.zero) {
        return;
      }
      Future.delayed(Duration.zero, () {
        final amount = Amount.raw(
          fromAmountRaw.value,
          tokenInfo: fromTokenInfo,
        );
        final text = NumberUtil.textFieldFormatedAmount(amount);
        fromAmountController.value = TextEditingValue(
          text: text,
          selection: TextSelection.collapsed(offset: text.length),
        );
        updatedFromAmount(amount);
      });
      return;
    }, [fromTokenInfo, toTokenInfo]);

    Future<void> updatedToAmount(Amount amount) async {
      final service = ref.read(vitcSwapServiceProvider);

      debounce(() async {
        try {
          final fromAmount = await service.getInversedConversion(
            from: fromTokenInfo,
            toAmount: amount,
          );

          fromAmountRaw.value = fromAmount.raw;

          final text = NumberUtil.textFieldFormatedAmount(fromAmount);
          fromAmountController.value = TextEditingValue(
            text: text,
            selection: TextSelection.collapsed(offset: text.length),
          );
          onUpdate.value += 1;
        } catch (e) {
          // TODO - show message
        }
      }, const Duration(milliseconds: 30))();
    }

    void onFromChanged(String text) {
      text = text
          .replaceAll(fromCurrencyFormatter.groupSeparator, '')
          .replaceAll(fromCurrencyFormatter.decimalSeparator, '.');
      final value = Decimal.tryParse(text);
      if (value == null) {
        toAmountRaw.value = BigInt.zero;
        fromAmountRaw.value = BigInt.zero;
        toAmountController.text = '';
        return;
      }

      final amount = Amount.value(value, tokenInfo: fromTokenInfo);

      if (fromAmountRaw.value == amount.raw) {
        return;
      }
      fromAmountRaw.value = amount.raw;
      updatedFromAmount(amount);
    }

    void onToChanged(String text) {
      text = text
          .replaceAll(toCurrencyFormatter.groupSeparator, '')
          .replaceAll(fromCurrencyFormatter.decimalSeparator, '.');
      final value = Decimal.tryParse(text);
      if (value == null) {
        toAmountRaw.value = BigInt.zero;
        fromAmountRaw.value = BigInt.zero;
        fromAmountController.text = '';
        return;
      }

      final amount = Amount.value(value, tokenInfo: toTokenInfo);
      if (toAmountRaw.value == amount.raw) {
        return;
      }
      toAmountRaw.value = amount.raw;
      updatedToAmount(amount);
    }

    void onMaxPressed() {
      if (isMaxSwap) {
        return;
      }

      final amount = Amount.raw(fromBalance, tokenInfo: fromTokenInfo);
      if (fromAmountRaw.value == amount.raw) {
        return;
      }
      fromAmountRaw.value = amount.raw;
      final text = NumberUtil.textFieldFormatedAmount(amount);
      fromAmountController.value = TextEditingValue(
        text: text,
        selection: TextSelection.collapsed(offset: text.length),
      );
      updatedFromAmount(amount);
    }

    void onSwapTokens() {
      final notifier = ref.read(vitcSwapSettingsProvider.notifier);

      fromAmountRaw.value = toAmountRaw.value;
      notifier.updateFromToken(toTokenInfo);
    }

    Amount getMinimum() {
      final slippage = Decimal.parse(settings.slippage.toStringAsFixed(2));
      final minimum = Amount.value(
        toAmount.value * (Decimal.one - slippage),
        tokenInfo: toTokenInfo,
      );
      return minimum;
    }

    Future<void> swap() async {
      final account = ref.read(selectedAccountProvider);
      final service = ref.read(vitcSwapServiceProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      try {
        AppDialogs.showInProgressDialog(
          context,
          'Sending Request',
          'Please wait...',
        );

        await autoreceiveService.pauseAutoreceive();
        final minimum = getMinimum();
        await service.swap(
          address: account.address,
          accountService: accountService,
          amount: fromAmount,
          minimum: minimum,
        );
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).pop();

        UIUtil.showSnackbar('Swap request sent', context);
        fromAmountRaw.value = BigInt.zero;
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send swap request', e, st);

        autoreceiveService.resumeAutoreceive();

        UIUtil.showSnackbar(l10n.sendError, context);

        Navigator.of(context).pop();
      }
    }

    Future<void> confirmSwap() async {
      if (fromBalance < fromAmount.raw) {
        AppDialogs.showInfoDialog(
          context,
          'Insufficient Balance',
          'You don\'t have enough ${fromTokenInfo.symbolLabel} for this swap',
        );
        return;
      }

      final authUtil = ref.read(authUtilProvider);

      final message =
          'Swap ${NumberUtil.formatedAmount(fromAmount)} ${fromTokenInfo.symbolLabel}\nFor ${NumberUtil.formatedAmount(toAmount)} ${toTokenInfo.symbolLabel}';
      final auth = await authUtil.authenticate(context, message, message);

      if (auth == true) {
        swap();
      }
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: TapOutsideUnfocus(
        child: ProviderScope(
          overrides: [
            selectedTokenProvider.overrideWithProvider(
              StateProvider((ref) {
                final settings = ref.watch(vitcSwapSettingsProvider);
                return settings.fromToken;
              }),
            )
          ],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 60, height: 60),
                  Expanded(
                    child: Column(
                      children: [
                        const SheetHandle(),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'VITCSwap',
                              style: styles.textStyleHeader(context),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 60, height: 60),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 30,
                  right: 30,
                  bottom: 30,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        account.name,
                        style: styles.textStyleAccountName,
                      ),
                      AddressShortText(address: account.viteAddress),
                      const SizedBox(height: 8),
                      const BalanceTextWidget(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    AppTextField(
                      style: styles.textStyleParagraphPrimary,
                      controller: fromAmountController,
                      inputFormatters: [
                        fromCurrencyFormatter,
                      ],
                      onChanged: onFromChanged,
                      textInputAction: TextInputAction.done,
                      maxLines: null,
                      autocorrect: false,
                      hintText: l10n.enterAmount,
                      prefixButton: TextFieldButton(
                        icon: AppIcons.swapcurrency,
                        widget: TokenIconWidget(tokenId: fromTokenInfo.tokenId),
                        onPressed: () {
                          Sheets.showAppHeightEightSheet(
                            context: context,
                            widget: ProviderScope(
                              overrides: [
                                tokenCardActionProvider.overrideWithValue(
                                  TokenCardAction.vitcSwapSelectFromToken,
                                ),
                              ],
                              child: VitcSwapTokenSelectSheet(
                                title: 'Swap from',
                              ),
                            ),
                            theme: theme,
                            backgroundColor: theme.background,
                          );
                        },
                      ),
                      suffixButton: TextFieldButton(
                        icon: AppIcons.max,
                        onPressed: onMaxPressed,
                      ),
                      fadeSuffixOnCondition: true,
                      suffixShowFirstCondition: !isMaxSwap,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: TextButton(
                        style: styles.appIconButtonStyle,
                        child: Icon(
                          Icons.swap_vert,
                          color: theme.text,
                        ),
                        onPressed: onSwapTokens,
                      ),
                    ),
                    AppTextField(
                      style: styles.textStyleParagraphPrimary,
                      controller: toAmountController,
                      inputFormatters: [
                        toCurrencyFormatter,
                      ],
                      onChanged: onToChanged,
                      textInputAction: TextInputAction.done,
                      maxLines: null,
                      autocorrect: false,
                      hintText: l10n.enterAmount,
                      prefixButton: TextFieldButton(
                        icon: AppIcons.swapcurrency,
                        widget: TokenIconWidget(tokenId: toTokenInfo.tokenId),
                        onPressed: () {
                          Sheets.showAppHeightEightSheet(
                            context: context,
                            widget: ProviderScope(
                              overrides: [
                                tokenCardActionProvider.overrideWithValue(
                                  TokenCardAction.vitcSwapSelectToToken,
                                ),
                              ],
                              child: VitcSwapTokenSelectSheet(
                                title: 'Swap To',
                              ),
                            ),
                            theme: theme,
                            backgroundColor: theme.background,
                          );
                        },
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    if (fromAmountRaw.value != BigInt.zero) ...[
                      Text(
                        'Rate:',
                        style: styles.textStyleTransactionType,
                      ),
                      Text(
                        '$rate ${fromTokenInfo.symbolLabel} per ${toTokenInfo.symbolLabel}',
                        style: styles.textStyleAddressPrimary,
                      ),
                      const SizedBox(height: 12),
                    ],
                    TextButton(
                      style: styles.dialogButtonStyle,
                      child: Column(
                        children: [
                          Text(
                            'Slippage Tolerance:',
                            style: styles.textStyleTransactionType,
                          ),
                          Text(
                            '${(settings.slippage * 100).toStringAsFixed(2)}%',
                            style: styles.textStyleAddressPrimary,
                          ),
                        ],
                      ),
                      onPressed: () async {
                        final slippage = await showAppDialog<double>(
                          context: context,
                          builder: (_) => VitcSwapSlippageDialog(
                            slippage: settings.slippage,
                          ),
                        );

                        if (slippage != null) {
                          final notifier =
                              ref.read(vitcSwapSettingsProvider.notifier);
                          notifier.updateSlippage(slippage / 100.0);
                        }
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    PrimaryButton(
                      title: 'Swap',
                      onPressed: confirmSwap,
                    ),
                    const SizedBox(height: 16),
                    PrimaryOutlineButton(
                      title: l10n.close,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
