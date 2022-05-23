import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'sbp_vote_info_card.dart';

class SbpCard extends ConsumerWidget {
  const SbpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final localization = ref.watch(l10nProvider);

    final address = ref.watch(selectedAddressProvider);
    final votedSbp = ref.watch(votedSbpProvider(address));

    return Stack(children: [
      Container(
        color: Colors.transparent,
        child: SizedBox.expand(),
        constraints: BoxConstraints.expand(),
      ),
      Column(
        children: [
          Container(
            child: Center(
              child: Text(
                localization.currentlyVotingFor,
                style: styles.textStyleParagraph,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 140,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 10,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: theme.backgroundDarkest,
              borderRadius: BorderRadius.circular(25),
            ),
            child: votedSbp.when(
              data: (voteInfo) => SboVoteInfoCard(voteInfo: voteInfo),
              loading: () => const Center(
                child: CupertinoActivityIndicator(),
              ),
              error: (e, _) => Align(
                alignment: Alignment.topCenter,
                child: Text(e.toString()),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
