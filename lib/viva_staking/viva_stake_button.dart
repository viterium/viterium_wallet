import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_stake_dialog.dart';
import 'viva_staking_types.dart';

class VivaStakeButton extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;

  const VivaStakeButton({super.key, required this.poolInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> stake() async {
      final service = ref.read(vivaStakingServiceProvider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showDialog<Amount>(
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

    return PrimaryOutlineButton(title: 'Stake', onPressed: stake);
  }
}
