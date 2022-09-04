import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
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

    final state = ref.watch(vitcSwapStateProvider);

    final fromAmount = state.fromAmount;
    final toAmount = state.toAmount;

    final fromToken = state.fromToken;
    final toToken = state.toToken;

    final fromBalance = ref.watch(balanceForTokenProvider(fromToken.tokenId));

    final fromAmountController = useTextEditingController();
    final toAmountController = useTextEditingController();

    bool fromTokenChanged = false;
    useEffect(() {
      if (settings.fromToken == state.fromToken) {
        return;
      }
      fromTokenChanged = true;
      Future.delayed(Duration.zero, () {
        final notifier = ref.read(vitcSwapStateProvider.notifier);
        if (settings.fromToken == state.toToken) {
          final text = NumberUtil.textFieldFormatedAmount(state.toAmount);
          fromAmountController.value = TextEditingValue(
            text: text,
            selection: TextSelection.collapsed(offset: text.length),
          );
        }
        notifier.updateFromToken(
          settings.fromToken,
          onRemoteAmount: (amount) {
            final text = NumberUtil.textFieldFormatedAmount(amount);
            toAmountController.value = TextEditingValue(
              text: text,
              selection: TextSelection.collapsed(offset: text.length),
            );
          },
        );
      });
      return null;
    }, [settings.fromToken]);

    useEffect(() {
      if (fromTokenChanged || settings.toToken == state.toToken) {
        return;
      }
      Future.delayed(Duration.zero, () {
        final notifier = ref.read(vitcSwapStateProvider.notifier);
        notifier.updateToToken(
          settings.toToken,
          onRemoteAmount: (amount) {
            final text = NumberUtil.textFieldFormatedAmount(amount);
            toAmountController.text = text;
          },
        );
      });
      return null;
    }, [settings.toToken]);

    final rate = useMemoized(() {
      if (toAmount.raw == BigInt.zero || fromAmount.raw == BigInt.zero) {
        return Decimal.zero;
      }

      final value = (fromAmount.value / toAmount.value)
              .toDecimal(scaleOnInfinitePrecision: 8) *
          Decimal.ten.pow(8);
      return NumberUtil.textFieldFormatedAmount(
        Amount.raw(
          value.toBigInt(),
          tokenInfo: TokenInfo.vite.copyWith(decimals: 8),
        ),
      );
    }, [state.callId]);

    final formatter = useMemoized(
      () => NumberFormat.currency(name: ''),
      const [],
    );

    final fromCurrencyFormatter = useMemoized(() {
      return CurrencyFormatter(
        groupSeparator: formatter.symbols.GROUP_SEP,
        decimalSeparator: formatter.symbols.DECIMAL_SEP,
        maxDecimalDigits: fromToken.decimals,
      );
    }, [fromToken]);

    final toCurrencyFormatter = useMemoized(() {
      return CurrencyFormatter(
        groupSeparator: formatter.symbols.GROUP_SEP,
        decimalSeparator: formatter.symbols.DECIMAL_SEP,
        maxDecimalDigits: toToken.decimals,
      );
    }, [toToken]);

    final isMaxSwap = useMemoized(() {
      return fromBalance == fromAmount.raw;
    }, [fromBalance, fromAmount]);

    void onFromChanged(String text) {
      text = text
          .replaceAll(fromCurrencyFormatter.groupSeparator, '')
          .replaceAll(fromCurrencyFormatter.decimalSeparator, '.');

      final notifier = ref.read(vitcSwapStateProvider.notifier);
      final value = Decimal.tryParse(text);
      if (value == null) {
        notifier.updateFromValue(null);
        toAmountController.value = TextEditingValue.empty;
        return;
      }

      notifier.updateFromValue(value, onRemoteAmount: (amount) {
        final text = NumberUtil.textFieldFormatedAmount(amount);
        toAmountController.text = text;
      });
    }

    void onToChanged(String text) {
      text = text
          .replaceAll(toCurrencyFormatter.groupSeparator, '')
          .replaceAll(toCurrencyFormatter.decimalSeparator, '.');
      final value = Decimal.tryParse(text);

      final notifier = ref.read(vitcSwapStateProvider.notifier);
      if (value == null) {
        notifier.updateToValue(null);
        fromAmountController.value = TextEditingValue.empty;
        return;
      }

      notifier.updateToValue(value, onRemoteAmount: (amount) {
        final text = NumberUtil.textFieldFormatedAmount(amount);
        fromAmountController.text = text;
      });
    }

    void onMaxPressed() {
      if (isMaxSwap) {
        return;
      }

      final amount = Amount.raw(fromBalance, tokenInfo: fromToken);
      if (fromAmount.raw == amount.raw) {
        return;
      }
      final text = NumberUtil.textFieldFormatedAmount(amount);
      fromAmountController.value = TextEditingValue(
        text: text,
        selection: TextSelection.collapsed(offset: text.length),
      );

      final notifier = ref.read(vitcSwapStateProvider.notifier);
      notifier.updateFromValue(amount.value, onRemoteAmount: (amount) {
        final text = NumberUtil.textFieldFormatedAmount(amount);
        toAmountController.text = text;
      });
    }

    void onSwitchTokens() {
      final notifier = ref.read(vitcSwapSettingsProvider.notifier);
      notifier.updateFromToken(settings.toToken);
    }

    Future<void> performSwap() async {
      final account = ref.read(selectedAccountProvider);
      final notifier = ref.read(vitcSwapStateProvider.notifier);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      try {
        AppDialogs.showInProgressDialog(
          context,
          'Sending Request',
          'Please wait...',
        );

        await autoreceiveService.pauseAutoreceive();
        await notifier.performSwap(
          address: account.address,
          accountService: accountService,
        );
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).pop();

        UIUtil.showSnackbar('Swap request sent', context);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send swap request', e, st);

        autoreceiveService.resumeAutoreceive();

        UIUtil.showSnackbar(l10n.sendError, context);

        Navigator.of(context).pop();
      }
    }

    Future<void> confirmSwap() async {
      final fromValue = NumberUtil.formatedAmount(fromAmount);
      final fromSymbol = fromToken.symbolLabel;
      final toValue = NumberUtil.formatedAmount(toAmount);
      final toSymbol = toToken.symbolLabel;

      if (fromBalance < fromAmount.raw) {
        AppDialogs.showInfoDialog(
          context,
          'Insufficient Balance',
          'You don\'t have enough ${fromSymbol} for this swap',
        );
        return;
      }

      final authUtil = ref.read(authUtilProvider);
      final message = 'Swap $fromValue $fromSymbol\nFor $toValue $toSymbol';
      final auth = await authUtil.authenticate(context, message, message);

      if (auth == true) {
        performSwap();
      }
    }

    Future<void> changeSlippage() async {
      final slippage = await showAppDialog<double>(
        context: context,
        builder: (_) => VitcSwapSlippageDialog(
          slippage: settings.slippage,
        ),
      );

      if (slippage != null) {
        final notifier = ref.read(vitcSwapSettingsProvider.notifier);
        notifier.updateSlippage(slippage / 100.0);
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
                  bottom: 10,
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
                child: SingleChildScrollView(
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
                          widget:
                              TokenIconWidget(tokenId: state.fromToken.tokenId),
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
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
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
                          onPressed: onSwitchTokens,
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
                          widget:
                              TokenIconWidget(tokenId: state.toToken.tokenId),
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
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      if (fromAmount.raw != BigInt.zero) ...[
                        Text(
                          'Rate:',
                          style: styles.textStyleTransactionType,
                        ),
                        Text(
                          '$rate ${fromToken.symbolLabel} per ${toToken.symbolLabel}',
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
                        onPressed: changeSlippage,
                      ),
                    ],
                  ),
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
                      onPressed: () {
                        final notifier =
                            ref.read(vitcSwapStateProvider.notifier);
                        notifier.updateFromValue(null);
                        Navigator.of(context).pop();
                      },
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
