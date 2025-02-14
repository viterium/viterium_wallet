import 'package:automatic_animated_list/automatic_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'transaction_card.dart';
import 'transaction_empty_list.dart';
import 'transaction_types.dart';
import 'transactions_unreceived_card.dart';
import 'unreceived_providers.dart';

final _txListItemsProvider = Provider.autoDispose
    .family<List<TxListItem>, AccountTokenPair>((ref, pair) {
      final unreceived = ref.watch(unreceivedProvider(pair.account.address));
      final historyNotifier = ref.watch(transactionHistoryProvider(pair));
      final txList = historyNotifier.history
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
  final String tokenSymbol;

  const TransactionHistoryWidget({
    super.key,
    this.token,
    this.tokenSymbol = 'VITE',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);
    final pair = AccountTokenPair(account: account, token: token);
    final txHistory = ref.watch(transactionHistoryProvider(pair));
    final items = ref.watch(_txListItemsProvider(pair));

    Future<void> refresh() async {
      ref.read(hapticUtilProvider).success();

      final networkError = ref.read(networkErrorProvider);
      if (networkError) {
        ref.invalidate(wsServiceProvider);
      }

      ref.invalidate(unreceivedRemoteProvider(account.address));
      await txHistory.refresh();
    }

    Future<void> loadMore() async {
      await Future.delayed(const Duration(milliseconds: 500));
      txHistory.loadMore();
    }

    return LazyLoadScrollView(
      onEndOfPage: loadMore,
      child: RefreshIndicator(
        color: theme.primary,
        backgroundColor: theme.backgroundDark,
        onRefresh: refresh,
        child:
            !txHistory.loading && items.length == 1
                ? TransactionEmptyList(tokenSymbol: tokenSymbol)
                : AutomaticAnimatedList<TxListItem>(
                  key: ValueKey(account),
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 28),
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
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
      ),
    );
  }
}
