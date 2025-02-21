import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../contracts/vinu_swap_contract.dart';
import '../contracts/vitc_stake_v2_contract.dart';
import '../contracts/vitc_swap_contract.dart';
import '../contracts/viva_staking_v4_contract.dart';
import '../contracts/viva_staking_v5_contract.dart';
import '../node_settings/node_types.dart';
import '../vinu_swap/vinu_swap_page.dart';
import '../vitc_swap/vitc_swap_page.dart';
import '../viva_staking/viva_staking_providers.dart';
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
      final version = ref.read(vivaStakingVersionProvider.notifier);
      version.state = VivaStakingVersion.v4;

      Navigator.of(context).pushNamed('/viva_staking');
    }

    Future<void> vivaStakingV05() async {
      final version = ref.read(vivaStakingVersionProvider.notifier);
      version.state = VivaStakingVersion.v5;

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

    Future<void> vinuSwap() async {
      final scaffold = ref.read(homePageScaffoldKeyProvider);
      Sheets.showAppHeightNineSheet(
        context: scaffold.currentContext ?? context,
        theme: theme,
        widget: const VinuSwapPage(),
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
                        image: Image.asset('assets/vitcswap.png'),
                        title: 'VITCSwap',
                        details: vitcSwapContract.contractAddress,
                        onPressed: vitcSwap,
                      ),
                      DefiCard(
                        image: Image.asset('assets/vinuswap.png'),
                        title: 'Vinu Swap',
                        details: vinuSwapContract.contractAddress,
                        notice:
                            'The source code of the Vinu Swap contract is not public.',
                        onPressed: vinuSwap,
                      ),
                      DefiCard(
                        image: Image.asset('assets/vivastaking.png'),
                        title: 'Viva Staking Pools v0.5',
                        details: vivaStakingV5Contract.contractAddress,
                        onPressed: vivaStakingV05,
                      ),
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
