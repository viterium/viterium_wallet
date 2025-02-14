import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import 'vitc_stake_providers.dart';
import 'vitc_stake_types.dart';
import 'vitc_stake_withdraw_dialog.dart';

class VitcWithdrawButton extends ConsumerWidget {
  final VitcPoolInfoAll poolInfo;
  const VitcWithdrawButton({super.key, required this.poolInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLocked = ref.watch(vitcPoolIsLockedProvider(poolInfo));

    Future<void> withdraw() async {
      final service = ref.read(vitcStakeServiceV2Provider);
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showDialog<Amount>(
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

    return PrimaryOutlineButton(
      title: 'Withdraw',
      onPressed: withdraw,
      locked: isLocked,
    );
  }
}
