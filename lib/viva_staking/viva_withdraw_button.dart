import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_types.dart';
import 'viva_staking_withdraw_dialog.dart';

class VivaWithdrawButton extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;

  const VivaWithdrawButton({super.key, required this.poolInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLocked = ref.watch(vivaPoolIsLockedProvider(poolInfo));

    Future<void> withdraw() async {
      final service = ref.read(vivaStakingServiceProvider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showDialog<Amount>(
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

    return PrimaryOutlineButton(
      title: 'Withdraw',
      onPressed: withdraw,
      locked: isLocked,
    );
  }
}
