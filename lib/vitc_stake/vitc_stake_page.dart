import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import '../widgets/gradient_widgets.dart';
import 'vitc_stake_widget.dart';

class VitcStakePage extends ConsumerWidget {
  const VitcStakePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Scaffold(
      backgroundColor: theme.backgroundDarkest,
      appBar: AppBar(
        backgroundColor: theme.backgroundDarkest,
        iconTheme: IconThemeData(color: theme.text),
        title: Text('VITCStake v0.2', style: styles.textStyleButtonTextOutline),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [const VitcStakeWidget(), const BottomGradientWidget()],
        ),
      ),
    );
  }
}
