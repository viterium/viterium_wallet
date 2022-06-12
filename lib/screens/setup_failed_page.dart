import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:viterium_wallet/core/core_providers.dart';

import '../widgets/buttons.dart';

class SetupFailedPage extends ConsumerWidget {
  final Function onTryAgain;
  final Function onRestart;

  const SetupFailedPage({
    Key? key,
    required this.onTryAgain,
    required this.onRestart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.background,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    'Something went wrong.',
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
                    title: 'Try Again',
                    onPressed: onTryAgain,
                  ),
                  const SizedBox(height: 16),
                  PrimaryOutlineButton(
                    title: 'Restart setup',
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
