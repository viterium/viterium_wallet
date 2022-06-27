import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/accounts_providers.dart';
import '../app_icons.dart';
import '../core/core_providers.dart';
import '../tokens/token_icon_widget.dart';
import '../util/formatters.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../util/util.dart';
import '../util/vite_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/quota_selector.dart';
import '../widgets/sheet_header_button.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/validation_text.dart';
import 'quota_providers.dart';
import 'quota_stake_amounts.dart';

class QuotaGetSheet extends HookConsumerWidget {
  const QuotaGetSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final balance = ref.watch(balanceForTokenProvider(viteTokenId));

    const title = 'Get Quota';
    const minStakeValue = 134;
    final tokenInfo = TokenInfo.vite;

    final amountFocusNode = useFocusNode();
    final amountController = useTextEditingController(text: '$minStakeValue');
    final amountShowHint = useState(true);
    final amountValidationText = useState('');

    final beneficiaryFocusNode = useFocusNode();
    final beneficiaryController = useTextEditingController();
    final beneficiaryValidationText = useState('');
    final beneficiaryShowHint = useState(true);
    final beneficiaryAddress = useState<String?>(null);

    useEffect(() {
      final listener = () {
        amountShowHint.value = !amountFocusNode.hasFocus;
      };
      amountFocusNode.addListener(listener);
      return () => amountFocusNode.removeListener(listener);
    }, [amountFocusNode]);

    useEffect(() {
      final listener = () {
        beneficiaryShowHint.value = !beneficiaryFocusNode.hasFocus;
      };
      beneficiaryFocusNode.addListener(listener);
      return () => beneficiaryFocusNode.removeListener(listener);
    }, [beneficiaryFocusNode]);

    final utpe = useState(1);

    void updateUTPE(String source) {
      final value = Decimal.tryParse(source);
      if (value == null) {
        utpe.value = 1;
        return;
      }

      final amount = Amount(value: value, tokenInfo: TokenInfo.vite);
      utpe.value = ViteUtil.utpeForAmount(
        amount,
        quotaStakeList: quotaStakeAmounts,
      );
    }

    bool validateAmount(String source) {
      final value = Decimal.tryParse(source);

      if (value == null) {
        amountValidationText.value = 'Invalid value';
        return false;
      }

      if (value < Decimal.fromInt(minStakeValue)) {
        amountValidationText.value = 'Lock at least $minStakeValue VITE';
        return false;
      }

      final amount = Amount(value: value, tokenInfo: TokenInfo.vite);
      if (balance < amount.raw) {
        amountValidationText.value = l10n.insufficientBalance;
        return false;
      }

      amountValidationText.value = '';
      return true;
    }

    bool validateBeneficiary(String beneficiary) {
      if (beneficiary.isNotEmpty && !Address.isValid(beneficiary)) {
        beneficiaryValidationText.value = 'Invalid beneficiary address';
        return false;
      }

      beneficiaryValidationText.value = '';
      return true;
    }

    bool validateInput() {
      final amountValid = validateAmount(amountController.text);
      final beneficiaryValid = validateBeneficiary(beneficiaryController.text);
      return amountValid && beneficiaryValid;
    }

    Future<void> stakeForQuota() async {
      final amountText = amountController.text;
      final beneficiary = beneficiaryAddress.value;

      final address = ref.read(selectedAddressProvider);

      final value = Decimal.tryParse(amountText);
      if (value == null) {
        return;
      }
      final amount = Amount(value: value, tokenInfo: TokenInfo.vite);

      AppDialogs.showInProgressDialog(
        context,
        'Locking VITE for Quota',
        'Locking $value VITE for Quota',
      );

      try {
        final service = ref.read(accountServiceProvider);
        await service.stakeForQuota(
          address: address,
          rawAmount: amount.raw,
          beneficiary: Address.tryParse(beneficiary ?? ''),
        );

        ref.refresh(quotaRefreshProvider(address));

        UIUtil.showSnackbar('Locking for quota successful', context);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to stake for quota', e, st);
        UIUtil.showSnackbar('Something went wrong. Please try again.', context);
      }

      // dismiss in progress dialog
      Navigator.of(context).pop();
      // dismiss get quota sheet
      Navigator.of(context).pop();
    }

    Future<void> confirmAuth() async {
      final authUtil = ref.read(authUtilProvider);
      final message = 'Lock VITE for Quota';
      final auth = await authUtil.authenticate(context, message, message);

      if (auth) {
        stakeForQuota();
      }
    }

    Future<void> confirmStakeForQuota() async {
      final inputValid = validateInput();
      if (!inputValid) {
        return;
      }

      FocusManager.instance.primaryFocus?.unfocus();

      // confirm dialog
      AppDialogs.showConfirmDialog(
        context,
        'Lock VITE for Quota?',
        'Locked VITE can\'t be unlocked for approx 3 days (259200 snapshot blocks). After this time period expires, you may unlock anytime',
        'LOCK',
        confirmAuth,
      );
    }

