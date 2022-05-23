import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../util/util.dart';
import 'app_simpledialog.dart';

class NoticeDialog extends HookConsumerWidget {
  const NoticeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final title = 'Viterium Beta';
    final content =
        'Welcome to Viterium Beta!\n\nFor feedback and bug reports, please join our discord server.';

    final isChecked = useState(false);

    return AppAlertDialog(
      title: Text(
        title,
        style: styles.textStyleButtonPrimaryOutline,
      ),
      contentPadding: const EdgeInsets.fromLTRB(12, 20, 24, 12),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                content,
                style: styles.textStyleParagraph,
              ),
            ),
            const SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Checkbox(
                value: isChecked.value,
                visualDensity: VisualDensity.compact,
                checkColor: theme.text,
                activeColor: theme.primary,
                onChanged: (value) {
                  isChecked.value = value!;
                },
              ),
              Text('Don\'t show again')
            ]),
          ],
        ),
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            'Join Discord',
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () => openUrl('https://discord.gg/STZAkgTFdh'),
        ),
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            'Continue',
            style: styles.textStyleDialogOptions,
          ),
          onPressed: () async {
            if (isChecked.value) {
              final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
              await sharedPrefsUtil.setNoticeShown(true);
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
