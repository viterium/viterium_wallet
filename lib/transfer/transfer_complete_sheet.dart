import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//import 'package:flutter_svg/svg.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../widgets/buttons/success_outline_button.dart';

class TransferCompleteSheet extends ConsumerStatefulWidget {
  final String transferAmount;
  const TransferCompleteSheet({
    Key? key,
    required this.transferAmount,
  }) : super(key: key);

  @override
  _TransferCompleteSheetState createState() => _TransferCompleteSheetState();
}

class _TransferCompleteSheetState extends ConsumerState<TransferCompleteSheet> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);
    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //A container for the paragraph and seed
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Success tick (icon)
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Icon(
                      AppIcons.success,
                      size: 100,
                      color: theme.success,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.2,
                      maxWidth: MediaQuery.of(context).size.width * 0.6,
                    ),
                    child: Stack(
                      children: [],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional(-1, 0),
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      localization.transferComplete
                          .replaceAll("%1", widget.transferAmount),
                      style: styles.textStyleParagraphSuccess,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional(-1, 0),
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      localization.transferClose,
                      style: styles.textStyleParagraph,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            SuccessOutlineButton(
              title: localization.close.toUpperCase(),
              margin: const EdgeInsets.only(left: 28, right: 28, top: 8),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
