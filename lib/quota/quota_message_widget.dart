import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';

class QuotaMessageWidget extends ConsumerWidget {
  final String message;

  const QuotaMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Divider(height: 2, color: theme.text15),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: Text(message, style: styles.textStyleParagraphSmall),
        ),
      ],
    );
  }
}
