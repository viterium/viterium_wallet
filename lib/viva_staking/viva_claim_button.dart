import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_types.dart';

class VivaClaimButton extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;

  const VivaClaimButton({
    super.key,
    required this.poolInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final isLocked = ref.watch(vivaPoolIsClaimLockedProvider(poolInfo));

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
        if (poolInfo.shouldDepositClaim) {
          await service.deposit(
            poolId: poolInfo.poolId,
            address: account.address,
            amount: Amount.raw(
              BigInt.zero,
              tokenInfo: poolInfo.stakingTokenInfo,
            ),
            accountService: accountService,
          );
        } else {
          await service.claimRewards(
            poolId: poolInfo.poolId,
            address: account.address,
            accountService: accountService,
          );
        }

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

    Future<void> confirmClaim() async {
      AppDialogs.showConfirmDialog(
        context,
        'Note',
        'Claiming rewards will reset time lock',
        'CLAIM',
        claim,
        cancelText: 'CANCEL',
      );
    }

    return PrimaryButton(
      title: 'Claim ${rewardTokenInfo.tokenSymbol}',
      onPressed: poolInfo.hasShortLockTime ? confirmClaim : claim,
      locked: isLocked,
    );
  }
}
