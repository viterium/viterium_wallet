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
import 'viva_pool_details_card.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_stake_dialog.dart';
import 'viva_staking_types.dart';
import 'viva_staking_withdraw_dialog.dart';

class VivaStakingSheet extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;

  const VivaStakingSheet({
    Key? key,
    required this.poolInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final rewardTokenInfo = poolInfo.rewardTokenInfo;

    Future<void> claim() async {
      final service = ref.read(vivaStakingServiceV4Provider);
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
          'Viva Staking Pools',
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

    Future<void> checkTimeLock() async {
      AppDialogs.showConfirmDialog(
        context,
        'Note',
        'Claiming rewards will reset time lock',
        'CLAIM',
        claim,
        cancelText: 'CANCEL',
      );
    }

    Future<void> withdraw() async {
      final service = ref.read(vivaStakingServiceV4Provider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showAppDialog<Amount>(
        context: context,
        builder: (_) => VivaStakingWithdrawDialog(poolInfo: poolInfo),
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
          'Viva Staking Pools',
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

        UIUtil.showSnackbar('Failed to send withdraw request', context);
      } finally {
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).pop();
      }
    }

    Future<void> stake() async {
      final service = ref.read(vivaStakingServiceV4Provider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showAppDialog<Amount>(
        context: context,
        builder: (_) => VivaStakingStakeDialog(poolInfo: poolInfo),
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
          'Viva Staking Pools',
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
            Expanded(child: VivaPoolDetailsCard(poolInfo: poolInfo)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  PrimaryButton(
                    title: 'Claim ${rewardTokenInfo.tokenSymbol}',
                    onPressed:
                        poolInfo.hasShortLockTime ? checkTimeLock : claim,
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
