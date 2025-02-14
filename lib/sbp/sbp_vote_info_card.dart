import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/vite_util.dart';
import '../widgets/address_widgets.dart';

class SboVoteInfoCard extends ConsumerWidget {
  final RpcVoteInfo? voteInfo;

  const SboVoteInfoCard({super.key, required this.voteInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final voteInfo = this.voteInfo;
    if (voteInfo == null) {
      return Container(
        height: 130,
        child: Align(
          alignment: Alignment.topCenter,
          child: Text('No vote', style: styles.textStyleSettingItemHeader),
        ),
      );
    }
    var totalVotes = '';
    RpcSbpVoteInfo? votedSbp;
    final index = ref.watch(
      sbpListProvider.select((value) {
        final sbpList = value;
        if (sbpList.isNotEmpty) {
          for (int i = 0; i < sbpList.length; ++i) {
            final sbp = sbpList[i];
            if (sbp.sbpName == voteInfo.blockProducerName) {
              totalVotes = sbp.votes;
              votedSbp = sbp;
              return i;
            }
          }
        }
        return -1;
      }),
    );

    return Container(
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          voteInfo.blockProducerName,
                          style: styles.textStyleButtonTextOutline,
                        ),
                      ),
                      Visibility(
                        visible: votedSbp != null,
                        maintainState: true,
                        maintainSize: true,
                        maintainAnimation: true,
                        child: AddressOneLineText(
                          address:
                              votedSbp?.blockProducingAddress ??
                              '                                                       ',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              if (index >= 0)
                Container(
                  margin: EdgeInsetsDirectional.only(start: 0),
                  padding: const EdgeInsets.only(top: 3),
                  child: Stack(
                    children: [
                      Container(
                        child: Icon(
                          AppIcons.score,
                          color: theme.primary,
                          size: 36,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional(-0.03, 0.03),
                        width: 36,
                        height: 36,
                        child: Text(
                          '${index + 1}',
                          textAlign: TextAlign.center,
                          style: styles.textStyleAccountShortName,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (index >= 0)
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${l10n.sbpTotalVotes}: ",
                          style: styles.textStyleSettingItemHeader,
                        ),
                        TextSpan(
                          text: ViteUtil.formatVotes(totalVotes),
                          style: styles.textStylePrimaryDefaultSmallMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              Container(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${l10n.sbpYourVotes}: ",
                        style: styles.textStyleSettingItemHeader,
                      ),
                      TextSpan(
                        text: ViteUtil.formatVotes(voteInfo.votes),
                        style: styles.textStylePrimaryDefaultSmallMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
