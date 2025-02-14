import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../core/core_providers.dart';
import 'app_text_field.dart';

class QuotaSelector extends ConsumerWidget {
  final int value;
  final int minValue;
  final int maxValue;
  final int step;
  final void Function(int) onChanged;
  final void Function() onInfo;

  QuotaSelector({
    super.key,
    this.value = 0,
    this.minValue = 0,
    this.maxValue = 1 << 30,
    this.step = 1,
    required this.onChanged,
    required this.onInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      margin: EdgeInsets.only(
        top: 15,
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextFieldButton(icon: AppIcons.info, onPressed: onInfo),
          Row(
            children: [
              TextFieldButton(
                icon: Icons.remove,
                onPressed: () {
                  final newValue = max(minValue, value - step);
                  onChanged(newValue);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  '$value',
                  style: styles.textStyleAppTextFieldSimple,
                ),
              ),
              TextFieldButton(
                icon: Icons.add,
                onPressed: () {
                  final newValue = min(maxValue, value + step);
                  onChanged(newValue);
                },
              ),
            ],
          ),
          TextFieldButton(
            widget: Text(
              'UTPE',
              style: styles.textStyleDialogButtonText,
              maxLines: 1,
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
