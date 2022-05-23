import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/utils.dart';
import 'package:viterium_wallet/wallet/wallet_types.dart';

import '../app_providers.dart';
import '../intro/intro_providers.dart';
import '../util/ui_util.dart';
import '../util/vite_util.dart';
import '../widgets/notice_dialog.dart';

final _noticeShownProvider = StateProvider<bool>((ref) {
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);
  final shown = sharedPrefsUtil.getNoticeShown();
  return shown || false;
});

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

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

              String? entropy = null;
              if (mnemonic != null) {
                entropy = mnemonicToEntropyHex(mnemonic);
                if (ViteUtil.isEncryptedHex(seed)) {
                  final authUtil = ref.read(authUtilProvider);
                  final auth = await authUtil.authenticateWithPassword(context,
                      (password) async {
                    final decrypted = ViteUtil.decryptHex(seed, password);
                    final isValid = ViteUtil.isValidSeed(decrypted);
                    if (isValid && entropy != null) {
                      entropy = ViteUtil.encryptHex(entropy!, password);
                    }
                    return isValid;
                  });
                  if (auth != true) {
                    entropy = null;
                  }
                }
              }
              final notifier = ref.read(walletBundleProvider.notifier);
              final data = WalletData(
                name: 'Viterium Alpha Wallet ',
                seed: seed,
                entropy: entropy,
              );
              await notifier.setupWallet(data);
              await vault.delete(seedKey);
              await vault.delete(mnemonicKey);
            } catch (_) {
              await vault.deletePin();
            }
          } else {
            // no alpha seed, remove pin
            await vault.deletePin();
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
          walletAuthNotifier.unlock();
        }
      }
      // open database boxes for selected wallet
      final walletRepository = ref.read(walletRepositoryProvider);
      await walletRepository.openWallet(wallet);
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
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       FractionallySizedBox(
      //         widthFactor: 0.4,
      //         child: FittedBox(
      //           fit: BoxFit.fitWidth,
      //           child: ImageIcon(
      //             AssetImage('assets/viterium.png'),
      //             color: theme.primary,
      //           ),
      //         ),
      //       ),
      //       Text(
      //         'Loading...',
      //         style: styles.textStyleSettingItemHeader.copyWith(fontSize: 18),
      //       ),
      //       const SizedBox(),
      //     ],
      //   ),
      // ),
    );
  }
}
