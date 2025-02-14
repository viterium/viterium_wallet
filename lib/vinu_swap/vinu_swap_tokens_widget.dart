import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../tokens/token_card.dart';

class VinuSwapTokensWidget extends HookConsumerWidget {
  const VinuSwapTokensWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final items = ref.watch(vinuSwapTradingBalancesProvider);

    return items.when(
      data: (items) {
        return ListView.builder(
          key: const PageStorageKey('SwapTokensWidget'),
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 28),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return TokenCard(key: Key(item.tokenInfo.tokenId), item: item);
          },
        );
      },
      loading:
          () => Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: const CupertinoActivityIndicator(),
            ),
          ),
      error:
          (_, __) => Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Error loading trading tokens',
                style: styles.textStyleAccountName,
              ),
            ),
          ),
    );
  }
}
