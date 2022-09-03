import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import 'vitc_stake_pool_card.dart';
import 'vitc_stake_providers.dart';

class VitcStakeWidget extends ConsumerWidget {
  const VitcStakeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final data = ref.watch(filteredVitcPoolsProvider);
    final filter = ref.watch(vitcPoolsFilterProvider);

    final itemCount = data.maybeWhen(
      data: (pools) => max(pools.length, 1) + 1,
      orElse: () => 2,
    );

    void setStakedOnlyFilter(bool? value) {
      final notifier = ref.read(vitcPoolsFilterProvider.notifier);
      notifier.update((state) => state.copyWith(stakedOnly: value ?? false));
    }

    return ListView.builder(
      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 30),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index == 0) {
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
                        onPressed: () =>
                            setStakedOnlyFilter(!filter.stakedOnly),
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
                          onChanged: (value) {
                            final notifier =
                                ref.read(vitcPoolsFilterProvider.notifier);
                            notifier.update(
                                (state) => state.copyWith(ended: !value));
                          }),
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
        index -= 1;
        return data.when(
          data: (pools) {
            if (pools.length == 0) {
              return Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: Text(
                  'No pools found',
                  style: styles.textStyleTransactionType,
                ),
              );
            }
            return VitcStakePoolCard(poolInfo: pools[index]);
          },
          loading: () {
            return Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Text(
                'Loading...',
                style: styles.textStyleTransactionType,
              ),
            );
          },
          error: (e, st) {
            return Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Text('Failed to load pools'),
            );
          },
        );
      },
    );
  }
}
