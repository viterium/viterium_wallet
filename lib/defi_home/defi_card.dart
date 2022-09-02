import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import '../widgets/address_widgets.dart';

class DefiItemWidget extends ConsumerWidget {
  const DefiItemWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}

class DefiCard extends ConsumerWidget {
  final Image image;
  final String title;
  final String details;
  final VoidCallback onPressed;

  const DefiCard({
    Key? key,
    required this.image,
    required this.title,
    required this.details,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      child: TextButton(
        style: styles.cardButtonStyle,
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  clipBehavior: Clip.hardEdge,
                  child: image,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: styles.textStyleDialogHeader.copyWith(
                          color: theme.text,
                          fontSize: 16,
                        ),
                      ),
                      AddressShortText(address: details),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
