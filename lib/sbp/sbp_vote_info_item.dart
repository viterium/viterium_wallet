import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/vite_util.dart';
import '../widgets/address_widgets.dart';

class SbpVoteInfoItem extends ConsumerWidget {
  final RpcSbpVoteInfo sbpVoteInfo;
  final int index;
  final VoidCallback? onSelection;

  const SbpVoteInfoItem({
    Key? key,
    required this.sbpVoteInfo,
    required this.index,
    required VoidCallback? this.onSelection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    return Column(
      children: [
        Divider(height: 2, color: theme.text15),
        TextButton(
          style: styles.defaultTextButtonStyle,
          onPressed: onSelection,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Container(
              margin: EdgeInsetsDirectional.only(start: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FittedBox(
                          alignment: AlignmentDirectional.topStart,
                          fit: BoxFit.scaleDown,
                          child: Text(
                            sbpVoteInfo.sbpName,
                            textAlign: TextAlign.start,
                            style: styles.textStyleSettingItemHeaderLarge,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          end: 10,
                          start: 10,
                        ),
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
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${l10n.sbpVotes}: ",
                            style: styles.textStyleTextDefaultSmallThin,
                          ),
                          TextSpan(
                            text: ViteUtil.formatVotes(sbpVoteInfo.votes),
                            style: styles.textStylePrimaryDefaultSmallMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "${l10n.blockProducingAddress}: ",
                          style: styles.textStyleTabLabel,
                        ),
                        AddressOneLineText(
                          address: sbpVoteInfo.blockProducingAddress,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
