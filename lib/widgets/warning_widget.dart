import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class WarningWidget extends ConsumerWidget {
  final String text;
  const WarningWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.warning_amber_rounded,
            size: 24,
            color: theme.success,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: styles.remoteMessageCardTitle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
