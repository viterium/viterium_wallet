import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'viva_staking_providers.dart';

class VivaStakingHeader extends ConsumerWidget {
  const VivaStakingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final filter = ref.watch(vivaPoolsFilterProvider);

    void setStakedOnlyFilter(bool? value) {
      final notifier = ref.read(vivaPoolsFilterProvider.notifier);
      notifier.update((state) => state.copyWith(stakedOnly: value ?? false));
    }

    void toggleEndedFilter(bool value) {
      final notifier = ref.read(vivaPoolsFilterProvider.notifier);
      notifier.update((state) => state.copyWith(ended: !value));
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const SizedBox(width: 8),
                TextButton(
                  style: styles.defaultTextButtonStyle,
                  onPressed: () => setStakedOnlyFilter(!filter.stakedOnly),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: filter.stakedOnly,
                        checkColor: theme.text,
                        activeColor: theme.primary,
                        onChanged: setStakedOnlyFilter,
                      ),
                      Text(
                        'Staked Only',
                        style: styles.textStyleTransactionType,
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Ended',
                  style: styles.textStyleTransactionType,
                ),
                Switch.adaptive(
                  activeColor: theme.primary,
                  value: !filter.ended,
                  onChanged: toggleEndedFilter,
                ),
                Text(
                  'Live',
                  style: styles.textStyleTransactionType,
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
