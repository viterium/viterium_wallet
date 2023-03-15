import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import '../app_providers.dart';
import '../main_card/main_card.dart';
import '../push_notifications/push_types.dart';
import '../tokens/tokens_manage_sheet.dart';
import '../tokens/tokens_widget.dart';
import '../transactions/transaction_history_widget.dart';
import '../transactions/unreceived_providers.dart';
import '../util/ui_util.dart';
import '../widgets/action_button.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';

// FIXME - aggregate provider to keep alive
final _homePageWatcherProvider =
    Provider.autoDispose.family<void, Account>((ref, account) {
  ref.watch(accountsProvider);
  ref.watch(snapshotTickerProvider);

  ref.watch(txHistoryForAccountProvider(account));
  ref.watch(unreceivedProvider(account.address));
  ref.watch(unreceivedSubscriptionProvider(account.address));
  ref.watch(autoreceiveServiceProvider(account));
  ref.watch(pushSettingsForAccountProvider(account));
  ref.watch(quotaProvider(account.address));
});

class WalletHomePage extends HookConsumerWidget {
  const WalletHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final account = ref.watch(selectedAccountProvider);
    final defiEnabled = ref.watch(defiEnabledProvider);
    ref.watch(_homePageWatcherProvider(account));

    useAutomaticKeepAlive();
    final isMounted = useIsMounted();

    Future<void> publishToken(PushTokenSettings settings) async {
      try {
        AppDialogs.showInProgressDialog(
          context,
          'Updating Notifications Token',
          'Please wait...',
        );

        final accountService = ref.read(accountServiceProvider);
        final service = ref.read(pushServiceProvider);
        final notifier = ref.read(pushTokenSettingsProvider.notifier);
        await notifier.publishToken(
          address: account.address,
          accountService: accountService,
          service: service,
        );
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e(e, st);

        UIUtil.showSnackbar('Failed to update Notifications Token', context);
      } finally {
        Navigator.of(context).pop();
      }
    }

    Future<void> authPublishToken(PushTokenSettings settings) async {
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticate(
        context,
        'Enter PIN to Update Notifications Token',
        'Authenticate to Update Notifications Token',
      );

      if (auth) {
        publishToken(settings);
      }
    }

    Future<void> confirmPublishToken(PushTokenSettings settings) async {
      final pushSettings = ref.read(pushInfoRepositoryProvider);
      final anyPushEnabled = pushSettings.anyPushEnabled;
      if (settings.published || !anyPushEnabled) {
        return;
      }

      AppDialogs.showConfirmDialog(
        context,
        'Update Notifications Token',
        'The Push Notifications Token for your device changed. Please update to continue receiving notifications.',
        'UPDATE',
        () => authPublishToken(settings),
      );
    }

    ref.listen<PushTokenSettings>(
      pushTokenSettingsProvider,
      (_, settings) => confirmPublishToken(settings),
      onError: (e, st) {
        final log = ref.read(loggerProvider);
        log.e(e, st);
      },
    );

    ref.listen<Hash?>(notificationIdProvider, (_, id) async {
      // FIXME - duplicate code
      if (id == null) {
        return;
      }
      final repository = ref.read(pushInfoRepositoryProvider);
      final pushInfo = repository.pushInfoForId(id);
      if (pushInfo == null) {
        return;
      }

      await Future.delayed(const Duration(milliseconds: 100));
      if (!isMounted()) {
        return;
      }

      final authNotifier = ref.read(walletAuthNotifierProvider);
      final locked = authNotifier?.walletLocked ?? false;
      if (locked) {
        return;
      }

      final wallet = ref.read(selectedWalletProvider);
      if (wallet == null || wallet.wid != pushInfo.walletId) {
        // different wallet - let splash screen handle it
        Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        return;
      }
      // same wallet, select account
      final index = pushInfo.index;
      final accounts = ref.read(accountsProvider);
      final account = accounts.getAccountWithIndex(index);
      if (account != null) {
        await accounts.selectAccountAsync(account);
      }
      final notifier = ref.read(notificationIdProvider.notifier);
      notifier.state = null;
    });

    useEffect(() {
      Future.delayed(Duration.zero, () {
        final settings = ref.read(pushTokenSettingsProvider);
        confirmPublishToken(settings);
      });
      return null;
    }, const []);

    final lastTabIndex = useRef(0);
    final lastTokensTouchTimestamp = useRef(DateTime.now());

    void manageTokens() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        backgroundColor: theme.backgroundDarkest,
        widget: const TokensManageSheet(),
      );
    }

    return Column(
      children: [
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const MainCard(),
                const SizedBox(height: 2),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: TabBar(
                    indicatorWeight: 3,
                    indicatorColor: theme.primary60,
                    indicatorPadding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    onTap: (index) {
                      final timestamp = DateTime.now();
                      final delta =
                          timestamp.difference(lastTokensTouchTimestamp.value);
                      if (index == 0 &&
                          lastTabIndex.value == index &&
                          delta.inMilliseconds > 30) {
                        manageTokens();
                      }
                      if (index == 0) {
                        lastTokensTouchTimestamp.value = timestamp;
                      }
                      lastTabIndex.value = index;
                    },
                    tabs: [
                      Tab(
                        child: Container(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          width: double.infinity,
                          child: Text(
                            l10n.tokens.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: styles.textStyleTabLabel,
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            l10n.transactions.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: styles.textStyleTabLabel,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Expanded(
                  child: TabBarView(
                    children: [
                      Stack(
                        children: [
                          const TokensWidget(),
                          const TopGradientWidget(),
                          const BottomGradientWidget(),
                        ],
                      ),
                      Stack(
                        children: [
                          const TransactionHistoryWidget(),
                          const TopGradientWidget(),
                          const BottomGradientWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Buttons
        ),
        if (!defiEnabled)
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReceiveActionButton(),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: const SendActionButton(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
