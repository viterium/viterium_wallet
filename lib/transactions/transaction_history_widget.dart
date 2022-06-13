import 'package:automatic_animated_list/automatic_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../widgets/reactive_refresh.dart';
import 'transaction_card.dart';
import 'transaction_empty_list.dart';
import 'transaction_types.dart';
import 'transactions_unreceived_card.dart';
import 'unreceived_providers.dart';

final _txListItemsProvider = Provider.autoDispose
    .family<List<TxListItem>, AccountTokenPair>((ref, pair) {
  final unreceived = ref.watch(unreceivedProvider(pair.account.address));
  final historyNotifier = ref.watch(transactionHistoryProvider(pair));
  final txList =
      historyNotifier.history
      .map((e) => TxListItem.transaction(e))
      .toList(growable: true);
  txList.add(TxListItem.loader(historyNotifier.hasMore));
  if (pair.token != null || unreceived.blockCount == 0) {
    return txList;
  }

  return [TxListItem.unreceived(unreceived)] + txList;
});

class TransactionHistoryWidget extends HookConsumerWidget {
  final Token? token;

  const TransactionHistoryWidget({
    Key? key,
    this.token,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);
    final pair = AccountTokenPair(account: account, token: token);
    final txHistory = ref.watch(transactionHistoryProvider(pair));
    final items = ref.watch(_txListItemsProvider(pair));

    final isLoading = txHistory.loading;
    final isRefreshing = useState(false);
    final isMounted = useIsMounted();

    Future<void> refresh() async {
      isRefreshing.value = true;
      ref.read(hapticUtilProvider).success();

      Future.delayed(const Duration(seconds: 3), () {
        if (isMounted()) {
          isRefreshing.value = false;
        }
      });

      final networkError = ref.read(networkErrorProvider);
      if (networkError) {
        ref.refresh(wsServiceProvider);
      }

      ref.refresh(unreceivedRemoteProvider(account.address));
      await txHistory.refresh();

      if (isMounted()) {
        isRefreshing.value = false;
      }
    }

    return LazyLoadScrollView(
      onEndOfPage: txHistory.loadMore,
      child: ReactiveRefreshIndicator(
          backgroundColor: theme.backgroundDark,
          isRefreshing: isRefreshing.value,
          onRefresh: refresh,
          child: !isLoading && items.length == 1
              ? const TransactionEmptyList()
              : AutomaticAnimatedList<TxListItem>(
                  key: ValueKey(account),
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
                  insertDuration: const Duration(milliseconds: 500),
                  removeDuration: const Duration(milliseconds: 500),
                  keyingFunction: (item) => Key(item.id),
                  items: items,
                  itemBuilder: (context, item, animation) {
                    return FadeTransition(
                      key: Key(item.id),
                      opacity: animation,
                      child: SizeTransition(
                        sizeFactor: CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeOut,
                          reverseCurve: Curves.easeIn,
                        ),
                        child: item.when(
                          unreceived: (_) => const TransactionsUnreceivedCard(),
                          transaction: (item) => TransactionCard(item: item),
                          loader: (hasMore) {
                            if (!hasMore) return const SizedBox();

                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Loading Transactions...',
                                    style: styles.textStyleParagraph,
                                  )),
                            );
                          },
                        ),
                      ),
                    );
                  },
                )
          ),
    );
  }
}
