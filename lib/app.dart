import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

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

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final language = ref.watch(languageProvider);
    final styles = ref.watch(stylesProvider);

    ref.listen<BaseTheme>(themeProvider, (previous, theme) {
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
                fontFamily: kFontFamily,
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
