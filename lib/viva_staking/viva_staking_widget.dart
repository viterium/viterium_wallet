import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import 'viva_pool_card.dart';
import 'viva_staking_header.dart';
import 'viva_staking_providers.dart';

class VivaStakingWidget extends ConsumerWidget {
  const VivaStakingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final (pools, loading) = ref.watch(filteredVivaPoolsProvider);

    final itemCount = max(pools.length, 1) + 1;

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
          return switch ((pools.length, loading)) {
            (0, true) => Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Text('Loading...', style: styles.textStyleTransactionType),
            ),
            (0, false) => Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Text(
                'No pools found',
                style: styles.textStyleTransactionType,
              ),
            ),
            _ => () {
              final poolId = pools.keys.elementAt(index);
              final poolInfo = pools[poolId]!;
              return VivaPoolCard(poolInfo: poolInfo);
            }(),
          };
        },
      ),
    );
  }
}
