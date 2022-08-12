import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../intro/intro_providers.dart';
import '../push_notifications/push_types.dart';
import '../util/ui_util.dart';
import '../wallet/wallet_types.dart';
import '../widgets/notice_dialog.dart';

final _noticeShownProvider = StateProvider<bool>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  final shown = sharedPrefsUtil.getNoticeShown();
  return shown || false;
});

final _pushInfoProvider = StateProvider<PushInfo?>((ref) => null);

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    Future<void> handleNotificationId() async {
      final id = ref.read(notificationIdProvider);
      if (id == null) {
        return;
      }
      final repository = ref.read(pushInfoRepositoryProvider);
      final pushInfo = repository.pushInfoForId(id);
      if (pushInfo == null) {
        return;
      }

      ref.read(_pushInfoProvider.notifier).state = pushInfo;
      final wallet = ref.read(selectedWalletProvider);
      if (wallet == null || wallet.wid != pushInfo.walletId) {
        final walletId = pushInfo.walletId;
        final wallets = ref.read(walletsProvider);
        try {
          final newWallet = wallets.firstWhere((w) => w.wid == walletId);
          final notifier = ref.read(walletBundleProvider.notifier);
          await notifier.logout();

          await notifier.selectWallet(newWallet);
        } catch (e) {
          final log = ref.read(loggerProvider);
          log.e('Failed to find wallet with id $walletId', e);
        }
      }
      // reset notification id
      final notifier = ref.read(notificationIdProvider.notifier);
      notifier.state = null;
    }

    Future<void> checkNotice() async {
      final noticeShown = ref.read(_noticeShownProvider.notifier);
      if (noticeShown.state) {
        return;
      }
      noticeShown.state = true;
      await showDialog(
        barrierColor: ref.read(themeProvider).barrier,
        context: context,
        barrierDismissible: false,
        builder: (context) => const NoticeDialog(),
      );
    }

    Future<void> checkWalletStatus() async {
      await handleNotificationId();

      final bundle = ref.read(walletBundleProvider);

      final nav = Navigator.of(context);
      final wallet = bundle.selected;
      if (wallet == null) {
        final vault = ref.read(vaultProvider);
        final pinIsSet = await vault.pinIsSet;
        // if pin is set but no wallets
        if (pinIsSet && bundle.wallets.isEmpty) {
          final seedKey = 'fviterium_seed';
          final mnemonicKey = 'fviterium_mnemonic';
          // check for alpha version seed
          final seed = await vault.get(seedKey);
          if (seed != null) {
            try {
              final mnemonic = await vault.get(mnemonicKey);
              final notifier = ref.read(walletBundleProvider.notifier);
              final data = WalletData(
                name: 'Viterium Wallet ',
                seed: seed,
                mnemonic: mnemonic,
              );
              await notifier.setupWallet(data);
              await vault.delete(seedKey);
              await vault.delete(mnemonicKey);
            } catch (_) {
              await vault.deletePin();
            }
          } else {
            // no alpha seed so remove pin and any vault data
            await vault.deleteAll();
          }
        }

        ref.read(introDataProvider.notifier).clear();
        nav.pushReplacementNamed('/intro');
        return;
      }

      var walletAuthNotifier = ref.read(walletAuthNotifierProvider);
      if (walletAuthNotifier == null) {
        UIUtil.showSnackbar('Something went wrong', context);
        nav.pushReplacementNamed('/intro');
        return;
      }

      await walletAuthNotifier.checkEncryptedState();

      if (walletAuthNotifier.walletLocked) {
        if (walletAuthNotifier.walletEncrypted) {
          nav.pushReplacementNamed('/password_lock_screen');
          return;
        }
        final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
        final authOnLaunch = sharedPrefsUtil.getLock();
        if (authOnLaunch) {
          nav.pushReplacementNamed('/lock_screen');
          return;
        } else {
          await walletAuthNotifier.unlock();
        }
      }
      // open database boxes for selected wallet
      final walletRepository = ref.read(walletRepositoryProvider);
      await walletRepository.openWallet(wallet);

      // handle possible notification
      final pushInfo = ref.read(_pushInfoProvider);
      if (pushInfo != null) {
        ref.read(_pushInfoProvider.notifier).state = null;
        final index = pushInfo.index;
        if (pushInfo.walletId == wallet.wid) {
          final accounts = ref.read(accountsProvider);
          final account = accounts.getAccountWithIndex(index);
          if (account != null) {
            await accounts.selectAccountAsync(account);
          }
        }
      }

      Future.delayed(Duration.zero, () {
        nav.pushReplacementNamed('/home');
      });
    }

    useOnAppLifecycleStateChange((previous, current) {
      if (current == AppLifecycleState.resumed) {
        final deviceLocale = ref.read(deviceLocaleProvider.notifier);
        deviceLocale.state = Localizations.localeOf(context);
      }
    });

    useEffect(() {
      Future.delayed(Duration.zero, () async {
        //await checkNotice();
        checkWalletStatus();
      });
      return;
    }, const []);

    return Scaffold(
      backgroundColor: theme.backgroundDark,
    );
  }
}
