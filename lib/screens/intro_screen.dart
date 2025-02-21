import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../intro/intro.dart';
import '../intro/intro_providers.dart';
import '../intro/intro_types.dart';
import '../intro/intro_wallet_name.dart';
import '../widgets/pin_screen.dart';

class IntroScreen extends HookConsumerWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletBundle = ref.watch(walletBundleProvider);

    Future<bool> checkPin() async {
      final vault = ref.read(vaultProvider);
      final pinIsSet = await vault.pinIsSet;

      if (pinIsSet) {
        final authUtil = ref.read(authUtilProvider);
        final auth = authUtil.authenticate(
          context,
          'Enter PIN to Add Wallet',
          'Authenticate to Add Wallet',
        );
        return auth;
      }

      final pin = await Navigator.of(context).push(
        MaterialPageRoute<String>(
          builder: (context) => PinScreen(PinOverlayType.NEW_PIN),
        ),
      );
      if (pin != null && pin.length > 5) {
        try {
          await vault.setPin(pin);
          return true;
        } catch (e, st) {
          final log = ref.read(loggerProvider);
          log.e('Failed to save pin to vault', e, st);
          return false;
        }
      }
      return false;
    }

    ref.listen<IntroData>(introDataProvider, (_, data) async {
      if (!data.completed) {
        return;
      }
      final pinOk = await checkPin();
      if (!pinOk) {
        final notifier = ref.read(introDataProvider.notifier);
        notifier.unComplete();
        return;
      }

      Navigator.of(
        context,
      ).pushNamedAndRemoveUntil('/wallet_setup', (route) => false);
    });

    Widget widgetForPage(IntroPage page) {
      switch (page) {
        case IntroPage.walletName:
          return const IntroWalletName();
        case IntroPage.passwordOnLaunch:
          return const IntroPasswordOnLaunch();
        case IntroPage.password:
          return const IntroPassword();
        case IntroPage.importSeed:
          return const IntroImportSeed();
        case IntroPage.backupSeed:
          return const IntroBackupSeed();
        case IntroPage.backupSafety:
          return const IntroBackupSafety();
        case IntroPage.backupConfirm:
          return const IntroBackupConfirm();
      }
    }

    ref.listen<IntroState>(introStateProvider, (_, state) {
      state.whenOrNull(
        push: (page) {
          final widget = widgetForPage(page);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => widget));
        },
        pop: () => Navigator.of(context).pop(),
      );
    });

    ref.listen<Hash?>(notificationIdProvider, (_, id) {
      if (id != null) {
        Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
      }
    });

    final wallets = walletBundle.wallets;
    if (wallets != null && wallets.isNotEmpty) {
      return const IntroWallets();
    }
    return const IntroWelcome();
  }
}
