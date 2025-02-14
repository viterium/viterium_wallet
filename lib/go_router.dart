/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'intro/intro.dart';
import 'providers.dart';
import 'screens/home_screen.dart';
import 'screens/lock_screen.dart';
import 'screens/password_lock_screen.dart';
import 'screens/splash_screen.dart';

// FIXME - Unused
class GoRouterWidget extends ConsumerWidget {
  const GoRouterWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/intro',
          builder: (context, state) => const IntroWelcomePage(),
          redirect: (_) => '/intro/welcome',
          routes: [
            GoRoute(
              path: 'welcome',
              builder: (context, state) => const IntroWelcomePage(),
            ),
            GoRoute(
              path: 'password_on_launch',
              builder: (context, state) => const IntroPasswordOnLaunch(),
            ),
            GoRoute(
              path: 'password',
              builder: (context, state) => const IntroPassword(),
            ),
            GoRoute(
              path: 'backup',
              builder: (context, state) => const IntroBackupSeedPage(),
            ),
            GoRoute(
              path: 'backup_safety',
              builder: (context, state) => const IntroBackupSafetyPage(),
            ),
            GoRoute(
              path: 'backup_confirm',
              builder: (context, state) => const IntroBackupConfirm(),
            ),
            GoRoute(
              path: 'import',
              builder: (context, state) => const IntroImportSeedPage(),
            ),
          ],
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/locked',
          builder: (context, state) => const AppLockScreen(),
        ),
        GoRoute(
          path: '/password_locked',
          builder: (context, state) => const AppPasswordLockScreen(),
        ),
      ],
      redirect: (state) {
        if (state.location != '/') {
          return null;
        }
        String? nullIfEqual(String source, String dest) =>
            source == dest ? null : dest;
        print(state.location);

        final options = ref.read(walletOptionsProvider);
        final selected = ref.read(walletInfoProvider);

        if (selected == null) {
          if (options.isEmpty) {
            return nullIfEqual(state.location, '/intro/welcome');
          }
          return nullIfEqual(state.location, '/intro/welcome');
        }

        final authState = ref.read(walletAuthProvider);

        if (!authState.isLoggedIn) {
          return '/intro_welcome';
        } else if (authState.isEncrypted) {
          return '/password_lock_screen';
        } else if (true) {
          return '/lock_screen';
        } else {
          return '/home';
        }

        // if (selected != null) {
        //   return '/home';
        // }
        // if (options.isEmpty)
        //     if (selected != null) {
        //       return ProviderScope(
        //         overrides: [
        //           activeWalletProvider.overrideWithValue(selected),
        //         ],
        //         child: const SplashScreen(),
        //       );
        //     }
        //     if (options.isNotEmpty) {
        //       return const IntroWelcomePage();
        //     }

        // no redirects
        return null;
      },
    );

    return Container();
  }
}
*/
