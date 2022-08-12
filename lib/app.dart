import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';
import 'package:push/push.dart';

import 'app_localization.dart';
import 'app_providers.dart';
import 'app_styles.dart';
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
import 'util/routes.dart';
import 'util/ui_util.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final language = ref.watch(languageProvider);
    final styles = ref.watch(stylesProvider);

    useEffect(() {
      if (kIsWeb) return null;
      Future.delayed(Duration.zero, () {
        try {
          FlutterDisplayMode.setHighRefreshRate();
        } catch (e) {
          UIUtil.showSnackbar(e.toString(), context);
        }
      });
      return null;
    });

    useEffect(() {
      final onNewTokenSubscription = Push.instance.onNewToken.listen((token) {
        //print('Just got a new token: $token');
        final notifier = ref.read(pushTokenSettingsProvider.notifier);
        notifier.updateToken(token);
      });

      Push.instance.token.then((token) {
        if (token == null) {
          return;
        }
        //print('Current token: $token');
        final notifier = ref.read(pushTokenSettingsProvider.notifier);
        notifier.updateToken(token);
      });

      Push.instance.notificationTapWhichLaunchedAppFromTerminated.then((data) {
        //print(data);
      });

      final onNotificationTapSubscription =
          Push.instance.onNotificationTap.listen((data) {
        // print('Notification was tapped:\n'
        //     'Data: $data \n');
      });

      final onMessageSubscription = Push.instance.onMessage.listen((message) {
        // print('RemoteMessage received while app is in foreground:\n'
        //     'RemoteMessage.Notification: ${message.notification} \n'
        //     ' title: ${message.notification?.title.toString()}\n'
        //     ' body: ${message.notification?.body.toString()}\n'
        //     'RemoteMessage.Data: ${message.data}');
      });

      final onBackgroundMessageSubscription =
          Push.instance.onBackgroundMessage.listen((message) {
        // print('RemoteMessage received while app is in background:\n'
        //     'RemoteMessage.Notification: ${message.notification} \n'
        //     ' title: ${message.notification?.title.toString()}\n'
        //     ' body: ${message.notification?.body.toString()}\n'
        //     'RemoteMessage.Data: ${message.data}');
      });

      return () {
        onNewTokenSubscription.cancel();
        onNotificationTapSubscription.cancel();
        onMessageSubscription.cancel();
        onBackgroundMessageSubscription.cancel();
      };
    }, const []);

    ref.listen<BaseTheme>(themeProvider, (_, theme) {
      SystemChrome.setSystemUIOverlayStyle(theme.statusBar);
    });

    return Container(
      decoration: BoxDecoration(color: theme.backgroundDarkest),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            minWidth: 320,
            minHeight: 480,
            maxWidth: 720,
          ),
          child: OKToast(
            position: ToastPosition(align: Alignment.topCenter, offset: 40),
            textStyle: styles.textStyleSnackbar,
            backgroundColor: theme.backgroundDark,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Viterium',
              theme: ThemeData(
                dialogBackgroundColor: theme.backgroundDark,
                primaryColor: theme.primary,
                colorScheme: ThemeData().colorScheme.copyWith(
                      brightness: Brightness.dark,
                      secondary: theme.primary10,
                    ),
                backgroundColor: theme.backgroundDark,
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
                AppLocalizationsDelegate(language, ref.read),
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
    );
  }
}
