import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/app_simpledialog.dart';

class SbpInfoWidget extends ConsumerWidget {
  const SbpInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = ref.read(l10nProvider);
    final title = l10n.sbpInfoHeader;
    final content = '${l10n.sbpInfo}\n\n${l10n.sbpInfoContinued}';

    return AppAlertDialog(
      title: Text(
        title,
        style: styles.textStyleButtonPrimaryOutline,
      ),
      content: SingleChildScrollView(
        child: Text(content, style: styles.textStyleParagraph),
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.close.toUpperCase(),
            style: styles.textStyleDialogButtonText,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
