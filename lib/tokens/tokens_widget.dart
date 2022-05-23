import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/reactive_refresh.dart';
import 'token_card.dart';

final _refreshProvider = StateProvider.autoDispose((ref) => false);

class TokensWidget extends ConsumerWidget {
  const TokensWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final account = ref.watch(selectedAccountProvider);
    final accountInfo = ref.watch(accountBalanceProvider(account));
    final balances = accountInfo.balances;
    final isRefreshing = ref.watch(_refreshProvider);

    final items = balances.values.toList();

    ref.listen<AsyncValue<AccountInfo>>(
        remoteAccountInfoProvider(account.address), (_, next) {
      next.whenOrNull(
        data: (_) {
          ref.read(_refreshProvider.notifier).state = false;
        },
        error: (e, st) {
          ref.read(loggerProvider).e('Failed to', e, st);
          ref.read(_refreshProvider.notifier).state = false;
          UIUtil.showSnackbar('Failed to update balances.', context);
        },
      );
    });

    Future<void> refresh() async {
      ref.read(hapticUtilProvider).success();

      final refreshNotifier = ref.read(_refreshProvider.notifier);
      refreshNotifier.state = true;

      final networkError = ref.read(networkErrorProvider);
      if (networkError) {
        ref.refresh(wsServiceProvider);
      }

      ref.read(remoteRefreshProvider.notifier).update((state) => state + 1);
      return ref.refresh(remoteAccountInfoProvider(account.address));
    }

    return ReactiveRefreshIndicator(
      backgroundColor: theme.backgroundDark,
      isRefreshing: isRefreshing,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 15),
        itemCount: balances.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return TokenCard(item: item);
        },
      ),
      onRefresh: refresh,
    );
  }
}
