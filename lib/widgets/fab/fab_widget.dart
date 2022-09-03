import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core_providers.dart';
import '../../screens/home_screen.dart';
import 'fab_with_icons.dart';
import 'layout.dart';

class FabWidget extends HookConsumerWidget {
  final void Function(int) onSelectedIndex;
  final AnimationController controller;
  final double width;

  const FabWidget({
    Key? key,
    required this.width,
    required this.controller,
    required this.onSelectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final showOverlay = ref.watch(showOverlayProvider);

    return AnchoredOverlay(
      showOverlay: showOverlay,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - 45),
          child: FabWithIcons(
            controller: controller,
            width: width,
            onIconTapped: onSelectedIndex,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () {
          final notifier = ref.read(showOverlayProvider.notifier);
          if (controller.isDismissed) {
            controller.forward().then((_) => notifier.state = true);
          } else {
            controller.reverse().then((_) => notifier.state = false);
          }
        },
        child: Icon(Icons.currency_exchange, color: theme.text),
        backgroundColor: theme.backgroundDark,
        elevation: 10.0,
      ),
    );
  }
}
