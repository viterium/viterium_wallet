import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../tokens/token_icon_widget.dart';
import '../util/formatters.dart';
import '../util/numberutil.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/app_text_field.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_types.dart';

class VivaStakingWithdrawDialog extends HookConsumerWidget {
  final VivaPoolInfoAll poolInfo;

  const VivaStakingWithdrawDialog({
    Key? key,
    required this.poolInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final userInfo = ref.watch(vivaUserInfoProvider(poolInfo.poolId)) ??
        VivaUserInfo(
          stakingBalance: BigInt.zero,
          rewardDebt: BigInt.zero,
        );

    final stakingValue = useMemoized(() {
      final amount = Amount.raw(userInfo.stakingBalance,
          tokenInfo: poolInfo.stakingTokenInfo);
      return NumberUtil.formatedAmount(amount);
    }, [userInfo.stakingBalance]);

    final controller = useTextEditingController();

    final formatter = NumberFormat.currency(name: '');
    final currencyFormatter = CurrencyFormatter(
      groupSeparator: formatter.symbols.GROUP_SEP,
      decimalSeparator: formatter.symbols.DECIMAL_SEP,
      maxDecimalDigits: poolInfo.stakingTokenInfo.decimals,
    );

    void onResult(String text) {
      text = text
          .replaceAll(currencyFormatter.groupSeparator, '')
          .replaceAll(currencyFormatter.decimalSeparator, '.');
      final value = Decimal.tryParse(text) ?? Decimal.zero;
      final amount = Amount.value(value, tokenInfo: poolInfo.stakingTokenInfo);
      Navigator.of(context).pop(amount);
    }

    return AppSimpleDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Enter Amount',
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        Container(
          alignment: Alignment.center,
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '(',
                  style: styles.textStyleTransactionUnitSmall,
                ),
                TextSpan(
                  text: stakingValue,
                  style: styles.textStyleBalanceAmountSmall,
                ),
                TextSpan(
                  text: ' ${poolInfo.stakingTokenInfo.symbolLabel})',
                  style: styles.textStyleTransactionUnitSmall,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        AppTextField(
          leftMargin: 0,
          rightMargin: 0,
          controller: controller,
          cursorColor: theme.primary,
          inputFormatters: [currencyFormatter],
          prefixButton: TextFieldButton(
            icon: AppIcons.swapcurrency,
            widget: TokenIconWidget(tokenId: poolInfo.rewardTokenId),
          ),
          suffixButton: TextFieldButton(
            icon: AppIcons.max,
            onPressed: () {
              final amount = Amount.raw(
                userInfo.stakingBalance,
                tokenInfo: poolInfo.stakingTokenInfo,
              );
              final text = NumberUtil.textFieldFormatedAmount(amount);
              controller.value = TextEditingValue(
                text: text,
                selection: TextSelection.collapsed(offset: text.length),
              );
            },
          ),
          onSubmitted: onResult,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              style: styles.dialogButtonStyle,
              child: Text(
                'WITHDRAW',
                style: styles.textStyleDialogButtonText,
              ),
              onPressed: () => onResult(controller.text),
            ),
          ],
        ),
      ],
    );
  }
}
