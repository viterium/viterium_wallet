import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import 'viva_pool_card.dart';
import 'viva_staking_header.dart';
import 'viva_staking_providers.dart';

class VivaStakingWidget extends HookConsumerWidget {
  const VivaStakingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final data = ref.watch(filteredVivaPoolsProvider);

    final itemCount = data.maybeWhen(
        data: (pools) => max(pools.length, 1) + 1,
        orElse: () => 2,
        skipLoadingOnReload: true);

    Future<void> refreshPools() async {
      final notifier = ref.read(vivaPoolsNotifierProvider.notifier);
      await notifier.refreshPoolsInfo();
    }

    return RefreshIndicator(
      color: theme.primary,
      backgroundColor: theme.backgroundDark,
      onRefresh: refreshPools,
      child: ListView.builder(
        key: const PageStorageKey('viva_staking_widget'),
        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 30),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const VivaStakingHeader();
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
              return VivaPoolCard(poolInfo: pools[index]);
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
