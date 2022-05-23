import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_header_button.dart';
import '../widgets/sheet_widget.dart';
import 'sbp_card.dart';
import 'sbp_info_widget.dart';
import 'sbp_select_dialog.dart';

class VoteForSbpSheet extends ConsumerWidget {
  const VoteForSbpSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);

    final address = ref.watch(selectedAddressProvider);
    final sbpList = ref.watch(sbpListProvider);
    final votedSbp = ref.watch(votedSbpProvider(address));

    void showSbpInfo() {
      showDialog(
        barrierColor: ref.read(themeProvider).barrier,
        context: context,
        builder: (context) => const SbpInfoWidget(),
      );
    }

    void showSbpList() {
      showDialog(
        barrierColor: theme.barrier,
        context: context,
        builder: (context) => const SbpSelectDialog(),
      );
    }

    Future<void> revokeVote() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);

      try {
        await accountService.cancelSbpVote(account.address);
        UIUtil.showSnackbar(
          localization.revokeMessage,
          context,
        );
      } catch (e, st) {
        final logger = ref.read(loggerProvider);
        logger.e('Failed to cancel SBP vote', e, st);
        UIUtil.showSnackbar(localization.sendError, context);
      }
    }

    void confirmRevokeVote() {
      AppDialogs.showConfirmDialog(
          context,
          localization.revokeVoteHeader,
          localization.revokeVoteText,
          localization.revoke.toUpperCase(),
          revokeVote);
    }

    return SheetWidget(
      title: localization.changeSbpAuthenticate,
      rightWidget: SheetHeaderButton(
        icon: AppIcons.info,
        onPressed: showSbpInfo,
      ),
      mainWidget: Container(
        margin: const EdgeInsets.only(top: 35, bottom: 20),
        child: const SbpCard(),
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(children: [
          PrimaryButton(
            title: localization.changeVote,
            disabled: sbpList.isEmpty,
            onPressed: showSbpList,
          ),
          const SizedBox(height: 16),
          PrimaryOutlineButton(
            title: localization.revokeVote,
            disabled: votedSbp.value == null,
            onPressed: confirmRevokeVote,
          )
        ]),
      ),
    );
  }
}
