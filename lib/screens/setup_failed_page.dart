import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';

class SetupFailedPage extends ConsumerWidget {
  final Object? error;
  final Function onRestart;

  const SetupFailedPage({
    Key? key,
    required this.error,
    required this.onRestart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: ImageIcon(
                        AssetImage('assets/viterium.png'),
                        color: theme.primary,
                      ),
                    ),
                  ),
                  Text(
                    'Something went wrong',
                    style: styles.textStyleSettingItemHeaderLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  PrimaryButton(
                    title: 'Copy Error',
                    onPressed: () async {
                      await Clipboard.setData(
                        ClipboardData(text: error.toString()),
                      );
                      UIUtil.showSnackbar(
                          'Error message copied to clipboard.', context);
                    },
                  ),
                  const SizedBox(height: 16),
                  PrimaryOutlineButton(
                    title: 'Restart Setup',
                    onPressed: onRestart,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
