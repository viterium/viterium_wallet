import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../wallet/wallet_list_widget.dart';
import 'intro_actions_widget.dart';

class IntroWallets extends ConsumerWidget {
  const IntroWallets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.read(themeProvider);
    final styles = ref.read(stylesProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: MediaQuery.of(context).size.height * 0.10,
        ),
        child: Column(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                      child: Stack(
                        children: [
                          ImageIcon(
                            AssetImage('assets/viterium.png'),
                            color: theme.text,
                            size: 42,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 34, top: 9),
                            child: Text(
                              'iterium'.toUpperCase(),
                              style: styles.textStyleSettingsHeader
                                  .copyWith(letterSpacing: 2),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Text(
                      'Wallets'.toUpperCase(),
                      style: styles.textStyleLogoutButton,
                    ),
                  ),
                  Flexible(
                    child: const WalletListWidget(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const IntroActionsWidget(),
          ],
        ),
      ),
    );
  }
}
