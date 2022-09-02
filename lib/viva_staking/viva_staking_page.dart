import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import '../widgets/gradient_widgets.dart';
import 'viva_staking_widget.dart';

class VivaStakingPage extends ConsumerWidget {
  const VivaStakingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Scaffold(
      backgroundColor: theme.backgroundDarkest,
      appBar: AppBar(
        backgroundColor: theme.backgroundDarkest,
        iconTheme: IconThemeData(color: theme.text),
        title: Text(
          'Viva Staking Pools v0.4',
          style: styles.textStyleButtonTextOutline,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const VivaStakingWidget(),
            const BottomGradientWidget(),
          ],
        ),
      ),
    );
  }
}
