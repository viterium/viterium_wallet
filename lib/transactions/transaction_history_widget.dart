import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../autoreceive/unreceived_provider.dart';
import '../widgets/reactive_refresh.dart';
import 'transaction_card.dart';
import 'transaction_empty_list.dart';
import 'transaction_providers.dart';
import 'transaction_types.dart';

final _refreshProvider = StateProvider.autoDispose((ref) => true);

class TransactionHistoryWidget extends ConsumerWidget {
  final Token? token;
  const TransactionHistoryWidget({Key? key, this.token}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final account = ref.watch(selectedAccountProvider);
    final pair = AccountTokenPair(account: account, token: token);
    final historyNotifier = ref.watch(transactionHistoryProvider(pair));
    final history = historyNotifier.history;
    final refresh = ref.watch(_refreshProvider);

    return ReactiveRefreshIndicator(
      backgroundColor: theme.backgroundDark,
      isRefreshing: refresh,
      child: !historyNotifier.loading && history.isEmpty
          ? const TransactionListEmpty()
          : ListView.builder(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
              itemCount: history.length,
              itemBuilder: (context, index) {
                final item = history[index];
                if (index == history.length - 1 && historyNotifier.hasMore) {
                  historyNotifier.loadMore();
                }
                return TransactionCard(item: item);
              },
            ),
      onRefresh: () async {
        ref.read(hapticUtilProvider).success();

        final refresh = ref.read(_refreshProvider.notifier);
        refresh.state = true;
        final history = ref.read(transactionHistoryProvider(pair));

        Future.delayed(const Duration(seconds: 3), () {
          if (refresh.mounted) {
            refresh.state = false;
          }
        });

        final networkError = ref.read(networkErrorProvider);
        if (networkError) {
          ref.refresh(wsServiceProvider);
        }

        ref.refresh(remoteUnreceivedProvider(account.address));
        await history.refresh();
        if (refresh.mounted) {
          refresh.state = false;
        }
      },
    );
  }
}
