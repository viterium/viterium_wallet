import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/dialog.dart';
import 'sbp_vote_info_item.dart';

class SbpSelectDialog extends ConsumerWidget {
  const SbpSelectDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final sbpList = ref.watch(sbpListProvider);
    final styles = ref.watch(stylesProvider);

    Future<void> voteForSbp(String sbpName) async {
      final account = ref.read(selectedAccountProvider);
      final logger = ref.read(loggerProvider);

      AppDialogs.showInProgressDialog(
        context,
        'Vote for SBP',
        'Voting for $sbpName',
      );

      try {
        final accountService = ref.read(accountServiceProvider);

        await accountService.voteForSbp(account.address, sbpName);
        ref.invalidate(sbpListProvider);

        UIUtil.showSnackbar(l10n.changeSbpVoteSuccess, context);
        Navigator.of(context).pop();
        Navigator.of(context).pop();
      } catch (e, st) {
        logger.e("Failed to change SBP vote", e, st);
        UIUtil.showSnackbar(l10n.sendError, context);
        Navigator.of(context).pop();
      }
    }

    Future<void> onSbpSelected(RpcSbpVoteInfo sbp) async {
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticate(
        context,
        l10n.pinChangeSbpVote,
        l10n.changeSbpAuthenticate,
      );

      if (auth) {
        return voteForSbp(sbp.sbpName);
      }
    }

    return SimpleDialog(
      title: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.only(bottom: 10),
        child: Text(l10n.candidateNodes, style: styles.textStyleDialogHeader),
      ),
      children: [
        for (final sbp in sbpList.asMap().entries)
          SbpVoteInfoItem(
            sbpVoteInfo: sbp.value,
            index: sbp.key,
            onSelection: () => onSbpSelected(sbp.value),
          ),
      ],
    );
  }
}
