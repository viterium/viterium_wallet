import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import 'vitc_pool_card.dart';
import 'vitc_stake_header.dart';
import 'vitc_stake_providers.dart';

class VitcStakeWidget extends ConsumerWidget {
  const VitcStakeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final data = ref.watch(filteredVitcPoolsProvider);

    final itemCount = data.maybeWhen(
      data: (pools) => max(pools.length, 1) + 1,
      orElse: () => 2,
      skipLoadingOnReload: true,
    );

    Future<void> refreshPools() async {
      final notifier = ref.read(vitcPoolsNotifierProvider.notifier);
      await notifier.refreshPoolsInfo();
    }

    return RefreshIndicator(
      color: theme.primary,
      backgroundColor: theme.backgroundDark,
      onRefresh: refreshPools,
      child: ListView.builder(
        key: const PageStorageKey('vitc_stake_widget'),
        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 30),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const VitcStakeHeader();
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
              return VitcPoolCard(poolInfo: pools[index]);
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
            skipLoadingOnReload: true,
          );
        },
      ),
    );
  }
}
