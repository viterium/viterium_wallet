import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons_custom.dart';
import '../app_providers.dart';
import '../defi_home/defi_home_page.dart';
import '../settings_drawer/settings_drawer.dart';
import '../util/routes.dart';
import '../util/ui_util.dart';
import '../vitc_stake/vitc_stake_page.dart';
import '../vitc_swap/vitc_swap_page.dart';
import '../viva_staking/viva_staking_page.dart';
import '../wallet_home/wallet_home_page.dart';
import '../widgets/fab/fab_bottom_app_bar.dart';
import '../widgets/fab/fab_widget.dart';
import '../widgets/network_banner.dart';
import 'privacy_overlay.dart';

final showOverlayProvider = StateProvider((ref) => false);

final lockStreamListenerProvider =
    StateProvider<StreamSubscription?>((ref) => null);

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    // To lock and unlock the app
    final lockStreamListener = ref.watch(lockStreamListenerProvider.notifier);
    final inactive = useState(false);

    Future<void> setAppLockEvent() async {
      // whether we should avoid locking the app
      final lockDisabled = ref.read(lockDisabledProvider);
      if (lockDisabled) {
        return;
      }

      final auth = ref.read(walletAuthProvider);
      final sharedPrefsUtil = ref.read(sharedPrefsUtilProvider);
      final locked = sharedPrefsUtil.getLock();

      if ((locked || auth.encryptedSecret != null) && !lockDisabled) {
        final notifier = ref.read(walletAuthNotifierProvider);
        await lockStreamListener.state?.cancel();

        final timeout = sharedPrefsUtil.getLockTimeout();
        Future<void> delayed = Future.delayed(timeout.getDuration());
        lockStreamListener.state = delayed.asStream().listen((_) {
          notifier?.lock();
        });
      }
    }

    Future<void> cancelLockEvent() async {
      await lockStreamListener.state?.cancel();
    }

    useOnAppLifecycleStateChange((previous, state) async {
      final log = ref.read(loggerProvider);
      log.d('didChangeAppLifecycleState $state');

      switch (state) {
        case AppLifecycleState.inactive:
          inactive.value = true;
          break;
        case AppLifecycleState.hidden:
          await setAppLockEvent();
          break;
        case AppLifecycleState.paused:
          final inBackground = ref.read(inBackgroundProvider.notifier);
          inBackground.state = true;
          break;
        case AppLifecycleState.resumed:
          await cancelLockEvent();
          // refresh remote data
          final remote = ref.read(remoteRefreshProvider.notifier);
          remote.update((state) => state + 1);

          final inBackground = ref.read(inBackgroundProvider.notifier);
          final notifier = ref.read(walletAuthNotifierProvider);
          if (notifier?.walletLocked == true) {
            Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
            Future.delayed(const Duration(milliseconds: 1000), () {
              inBackground.state = false;
            });
          } else {
            inBackground.state = false;
            inactive.value = false;
          }
          break;
        default:
          break;
      }
    });

    final controller = useAnimationController(
      duration: const Duration(milliseconds: 250),
    );

    final pageController = usePageController();

    void showTabWithIndex(int index) {
      pageController.jumpToPage(index);
    }

    final scaffoldKey = ref.watch(homePageScaffoldKeyProvider);
    final defiEnabled = ref.watch(defiEnabledProvider);

    ref.listen(defiEnabledProvider, (_, next) {
      pageController.jumpToPage(0);
    });

    //final _walletNavigatorKey = useRef(GlobalKey<NavigatorState>());
    final _defiNavigatorKey = useRef(GlobalKey<NavigatorState>());

    return PortalTarget(
      visible: inactive.value,
      portalFollower: const PrivacyOverlay(),
      child: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerDown: (_) async {
          await controller.reverse();
          final notifier = ref.read(showOverlayProvider.notifier);
          notifier.state = false;
        },
        child: LayoutBuilder(builder: (context, constraints) {
          return Scaffold(
            key: scaffoldKey,
            drawerEdgeDragWidth: 60,
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.background,
            drawerScrimColor: theme.barrierWeaker,
            drawer: SizedBox(
              width: UIUtil.drawerWidth(context),
              child: const Drawer(child: SettingsSheet()),
            ),
            body: SafeArea(
              //minimum: const EdgeInsets.only(bottom: 20),
              child: ClipRect(
                child: NetworkBanner(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: PageView(
                      controller: pageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // WillPopScope(
                        //   onWillPop: () async {
                        //     final state = _walletNavigatorKey.value.currentState;
                        //     if (state == null || !state.canPop()) {
                        //       return true;
                        //     }
                        //     state.pop();
                        //     return false;
                        //   },
                        //   child: Navigator(
                        //     key: _walletNavigatorKey.value,
                        //     initialRoute: '/',
                        //     onGenerateRoute: (settings) {
                        //       return NoTransitionRoute(
                        //         builder: (_) => const WalletHomePage(),
                        //         settings: settings,
                        //       );
                        //     },
                        //   ),
                        // ),
                        const WalletHomePage(),
                        PopScope(
                          canPop: false,
                          onPopInvoked: (bool didPop) {
                            if (didPop) {
                              return;
                            }
                            final state = _defiNavigatorKey.value.currentState;
                            if (state != null && state.canPop()) {
                              state.pop();
                            }
                          },
                          child: Navigator(
                            key: _defiNavigatorKey.value,
                            initialRoute: '/',
                            onGenerateRoute: (settings) {
                              switch (settings.name) {
                                case '/viva_staking':
                                  return MaterialPageRoute(
                                    builder: (_) => const VivaStakingPage(),
                                    settings: settings,
                                  );
                                case '/vitc_stake':
                                  return MaterialPageRoute(
                                    builder: (_) => const VitcStakePage(),
                                    settings: settings,
                                  );
                                case '/vitc_swap':
                                  return MaterialPageRoute(
                                    builder: (_) => const VitcSwapPage(),
                                    settings: settings,
                                  );
                                default:
                                  return NoTransitionRoute(
                                    builder: (_) => DefiHomePage(),
                                    settings: settings,
                                  );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: defiEnabled
                ? FABBottomAppBar(
                    height: 62,
                    color: theme.text60,
                    backgroundColor: theme.backgroundDark,
                    selectedColor: theme.primary,
                    notchedShape: const CircularNotchedRectangle(),
                    onTabSelected: showTabWithIndex,
                    items: [
                      FABBottomAppBarItem(
                        iconData: CupertinoIcons.creditcard,
                        text: 'Wallet',
                      ),
                      FABBottomAppBarItem(
                        iconData: AppIconsCustom.defi,
                        text: 'DeFi',
                      ),
                    ],
                  )
                : null,
            floatingActionButtonLocation:
                defiEnabled ? FloatingActionButtonLocation.centerDocked : null,
            floatingActionButton: defiEnabled
                ? FabWidget(
                    onSelectedIndex: (_) {},
                    width: constraints.maxWidth,
                    controller: controller,
                  )
                : null,
          );
        }),
      ),
    );
  }
}
