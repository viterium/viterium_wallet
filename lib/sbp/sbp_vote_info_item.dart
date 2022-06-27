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
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

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
                            style: TextStyle(
                              color: theme.text,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              fontFamily: 'Nunito Sans',
                            ),
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
                                style: TextStyle(
                                  color: theme.backgroundDark,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Nunito Sans',
                                ),
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
                            text: "${localization.sbpVotes}: ",
                            style: TextStyle(
                              color: theme.text,
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                              fontFamily: 'Nunito Sans',
                            ),
                          ),
                          TextSpan(
                            text: ViteUtil.formatVotes(sbpVoteInfo.votes),
                            style: TextStyle(
                              color: theme.primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: 'Nunito Sans',
                            ),
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
                          "${localization.blockProducingAddress}: ",
                          style: TextStyle(
                            color: theme.text,
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                            fontFamily: 'Nunito Sans',
                          ),
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
