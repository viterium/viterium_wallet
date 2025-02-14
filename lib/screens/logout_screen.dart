import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';

class LogoutScreen extends HookConsumerWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    Future<void> logout() async {
      try {
        final notifier = ref.read(walletBundleProvider.notifier);
        await notifier.logout();
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to logout', e, st);
      } finally {
        Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
      }
    }

    useEffect(() {
      Future.delayed(const Duration(milliseconds: 1000), logout);

      return null;
    }, const []);

    return Scaffold(
      backgroundColor: theme.backgroundDark,
      body: Center(
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
              'Logging out...',
              style: styles.textStyleSettingItemHeader.copyWith(fontSize: 18),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
