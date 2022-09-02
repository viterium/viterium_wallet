import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../screens/home_screen.dart';
import '../action_button.dart';

class FabWithIcons extends ConsumerWidget {
  final double width;
  final ValueChanged<int> onIconTapped;
  final AnimationController controller;

  const FabWithIcons({
    Key? key,
    required this.width,
    required this.controller,
    required this.onIconTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> hideOverlay() async {
      await controller.reverse();
      final notifier = ref.read(showOverlayProvider.notifier);
      notifier.state = false;
    }

    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: FadeTransition(
              opacity: CurvedAnimation(
                parent: controller,
                curve: Interval(0.0, 1.0, curve: Curves.easeOut),
              ),
              child: ReceiveActionButton(
                onPressed: hideOverlay,
              ),
            ),
          ),
          const SizedBox(width: 60),
          Expanded(
            child: FadeTransition(
              opacity: CurvedAnimation(
                parent: controller,
                curve: Interval(0.0, 1.0, curve: Curves.easeOut),
              ),
              child: SendActionButton(
                onPressed: hideOverlay,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
