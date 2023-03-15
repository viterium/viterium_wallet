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
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/fiat_value_container.dart';
import '../widgets/sheet_util.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'vitc_swap_token_select_sheet.dart';
import 'vitc_swap_widgets.dart';

class VitcSwapPage extends HookConsumerWidget {
  const VitcSwapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

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
      if (settings.fromToken.token == state.fromToken.token) {
        return null;
      }
      fromTokenChanged = true;
      Future.delayed(Duration.zero, () {
        final notifier = ref.read(vitcSwapStateProvider.notifier);
        if (settings.fromToken.token == state.toToken.token) {
          if (state.toAmount.value == Decimal.zero) {
            fromAmountController.value = TextEditingValue.empty;
          } else {
            final text = NumberUtil.textFieldFormatedAmount(state.toAmount);
            fromAmountController.value = TextEditingValue(
              text: text,
              selection: TextSelection.collapsed(offset: text.length),
            );
          }
        }
        notifier.updateFromToken(
          settings.fromToken,
          onRemoteAmount: (amount) {
            if (amount == null) {
              toAmountController.value = TextEditingValue.empty;
              return;
            }
            final text = NumberUtil.textFieldFormatedAmount(amount);
            toAmountController.value = TextEditingValue(
              text: text,
              selection: TextSelection.collapsed(offset: text.length),
            );
          },
        );
      });
      return null;
    }, [settings.fromToken.token]);

    useEffect(() {
      if (fromTokenChanged || settings.toToken.token == state.toToken.token) {
        return;
      }
      Future.delayed(Duration.zero, () {
        final notifier = ref.read(vitcSwapStateProvider.notifier);
        notifier.updateToToken(
          settings.toToken,
          onRemoteAmount: (amount) {
            if (amount == null) {
              toAmountController.value = TextEditingValue.empty;
              return;
            }
            final text = NumberUtil.textFieldFormatedAmount(amount);
            toAmountController.text = text;
          },
        );
      });
      return null;
    }, [settings.toToken.token]);

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
        if (amount == null) {
          toAmountController.value = TextEditingValue.empty;
          return;
        }
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
        if (amount == null) {
          fromAmountController.value = TextEditingValue.empty;
          return;
        }
        final text = NumberUtil.textFieldFormatedAmount(amount);
        fromAmountController.text = text;
      });
    }

    void onChangeToken({
      required String title,
      required TokenCardAction action,
    }) {
      Sheets.showAppHeightEightSheet(
        context: context,
        widget: ProviderScope(
          overrides: [
            tokenCardActionProvider.overrideWithValue(action),
          ],
          child: VitcSwapTokenSelectSheet(
            title: title,
          ),
        ),
        theme: theme,
        backgroundColor: theme.background,
      );
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
        if (amount == null) {
          toAmountController.value = TextEditingValue.empty;
          return;
        }
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

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: TapOutsideUnfocus(
        child: ProviderScope(
          overrides: [
            selectedTokenProvider.overrideWith((ref) {
              final settings = ref.watch(vitcSwapSettingsProvider);
              return settings.fromToken;
            }),
          ],
          child: Column(
            children: [
              const HeaderWidget(),
              const AccountWidget(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      FiatValueContainer(
                        amount: fromAmount,
                        child: AppTextField(
                          style: styles.textStyleParagraphPrimary,
                          controller: fromAmountController,
                          inputFormatters: [fromCurrencyFormatter],
                          onChanged: onFromChanged,
                          textInputAction: TextInputAction.done,
                          maxLines: null,
                          autocorrect: false,
                          hintText: l10n.enterAmount,
                          prefixButton: TextFieldButton(
                            icon: AppIcons.swapcurrency,
                            widget: TokenIconWidget(
                                tokenId: state.fromToken.tokenId),
                            onPressed: () => onChangeToken(
                              title: 'Swap From',
                              action: TokenCardAction.vitcSwapSelectFromToken,
                            ),
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
                      FiatValueContainer(
                        amount: toAmount,
                        child: AppTextField(
                          style: styles.textStyleParagraphPrimary,
                          controller: toAmountController,
                          inputFormatters: [toCurrencyFormatter],
                          onChanged: onToChanged,
                          textInputAction: TextInputAction.done,
                          maxLines: null,
                          autocorrect: false,
                          hintText: l10n.enterAmount,
                          prefixButton: TextFieldButton(
                            icon: AppIcons.swapcurrency,
                            widget: TokenIconWidget(tokenId: toToken.tokenId),
                            onPressed: () => onChangeToken(
                              title: 'Swap To',
                              action: TokenCardAction.vitcSwapSelectToToken,
                            ),
                          ),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 10),
                      LowLiquidityWidget(
                        fromToken: fromToken.token,
                        toToken: toToken.token,
                      ),
                      if (fromAmount.raw != BigInt.zero) ...[
                        const RateWidget(),
                        const SizedBox(height: 12),
                      ],
                      const SlippageWidget(),
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
