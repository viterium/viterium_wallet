import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../contracts/vitc_stake_v2.dart';
import '../contracts/vitc_swap.dart';
import '../contracts/viva_staking_v4.dart';
import '../core/core_providers.dart';
import '../main_card/main_card.dart';
import '../node_settings/node_types.dart';
import '../vitc_swap/vitc_swap_page.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'defi_card.dart';
import 'defi_main_card.dart';

class DefiHomePage extends HookConsumerWidget {
  const DefiHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final network = ref.watch(viteNetworkProvider);

    useAutomaticKeepAlive();

    Future<void> vivaStakingV04() async {
      Navigator.of(context).pushNamed('/viva_staking');
    }

    Future<void> vitcStakingV02() async {
      Navigator.of(context).pushNamed('/vitc_stake');
    }

    Future<void> vitcSwap() async {
      final scaffold = ref.read(homePageScaffoldKeyProvider);
      Sheets.showAppHeightNineSheet(
        context: scaffold.currentContext ?? context,
        theme: theme,
        widget: const VitcSwapPage(),
      );
    }

    return Scaffold(
      backgroundColor: theme.backgroundDarkest,
      body: Column(
        children: [
          DefiMainCard(),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                if (network == ViteNetwork.mainnet)
                  ListView(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 28),
                    children: [
                      DefiCard(
                        image: Image.asset('assets/vivastaking.png'),
                        title: 'Viva Staking Pools v0.4',
                        details: vivaStakingV4Contract.contractAddress,
                        onPressed: vivaStakingV04,
                      ),
                      DefiCard(
                        image: Image.asset('assets/vitcstake.png'),
                        title: 'VITCStake v0.2',
                        details: vitcStakeV2Contract.contractAddress,
                        onPressed: vitcStakingV02,
                      ),
                      DefiCard(
                        image: Image.asset('assets/vitcswap.png'),
                        title: 'VITCSwap',
                        details: vitcSwapContract.contractAddress,
                        onPressed: vitcSwap,
                      ),
                    ],
                  )
                else
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    alignment: Alignment.topCenter,
                    child: Text(
                      'DeFi is only available on MAINNET',
                      style: styles.textStyleAccount,
                    ),
                  ),
                const TopGradientWidget(),
                const BottomGradientWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
