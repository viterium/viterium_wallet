import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../contracts/dex_fund_contract.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/dialog.dart';
import 'dex_fund_service.dart';
import 'dex_fund_types.dart';
import 'vitex_deposit_dialog.dart';
import 'vitex_providers.dart';
import 'vitex_withdraw_dialog.dart';

class VitexAccountFundInfoWidget extends ConsumerWidget {
  final AccountFundInfo accountFund;
  const VitexAccountFundInfoWidget({super.key, required this.accountFund});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final accountFund = this.accountFund;

    final available = Amount.raw(
      accountFund.available,
      tokenInfo: accountFund.tokenInfo,
    );
    final locked = Amount.raw(
      accountFund.locked,
      tokenInfo: accountFund.tokenInfo,
    );

    Future<void> deposit() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoReceiveService = ref.read(autoreceiveServiceProvider(account));
      final dexFund = DexFundService(
        client: accountService.client,
        contract: dexFundContract,
      );

      final amount = await showDialog<Amount>(
        context: context,
        builder: (_) => VitexDepositDialog(tokenInfo: accountFund.tokenInfo),
      );

      if (amount == null) {
        return;
      }

      final authUtil = ref.read(authUtilProvider);
      final message =
          'Deposit ${NumberUtil.formatedAmount(amount)} ${accountFund.tokenInfo.symbolLabel}';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth != true) {
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'Vitex',
          'Sending deposit request',
        );

        await autoReceiveService.pauseAutoreceive();
        await dexFund.deposit(
          address: account.address,
          accountService: accountService,
          amount: amount,
        );

        UIUtil.showSnackbar('Deposit request sent', context);
      } catch (e) {
        final log = ref.read(loggerProvider);
        log.e('Failed to deposit', e);

        UIUtil.showSnackbar('Failed to send deposit request', context);
      } finally {
        autoReceiveService.resumeAutoreceive();
        Navigator.of(context).pop();
      }
    }

    Future<void> withdraw() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoReceiveService = ref.read(autoreceiveServiceProvider(account));
      final dexFund = DexFundService(
        client: accountService.client,
        contract: dexFundContract,
      );

      final amount = await showDialog<Amount>(
        context: context,
        builder: (_) => VitexWithdrawDialog(tokenInfo: accountFund.tokenInfo),
      );

      if (amount == null) {
        return;
      }

      final authUtil = ref.read(authUtilProvider);
      final message =
          'Withdraw ${NumberUtil.formatedAmount(amount)} ${accountFund.tokenInfo.symbolLabel}';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth != true) {
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'Vitex',
          'Sending withdraw request',
        );

        await autoReceiveService.pauseAutoreceive();
        await dexFund.withdraw(
          address: account.address,
          accountService: accountService,
          amount: amount,
        );

        UIUtil.showSnackbar('Withdraw request sent', context);
      } catch (e) {
        final log = ref.read(loggerProvider);
        log.e('Failed to withdraw', e);

        UIUtil.showSnackbar('Failed to send withdraw request', context);
      } finally {
        autoReceiveService.resumeAutoreceive();
        Navigator.of(context).pop();
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Available', style: styles.textStyleTransactionType),
              Text(
                '${NumberUtil.formatedAmount(available)} ${available.symbolLabel}',
                style: styles.textStyleAddressPrimary,
              ),
            ],
          ),
          const SizedBox(height: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Locked', style: styles.textStyleTransactionType),
              Text(
                '${NumberUtil.formatedAmount(locked)} ${locked.symbolLabel}',
                style: styles.textStyleAddressPrimary,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: deposit,
                child: Text('DEPOSIT', style: styles.textStyleDialogButtonText),
                style: styles.dialogButtonStyle,
              ),
              TextButton(
                onPressed: withdraw,
                child: Text(
                  'WITHDRAW',
                  style: styles.textStyleDialogButtonText,
                ),
                style: styles.dialogButtonStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VitexWidget extends ConsumerWidget {
  final TokenInfo tokenInfo;
  const VitexWidget({super.key, required this.tokenInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vitexFunds = ref.watch(vitexAccountFundInfoProvider);
    final tokenId = tokenInfo.tokenId;

    return vitexFunds.when(
      data: (data) {
        final accountFund =
            data[tokenId] ??
            AccountFundInfo(
              tokenInfo: tokenInfo,
              available: BigInt.zero,
              locked: BigInt.zero,
            );
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: SingleChildScrollView(
            child: VitexAccountFundInfoWidget(accountFund: accountFund),
          ),
        );
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading:
          () => Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Align(
              alignment: Alignment.topCenter,
              child: const CupertinoActivityIndicator(),
            ),
          ),
    );
  }
}
