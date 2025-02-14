import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../intro/intro_providers.dart';
import '../wallet/wallet_types.dart';
import 'setup_failed_page.dart';

class SetupWalletScreen extends HookConsumerWidget {
  const SetupWalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final setupFailed = useState(false);
    final setupError = useRef<Object?>(null);

    Future<void> setupWallet() async {
      try {
        setupFailed.value = false;
        final introData = ref.read(introDataProvider);

        final seed = await introData.seed;
        if (seed == null) {
          throw Exception('Missing seed');
        }

        final walletData = WalletData(
          name: introData.name ?? 'New Wallet',
          seed: seed,
          mnemonic: introData.mnemonic,
          password: introData.password,
        );

        // setup wallet
        final notifier = ref.read(walletBundleProvider.notifier);
        final wallet = await notifier.setupWallet(walletData);
        await notifier.selectWallet(wallet);

        final auth = ref.read(walletAuthNotifierProvider);
        if (auth == null) throw Exception('No active wallet');
        await auth.checkEncryptedState();
        await auth.unlock(password: walletData.password);

        Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to create wallet', e, st);

        setupFailed.value = true;
        setupError.value = e;
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
      return SetupFailedPage(error: setupError.value, onRestart: restartSetup);
    }

    return Scaffold(
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
                    'Setting up wallet',
                    style: styles.textStyleSettingItemHeaderLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(width: double.infinity, height: 16 + 2 * 55),
          ],
        ),
      ),
    );
  }
}
