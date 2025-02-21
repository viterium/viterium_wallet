import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import 'app_localization.dart';
import 'app_providers.dart';
import 'app_styles.dart';
import 'push_notifications.dart';
import 'screens/home_screen.dart';
import 'screens/intro_screen.dart';
import 'screens/lock_screen.dart';
import 'screens/logout_screen.dart';
import 'screens/password_lock_screen.dart';
import 'screens/setup_wallet_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/viteconnect_screen.dart';
import 'settings/available_language.dart';
import 'supported_locales.dart';
import 'themes/themes.dart';
import 'util/platform.dart';
import 'util/routes.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final language = ref.watch(languageProvider);
    final styles = ref.watch(stylesProvider);

    ref.listen<BaseTheme>(themeProvider, (_, theme) {
      SystemChrome.setSystemUIOverlayStyle(theme.statusBar);
    });

    // Setup hight refresh rate on Android devices
    useEffect(() {
      if (kPlatformIsAndroid) {
        final log = ref.read(loggerProvider);
        Future.delayed(Duration.zero, () {
          try {
            FlutterDisplayMode.setHighRefreshRate();
          } catch (e) {
            log.e('Failed to set high refresh rate', e);
          }
        });
      }
      return null;
    }, const []);

    useEffect(() {
      final appLinks = AppLinks();
      final sub = appLinks.allStringLinkStream.listen((appLink) {
        ref.read(appLinkProvider.notifier).state = appLink;
      });
      return sub.cancel;
    }, const []);

    // Setup Push Notifications
    useEffect(() {
      if (kPlatformIsAndroid || kPlatformIsIOS) {
        return setupPushNotifications(ref);
      }
      return null;
    }, const []);

    return Container(
      decoration: BoxDecoration(color: theme.backgroundDarkest),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            minWidth: 320,
            minHeight: 480,
            maxWidth: 720,
          ),
          child: Portal(
            child: OKToast(
              position: ToastPosition(align: Alignment.topCenter, offset: 40),
              textStyle: styles.textStyleSnackbar,
              backgroundColor: theme.backgroundDark,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Viterium',
                theme: ThemeData(
                  useMaterial3: false,
                  dialogBackgroundColor: theme.backgroundDark,
                  primaryColor: theme.primary,
                  colorScheme: ThemeData().colorScheme.copyWith(
                        brightness: Brightness.dark,
                        secondary: theme.primary10,
                        surface: theme.backgroundDark,
                      ),
                  fontFamily: kDefaultFontFamily,
                  brightness: Brightness.dark,
                  tooltipTheme: TooltipThemeData(
                    preferBelow: false,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: theme.backgroundDarkest,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    textStyle: styles.textStyleAddressText60,
                  ),
                ),
                localizationsDelegates: [
                  AppLocalizationsDelegate(language),
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate
                ],
                locale: language.language == AvailableLanguage.DEFAULT
                    ? null
                    : language.getLocale(),
                supportedLocales: supportedLocales,
                initialRoute: '/',
                onGenerateRoute: (RouteSettings settings) {
                  switch (settings.name) {
                    case '/intro':
                      return NoTransitionRoute(
                        builder: (_) => const IntroScreen(),
                        settings: settings,
                      );
                    case '/home':
                      return NoTransitionRoute(
                        builder: (_) => const HomeScreen(),
                        settings: settings,
                      );
                    // case '/home_transition':
                    //   return NoPopTransitionRoute(
                    //     builder: (_) => const HomeScreen(),
                    //     settings: settings,
                    //   );
                    case '/lock_screen':
                      return NoTransitionRoute(
                        builder: (_) => const LockScreen(),
                        settings: settings,
                      );
                    case '/lock_screen_transition':
                      return MaterialPageRoute(
                        builder: (_) => const LockScreen(),
                        settings: settings,
                      );
                    case '/password_lock_screen':
                      return NoTransitionRoute(
                        builder: (_) => const PasswordLockScreen(),
                        settings: settings,
                      );
                    case '/logout':
                      return NoTransitionRoute(
                        builder: (_) => const LogoutScreen(),
                        settings: settings,
                      );
                    case '/wallet_setup':
                      return NoTransitionRoute(
                        builder: (_) => const SetupWalletScreen(),
                        settings: settings,
                      );
                    case '/vite_connect':
                      return MaterialPageRoute(
                        builder: (_) => const ViteConnectScreen(),
                        settings: settings,
                      );
                    default:
                      return NoTransitionRoute(
                        builder: (_) => const SplashScreen(),
                        settings: settings,
                      );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
