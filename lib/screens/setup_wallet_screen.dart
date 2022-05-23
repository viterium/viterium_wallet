import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../intro/intro_providers.dart';
import '../util/ui_util.dart';
import '../wallet/wallet_types.dart';
import '../widgets/buttons.dart';

class SetupWalletScreen extends HookConsumerWidget {
  const SetupWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final setupFailed = useState(false);

    Future<void> setupWallet() async {
      try {
        setupFailed.value = false;
        final introData = ref.read(introDataProvider);

        final seed = await introData.seed;
        if (seed == null) {
          throw Exception('Mising seed');
        }
        String? entropy = null;
        final mnemonic = introData.mnemonic;
        if (mnemonic != null) {
          entropy = mnemonicToEntropyHex(mnemonic);
        }
        final walletData = WalletData(
          name: introData.name ?? 'New Wallet',
          seed: seed,
          entropy: entropy,
          password: introData.password,
        );

        // setup wallet
        final notifier = ref.read(walletBundleProvider.notifier);
        final wallet = await notifier.setupWallet(walletData);
        await notifier.selectWallet(wallet);

        final auth = ref.read(walletAuthNotifierProvider);
        if (auth == null) throw Exception('No active wallet');
        await auth.unlock(password: walletData.password);
        Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to create wallet', e, st);
        UIUtil.showSnackbar('Something went wrong. Please try again', context);
        setupFailed.value = true;
      }
    }

    void restartSetup() {
      Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
    }

    useEffect(() {
      Future.delayed(const Duration(milliseconds: 200), setupWallet);
      return null;
    }, const []);

    if (setupFailed.value) {
      return Scaffold(
        backgroundColor: theme.background,
        body: Column(
          children: [
            Expanded(
              child: Column(
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
                    style: styles.textStyleSettingItemHeader
                        .copyWith(fontSize: 18),
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
                    onPressed: setupWallet,
                  ),
                  const SizedBox(height: 16),
                  PrimaryOutlineButton(
                    title: 'Restart setup',
                    onPressed: restartSetup,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: theme.background,
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
            Text('Setting up wallet',
                style:
                    styles.textStyleSettingItemHeader.copyWith(fontSize: 18)),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
