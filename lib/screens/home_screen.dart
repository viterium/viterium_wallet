import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import '../app_providers.dart';
import '../main_card/main_card.dart';
import '../push_notifications/push_types.dart';
import '../receive/receive_sheet.dart';
import '../send_sheet/send_sheet.dart';
import '../settings_drawer/settings_drawer.dart';
import '../tokens/tokens_manage_sheet.dart';
import '../tokens/tokens_widget.dart';
import '../transactions/transaction_history_widget.dart';
import '../transactions/unreceived_providers.dart';
import '../util/ui_util.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/network_banner.dart';
import '../widgets/sheet_util.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch inBackground state
    ref.watch(inBackgroundProvider);

    // whether we should avoid locking the app
    final lockDisabled = ref.watch(lockDisabledProvider);
    // To lock and unlock the app
    final lockStreamListener = useRef<StreamSubscription?>(null);

    void setAppLockEvent() {
      final auth = ref.read(walletAuthProvider);
      final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
      final locked = sharedPrefsUtil.getLock();

      if ((locked || auth.encryptedSecret != null) && !lockDisabled) {
        lockStreamListener.value?.cancel();

        final timeout = sharedPrefsUtil.getLockTimeout();
        Future<void> delayed = Future.delayed(timeout.getDuration());
        lockStreamListener.value = delayed.asStream().listen((_) {
          try {
            ref.read(walletAuthNotifierProvider)?.lock();
          } catch (e) {
            final log = ref.read(loggerProvider);
            log.w("Failed to lock wallet ${e}");
          } finally {
            Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
          }
        });
      }
    }

    Future<void> cancelLockEvent() async {
      await lockStreamListener.value?.cancel();
    }

    useOnAppLifecycleStateChange((previous, state) async {
      final log = ref.read(loggerProvider);
      log.d('didChangeAppLifecycleState $state');

      switch (state) {
        case AppLifecycleState.paused:
          final inBackground = ref.read(inBackgroundProvider.notifier);
          Future.delayed(const Duration(milliseconds: 10), () {
            inBackground.state = true;
          });

          setAppLockEvent();
          break;
        case AppLifecycleState.resumed:
          await cancelLockEvent();

          final inBackground = ref.read(inBackgroundProvider.notifier);
          Future.delayed(const Duration(milliseconds: 1000), () {
            inBackground.state = false;
          });

          break;
        default:
          break;
      }
    });

    return const HomeScreenPage();
  }
}

// FIXME - aggregate provider to keep alive
final _homePageWatcherProvider =
    Provider.autoDispose.family<void, Account>((ref, account) {
  final inBackground = ref.watch(inBackgroundProvider);
  if (inBackground) {
    return;
  }

  ref.watch(accountsProvider);
  ref.watch(snapshotTickerProvider);

  ref.watch(txHistoryForAccountProvider(account));
  ref.watch(unreceivedProvider(account.address));
  ref.watch(unreceivedSubscriptionProvider(account.address));
  ref.watch(autoreceiveServiceProvider(account));
  ref.watch(pushSettingsForAccountProvider(account));
  ref.watch(quotaProvider(account.address));
});

class HomeScreenPage extends HookConsumerWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);
    ref.watch(_homePageWatcherProvider(account));

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

    final scaffoldKey = useRef(GlobalKey<ScaffoldState>());
    final lastTabIndex = useRef(0);

    void manageTokens() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        backgroundColor: theme.backgroundDarkest,
        widget: const TokensManageSheet(),
      );
    }

    return Scaffold(
      drawerEdgeDragWidth: 60,
      resizeToAvoidBottomInset: false,
      key: scaffoldKey.value,
      backgroundColor: theme.background,
      drawerScrimColor: theme.barrierWeaker,
      drawer: SizedBox(
        width: UIUtil.drawerWidth(context),
        child: const Drawer(child: SettingsSheet()),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: ClipRect(
          child: NetworkBanner(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        DefaultTabController(
                          length: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              MainCard(scaffoldKey: scaffoldKey.value),
                              const SizedBox(height: 2),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TabBar(
                                  indicatorWeight: 3,
                                  indicatorColor: theme.primary60,
                                  indicatorPadding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  onTap: (index) {
                                    if (lastTabIndex.value == index &&
                                        index == 0) {
                                      manageTokens();
                                    }
                                    lastTabIndex.value = index;
                                  },
                                  tabs: [
                                    Tab(
                                      child: Container(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 20, 0, 0),
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
                                        margin: const EdgeInsetsDirectional
                                            .fromSTEB(0, 20, 0, 0),
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
                              SizedBox(
                                height: 55,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ],
                          ),
                        ),
                        // Buttons
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [theme.boxShadowButton],
                                  ),
                                  height: 55,
                                  child: TextButton(
                                    style: styles.primaryButtonStyle,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        l10n.receive,
                                        textAlign: TextAlign.center,
                                        style: styles.textStyleButtonPrimary,
                                        maxLines: 1,
                                      ),
                                    ),
                                    onPressed: () {
                                      Sheets.showAppHeightEightSheet(
                                        context: context,
                                        widget: const ReceiveSheet(),
                                        theme: theme,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [theme.boxShadowButton],
                                  ),
                                  height: 55,
                                  child: TextButton(
                                    style: styles.primaryButtonStyle,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        l10n.send,
                                        textAlign: TextAlign.center,
                                        style: styles.textStyleButtonPrimary,
                                        maxLines: 1,
                                      ),
                                    ),
                                    onPressed: () {
                                      Sheets.showAppHeightNineSheet(
                                        context: context,
                                        widget: const SendSheet(),
                                        theme: theme,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
