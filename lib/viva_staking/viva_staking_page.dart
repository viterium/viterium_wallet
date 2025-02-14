import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import '../widgets/gradient_widgets.dart';
import 'viva_staking_providers.dart';
import 'viva_staking_widget.dart';

class VivaStakingPage extends ConsumerWidget {
  const VivaStakingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final version = ref.watch(vivaStakingVersionProvider);

    return Scaffold(
      backgroundColor: theme.backgroundDarkest,
      appBar: AppBar(
        backgroundColor: theme.backgroundDarkest,
        iconTheme: IconThemeData(color: theme.text),
        title: Text(switch (version) {
          VivaStakingVersion.v4 => 'Viva Staking Pools v0.4',
          VivaStakingVersion.v5 => 'Viva Staking Pools v0.5',
        }, style: styles.textStyleButtonTextOutline),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [const VivaStakingWidget(), const BottomGradientWidget()],
        ),
      ),
    );
  }
}
