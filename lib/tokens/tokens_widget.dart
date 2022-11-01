import 'dart:ui';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../settings_advanced/tokens_settings.dart';
import '../settings_advanced/tokens_settings_provider.dart';
import '../util/platform.dart';
import '../util/ui_util.dart';
import '../widgets/reactive_refresh.dart';
import 'token_card.dart';

class TokensWidget extends HookConsumerWidget {
  const TokensWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final account = ref.watch(selectedAccountProvider);
    final items = ref.watch(sortedBalancesForAccountProvider(account));
    final sortOption = ref.watch(tokensSettingsProvider(account)).sortOption;

    final isRefreshing = useState(false);

    ref.listen<AsyncValue<AccountInfo>>(
        accountInfoRemoteProvider(account.address), (_, next) {
      next.whenOrNull(
        data: (_) {
          isRefreshing.value = false;
        },
        error: (e, st) {
          final log = ref.read(loggerProvider);
          log.e('Failed to update balances', e, st);

          isRefreshing.value = false;
          UIUtil.showSnackbar('Failed to update balances.', context);
        },
      );
    });

    Future<void> refresh() async {
      isRefreshing.value = true;

      final hapticUtil = ref.read(hapticUtilProvider);
      hapticUtil.success();

      final networkError = ref.read(networkErrorProvider);
      if (networkError) {
        ref.refresh(wsServiceProvider);
      }

      ref.read(remoteRefreshProvider.notifier).update((state) => state + 1);
      ref.refresh(accountInfoRemoteProvider(account.address));
    }

    Widget proxyDecorator(
      Widget child,
      int index,
      Animation<double> animation,
    ) {
      return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          final double animValue = Curves.easeInOut.transform(animation.value);
          final double elevation = lerpDouble(0, 6, animValue)!;
          return Material(
            elevation: elevation,
            color: Colors.transparent,
            shadowColor: theme.background.withAlpha(150),
            child: child,
          );
        },
        child: child,
      );
    }

    final buildDefaultDragHandles = (kPlatformIsIOS || kPlatformIsAndroid) &&
        sortOption == TokenSortOption.custom;

    return ReactiveRefreshIndicator(
      backgroundColor: theme.backgroundDark,
      isRefreshing: isRefreshing.value,
      onRefresh: refresh,
      child: ReorderableListView.builder(
        key: const PageStorageKey('TokensWidget'),
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 28),
        buildDefaultDragHandles: buildDefaultDragHandles,
        proxyDecorator: proxyDecorator,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return TokenCard(
            key: Key(item.tokenInfo.tokenId),
            item: item,
          );
        },
        onReorder: (oldIndex, newIndex) {
          final ids =
              items.map((element) => element.tokenInfo.tokenId).toList();
          final balance = items[oldIndex];
          if (oldIndex > newIndex) {
            ids.removeAt(oldIndex);
            ids.insert(newIndex, balance.tokenInfo.tokenId);
          } else {
            ids.insert(newIndex, balance.tokenInfo.tokenId);
            ids.removeAt(oldIndex);
          }
          final sortedIds = ref.read(tokenOrderProvider(account).notifier);
          sortedIds.updateOrder(ids.lock);
        },
      ),
    );
  }
}
