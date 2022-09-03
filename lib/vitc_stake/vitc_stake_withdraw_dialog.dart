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
import 'vitc_stake_providers.dart';
import 'vitc_stake_types.dart';

class VitcStakeWithdrawDialog extends HookConsumerWidget {
  final VitcPoolInfoAll poolInfo;

  const VitcStakeWithdrawDialog({
    Key? key,
    required this.poolInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final userInfo = ref.watch(vitcStakeUserInfoProvider(poolInfo.poolId)) ??
        VitcStakeUserInfo(
          stakingBalance: BigInt.zero,
          rewardDebt: BigInt.zero,
          depositBlock: BigInt.zero,
        );
    ;

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

    return LayoutBuilder(builder: (context, constraints) {
      return AppSimpleDialog(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            'Withdraw Amount',
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
          Container(
            width: constraints.maxWidth * 0.7,
            child: AppTextField(
              leftMargin: 0,
              rightMargin: 0,
              controller: controller,
              cursorColor: theme.primary,
              textInputAction: TextInputAction.done,
              maxLines: null,
              autocorrect: false,
              hintText: l10n.enterAmount,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              textAlign: TextAlign.center,
              inputFormatters: [currencyFormatter],
              prefixButton: TextFieldButton(
                icon: AppIcons.swapcurrency,
                widget: TokenIconWidget(tokenId: poolInfo.stakingTokenId),
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: styles.dialogButtonStyle,
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'CLOSE',
                  style: styles.textStyleDialogButtonText,
                ),
              ),
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
    );
  }
}