    void showQuotaInfo() {
      //'UTPS - Unit transactions per second, referring to the number of UTs that an account can send in one second.\n\n';
      AppDialogs.showInfoDialog(
        context,
        'Quota',
        'UT - Unit Transaction. 1 UT is equivalent to the quota amount consumed in one transfer transaction without comment.\n\nUTPE - Unit transactions per epoch, refers to the number of UTs that an account can use in 75 snapshot blocks (approx 75 seconds).',
      );
    }

    void quotaSelectorChanged(int value) {
      utpe.value = value;
      final amount = quotaStakeAmounts[value];
      amountController.text = amount.substring(0, amount.length - 18);

      validateInput();
    }

    void editBeneficiary() {
      beneficiaryAddress.value = null;
      Future.delayed(const Duration(milliseconds: 50), () {
        beneficiaryFocusNode.requestFocus();
      });
    }

    Future<void> scanAddress() async {
      FocusManager.instance.primaryFocus?.unfocus();
      final scanResult = await UserDataUtil.scanQrCode(context);
      if (scanResult?.code == null) {
        return;
      }

      final address = Address.tryParse(scanResult!.code!);
      if (address != null) {
        beneficiaryController.text = address.viteAddress;
        beneficiaryAddress.value = address.viteAddress;
      }
    }

    Future<void> pasteAddress() async {
      final address = await UserDataUtil.getClipboardText(DataType.ADDRESS);
      if (address != null) {
        beneficiaryController.text = address;
        beneficiaryAddress.value = address;
      }
    }

    return SheetWidget(
      title: title,
      rightWidget: SheetHeaderButton(
        icon: AppIcons.info,
        onPressed: () =>
            openUrl('https://docs.vite.org/vite-docs/reference/quota.html'),
      ),
      mainWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lock VITE to get Quota',
            style: styles.textStyleParagraphBold,
          ),
          AppTextField(
            focusNode: amountFocusNode,
            controller: amountController,
            topMargin: 15,
            cursorColor: theme.primary,
            style: styles.textStyleAppTextFieldSimple,
            inputFormatters: [
              LengthLimitingTextInputFormatter(24),
              CurrencyFormatter(maxDecimalDigits: tokenInfo.decimals),
            ],
            onChanged: (text) {
              updateUTPE(text);

              if (text.isEmpty) {
                amountValidationText.value = '';
                return;
              }

              validateAmount(text);
            },
            textInputAction: TextInputAction.done,
            autocorrect: false,
            hintText: amountShowHint.value ? 'Lock amount' : null,
            prefixButton: TextFieldButton(
              widget: TokenIconWidget(tokenId: tokenInfo.tokenId),
              onPressed: null,
            ),
            suffixButton: TextFieldButton(
              widget: Text(
                'VITE',
                style: styles.textStyleDialogButtonText,
              ),
              onPressed: null,
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            textAlign: TextAlign.center,
          ),
          ValidationText(amountValidationText.value),
          QuotaSelector(
            value: utpe.value,
            minValue: 1,
            maxValue: 3571,
            onInfo: showQuotaInfo,
            onChanged: quotaSelectorChanged,
          ),
          const SizedBox(height: 40),
          AppTextField(
            focusNode: beneficiaryFocusNode,
            controller: beneficiaryController,
            cursorColor: theme.primary,
            textInputAction: TextInputAction.done,
            maxLines: null,
            autofocus: false,
            autocorrect: false,
            style: styles.textStyleAddressText90,
            hintText:
                beneficiaryShowHint.value ? 'Beneficiary (Optional)' : null,
            inputFormatters: [
              LengthLimitingTextInputFormatter(kViteAddressLength),
            ],
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: scanAddress,
            ),
            suffixButton: TextFieldButton(
              icon: AppIcons.paste,
              onPressed: pasteAddress,
            ),
            onChanged: (text) {
              final valid = validateBeneficiary(text);
              if (valid && text.isNotEmpty) {
                beneficiaryFocusNode.unfocus();
                beneficiaryAddress.value = text;
              }
            },
            overrideTextFieldWidget: beneficiaryAddress.value != null
                ? GestureDetector(
                    onTap: editBeneficiary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: AddressThreeLineText(
                        type: AddressThreeLineTextType.PRIMARY,
                        address: beneficiaryAddress.value!,
                      ),
                    ),
                  )
                : null,
          ),
          ValidationText(beneficiaryValidationText.value),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: 'Lock VITE',
              onPressed: confirmStakeForQuota,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: 'Cancel',
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
