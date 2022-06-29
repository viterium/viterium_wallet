import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';

class RequestItemWidget extends ConsumerWidget {
  final String title;
  final String subtitle;
  final String action;

  const RequestItemWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: styles.textStyleTransactionType,
                ),
                Text(
                  subtitle,
                  style: styles.textStyleTransactionUnit,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: theme.text10,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              action.toUpperCase(),
              style: styles.textStyleDialogButtonTextSimple,
            ),
          ),
        ],
      ),
    );
  }
}
