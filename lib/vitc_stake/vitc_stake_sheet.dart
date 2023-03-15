import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_handle.dart';
import 'vitc_pool_details_card.dart';
import 'vitc_stake_providers.dart';
import 'vitc_stake_stake_dialog.dart';
import 'vitc_stake_types.dart';
import 'vitc_stake_withdraw_dialog.dart';

class VitcStakeSheet extends ConsumerWidget {
  final VitcPoolInfoAll poolInfo;

  const VitcStakeSheet({
    Key? key,
    required this.poolInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final rewardTokenInfo = poolInfo.rewardTokenInfo;

    Future<void> claim() async {
      final service = ref.read(vitcStakeServiceV2Provider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final authUtil = ref.read(authUtilProvider);
      final message = 'Claim  ${poolInfo.rewardTokenInfo.symbolLabel} Rewards';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth != true) {
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'VITCStake',
          'Sending claim request',
        );

        await autoreceiveService.pauseAutoreceive();
        await service.claimRewards(
          poolId: poolInfo.poolId,
          address: account.address,
          accountService: accountService,
        );

        UIUtil.showSnackbar('Claim request sent', context);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to send transaction', e, st);

        UIUtil.showSnackbar(l10n.sendError, context);
      } finally {
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).pop();
      }
    }

    Future<void> withdraw() async {
      final service = ref.read(vitcStakeServiceV2Provider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showAppDialog<Amount>(
        context: context,
        builder: (_) => VitcStakeWithdrawDialog(poolInfo: poolInfo),
      );

      if (amount == null) {
        return;
      }

      final authUtil = ref.read(authUtilProvider);

      final value = NumberUtil.formatedAmount(amount);
      final symbol = poolInfo.stakingTokenInfo.symbolLabel;
      final message = 'Withdraw $value $symbol';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth != true) {
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'VITCStake',
          'Sending withdraw request',
        );
        await autoreceiveService.pauseAutoreceive();
        await service.withdraw(
          poolId: poolInfo.poolId,
          address: account.address,
          rawValue: amount.raw,
          accountService: accountService,
        );

        UIUtil.showSnackbar('Withdraw request sent', context);
      } catch (e) {
        final log = ref.read(loggerProvider);
        log.e('Failed to withdraw', e);

        UIUtil.showSnackbar('Failed to withdraw. Please try again', context);
      } finally {
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).pop();
      }
    }

    Future<void> stake() async {
      final service = ref.read(vitcStakeServiceV2Provider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showAppDialog<Amount>(
        context: context,
        builder: (_) => VitcStakeStakeDialog(poolInfo: poolInfo),
      );

      if (amount == null) {
        return;
      }

      final authUtil = ref.read(authUtilProvider);
      final message =
          'Stake ${NumberUtil.formatedAmount(amount)} ${poolInfo.stakingTokenInfo.symbolLabel}';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth != true) {
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'VITCStake',
          'Sending stake request',
        );
        await autoreceiveService.pauseAutoreceive();
        await service.deposit(
          poolId: poolInfo.poolId,
          address: account.address,
          amount: amount,
          accountService: accountService,
        );

        UIUtil.showSnackbar('Stake request sent', context);
      } catch (e) {
        final log = ref.read(loggerProvider);
        log.e('Failed to stake', e);

        UIUtil.showSnackbar('Failed to send stake request', context);
      } finally {
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).pop();
      }
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SheetHandle(),
            Expanded(child: VitcPoolDetailsCard(poolInfo: poolInfo)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  PrimaryButton(
                    title: 'Claim ${rewardTokenInfo.tokenSymbol}',
                    onPressed: claim,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: PrimaryOutlineButton(
                          title: 'Stake',
                          onPressed: stake,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: PrimaryOutlineButton(
                          title: 'Withdraw',
                          onPressed: withdraw,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
