import 'package:automatic_animated_list/automatic_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/transactions/transactions_unreceived_card.dart';

import '../app_providers.dart';
import '../widgets/reactive_refresh.dart';
import 'transaction_card.dart';
import 'transaction_empty_list.dart';
import 'transaction_types.dart';
import 'unreceived_providers.dart';

final txListItemsProvider = Provider.autoDispose
    .family<List<TxListItem>, AccountTokenPair>((ref, pair) {
  final unreceived = ref.watch(unreceivedProvider(pair.account.address));
  final historyNotifier = ref.watch(transactionHistoryProvider(pair));
  final txList = historyNotifier.history.map((e) => TxListItem.transaction(e));
  if (pair.token != null || unreceived.blockCount == 0) {
    return txList.toList() + [TxListItem.loading(historyNotifier.hasMore)];
  }

  return [TxListItem.unreceived(unreceived)] +
      txList.toList() +
      [TxListItem.loading(historyNotifier.hasMore)];
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
    final historyNotifier = ref.watch(transactionHistoryProvider(pair));

    //final unreceived = ref.watch(unreceivedProvider(account.address));
    //final history = historyNotifier.history;

    final isLoading = historyNotifier.loading;
    final isRefreshing = useState(false);
    final isMounted = useIsMounted();

    final items = ref.watch(txListItemsProvider(pair));

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
      await historyNotifier.refresh();

      if (isMounted()) {
        isRefreshing.value = false;
      }
    }

    return ReactiveRefreshIndicator(
        backgroundColor: theme.backgroundDark,
        isRefreshing: isRefreshing.value,
        onRefresh: refresh,
        child: !isLoading && items.isEmpty
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
                        unreceived: (_) => TransactionsUnreceivedCard(),
                        transaction: (item) => TransactionCard(item: item),
                        loading: (hasMore) {
                          if (hasMore) {
                            Future.delayed(
                              const Duration(milliseconds: 500),
                              historyNotifier.loadMore,
                            );
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Loading Transactions...',
                                    style: styles.textStyleParagraph,
                                  )),
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                    ),
                  );
                },
              )

        // Column(
        //     children: [
        //       if (unreceived.blockCount > 0)
        //         const TransactionsUnreceivedCard(),
        //       Expanded(
        //         child: ListView.builder(
        //           physics: const AlwaysScrollableScrollPhysics(),
        //           padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
        //           itemCount: history.length + 1,
        //           itemBuilder: (context, index) {
        //             if (index == history.length) {
        //               if (historyNotifier.hasMore) {
        //                 Future.delayed(Duration.zero, () {
        //                   historyNotifier.loadMore();
        //                 });
        //                 return Padding(
        //                   padding: EdgeInsets.symmetric(vertical: 10),
        //                   child: Align(
        //                       alignment: Alignment.center,
        //                       child: Text(
        //                         'Loading Transactions...',
        //                         style: styles.textStyleParagraph,
        //                       )),
        //                 );
        //               } else {
        //                 return const SizedBox();
        //               }
        //             }
        //             final item = history[index];
        //             return TransactionCard(item: item);
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        );
  }
}
