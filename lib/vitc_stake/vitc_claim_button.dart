import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import 'vitc_stake_providers.dart';
import 'vitc_stake_types.dart';

class VitcClaimButton extends ConsumerWidget {
  final VitcPoolInfoAll poolInfo;
  const VitcClaimButton({super.key, required this.poolInfo});

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

    return PrimaryButton(
      title: 'Claim ${rewardTokenInfo.tokenSymbol}',
      onPressed: claim,
    );
  }
}
