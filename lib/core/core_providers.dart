import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vite/vite.dart';

import '../app_localization.dart';
import '../app_styles.dart';
import '../database/database.dart';
import '../main_card/main_card_notifier.dart';
import '../main_card/main_card_state.dart';
import '../node_settings/node_providers.dart';
import '../pow_settings/pow_providers.dart';
import '../settings/settings_providers.dart';
import '../util/auth_util.dart';
import '../util/biometrics.dart';
import '../util/hapticutil.dart';
import '../util/sharedprefsutil.dart';
import '../wallet_signer/wallet_signer.dart';
import 'vault.dart';

const kMaxAccounts = 99;

final timeProvider = StreamProvider.autoDispose<DateTime>((ref) {
  return Stream.periodic(
    const Duration(seconds: 10),
    (ticker) => DateTime.now(),
  );
});

final lastUpdateProvider = Provider.autoDispose<DateTime>((ref) {
  ref.watch(snapshotTickerProvider);
  return DateTime.now();
});

final networkErrorProvider = Provider.autoDispose<bool>((ref) {
  final inBackground = ref.watch(inBackgroundProvider);
  final lastUpdate = ref.watch(lastUpdateProvider);
  final timer = ref.watch(timeProvider).asData?.value ?? DateTime.now();
  if (inBackground) {
    return false;
  }

  return timer.difference(lastUpdate) > Duration(seconds: 10);
});

final maxAccountsProvider = Provider((ref) => kMaxAccounts);

final dbProvider = StateProvider((ref) => Database());

final stylesProvider = Provider((ref) {
  final theme = ref.watch(themeProvider);
  return AppStyles(theme);
});

final localeProvider = Provider((ref) {
  final language = ref.watch(languageProvider);
  return Locale(language.getLocaleString());
});

final blockExplorerProvider = Provider((ref) {
  final settings = ref.watch(blockExplorerSettingsProvider);
  final network = ref.watch(viteNetworkProvider);
  return settings.explorerForNetwork(network);
});

final accountServiceProvider = Provider.autoDispose((ref) {
  final signer = ref.watch(walletSignerProvider);
  final client = ref.watch(viteClientProvider);
  final powClient = ref.watch(powClientProvider);

  return AccountService(
    signer: signer,
    client: client,
    powClient: powClient,
  );
});

final sharedPrefsProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());

final l10nProvider = Provider((ref) => const AppLocalization());
final hapticUtilProvider = Provider((ref) => const HapticUtil());
final authUtilProvider = Provider((ref) => AuthUtil(ref));
final biometricUtilProvider = Provider(
  (ref) => BiometricUtil(ref.watch(loggerProvider)),
);
final vaultProvider = Provider((ref) => Vault());
final sharedPrefsUtilProvider = Provider((ref) {
  final sharedPrefs = ref.watch(sharedPrefsProvider);
  return SharedPrefsUtil(sharedPrefs);
});
final loggerProvider = Provider(
  (ref) => Logger(
    printer: PrettyPrinter(),
    //filter: ProductionFilter(),
  ),
);

final viteNetworkProvider = Provider((ref) {
  final config = ref.watch(viteNodeConfigProvider);
  return config.network;
});

final viteApiHttpUrlProvider = Provider((ref) {
  final config = ref.watch(viteNodeConfigProvider);
  return config.http;
});
final viteApiWsUrlProvider = Provider((ref) {
  final config = ref.watch(viteNodeConfigProvider);
  return config.ws;
});

final httpServiceProvider = Provider((ref) {
  final url = ref.watch(viteApiHttpUrlProvider);
  final service = HttpService(url);
  ref.onDispose(() => service.close());
  return service;
});

final inBackgroundProvider = StateProvider<bool>((ref) => false);

final wsServiceProvider = Provider<RpcService>((ref) {
  final logger = ref.read(loggerProvider);

  final url = ref.watch(viteApiWsUrlProvider);
  final inBackground = ref.watch(inBackgroundProvider);
  logger.d('InBackground service $inBackground');
  if (inBackground) {
    logger.d('create NoOpService provider');
    return NoOpService();
  }
  logger.d('create WSService provider');
  final service = WsService(url);
  ref.onDispose(() {
    logger.d('dispose WSService provider');
    Future.delayed(const Duration(seconds: 1), () {
      try {
        service.close();
      } catch (e, st) {
        logger.e('Failed to close WsService', e, st);
      }
    });
  });
  return service;
});

final wsViteClientProvider = Provider((ref) {
  final service = ref.watch(wsServiceProvider);
  return ViteClient(service);
});

final rpcClientProvider = Provider((ref) {
  final service = ref.watch(httpServiceProvider);
  return RpcClient(service);
});

final viteClientProvider = Provider((ref) {
  final service = ref.watch(httpServiceProvider);
  return ViteClient(service);
});

final powClientProvider = Provider<PowClient>((ref) {
  final config = ref.watch(powConfigProvider);
  return config.when(
    defaultNode: (_) => ref.watch(viteClientProvider),
    custom: (_, url) {
      final client = ViteClient(HttpService(url));
      ref.onDispose(() => client.close());
      return client;
    },
  );
});

final mainCardProvider =
    StateNotifierProvider<MainCardNotifier, MainCardState>((ref) {
  return MainCardNotifier();
});

final themeProvider = Provider((ref) {
  final themeSetting = ref.watch(themeSettingProvider);
  return themeSetting.getTheme();
});

final deviceLocaleProvider = StateProvider<Locale>((ref) {
  return Locale('en', 'US');
});

final currencyLocaleProvider = Provider((ref) {
  final currency = ref.watch(currencyProvider);
  return currency.getLocale().toString();
});

// final initialDeepLinkProvider = FutureProvider((ref) {
//   return uniLinks.getInitialLink();
// });

// final deepLinkProvider = StreamProvider.autoDispose((ref) {
//   return uniLinks.linkStream;
// });

final lastKnownSnapshotProvider =
    StateProvider<SnapshotBlockMessage?>((ref) => null);

final lastKnownSnapshotHeightProvider = Provider((ref) {
  final last = ref.watch(lastKnownSnapshotProvider);
  return last?.height ?? BigInt.zero;
});

final snapshotTickerProvider =
    StreamProvider<SnapshotBlockMessage>((ref) async* {
  final lastKnownMessage = ref.read(lastKnownSnapshotProvider);
  if (lastKnownMessage != null) {
    yield lastKnownMessage;
  }

  final inBackground = ref.watch(inBackgroundProvider);
  if (inBackground) {
    return;
  }

  final client = ref.watch(wsViteClientProvider);
  final controller = StreamController<SnapshotBlockMessage>();

  void callback(CallbackParam response) {
    if (controller.isClosed) {
      return;
    }
    final messages = response.typedMessages(SnapshotBlockMessage.fromJson);

    if (messages.isNotEmpty) {
      final notifier = ref.read(lastKnownSnapshotProvider.notifier);
      notifier.state = messages.last;
    }
    for (final message in messages) {
      controller.sink.add(message);
    }
  }

  final subscriptionId = await client.onNewSnapshotBlock(callback);

  ref.onDispose(() {
    try {
      if (!client.isClosed) {
        client.unsubscribe(subscriptionId);
      }
      if (!controller.isClosed) {
        controller.sink.close();
        controller.close();
      }
    } catch (e) {
      ref.read(loggerProvider).e(e);
    }
  });

  yield* controller.stream;
});

final unreceivedSubscriptionProvider =
    StreamProvider.family<UnreceivedBlockMessage, Address>(
        (ref, address) async* {
  final client = ref.watch(wsViteClientProvider);
  final controller = StreamController<UnreceivedBlockMessage>();

  void callback(CallbackParam response) async {
    final log = ref.read(loggerProvider);
    log.d('Unreceived block subscription - $response');
    if (controller.isClosed) {
      return;
    }
    final messages = response.typedMessages(UnreceivedBlockMessage.fromJson);
    for (final message in messages) {
      controller.sink.add(message);
    }
  }

  final subscriptionId =
      await client.onNewUnreceivedBlockByAddress(address, callback);

  ref.onDispose(() {
    try {
      if (!client.isClosed) {
        client.unsubscribe(subscriptionId);
      }
      if (!controller.isClosed) {
        controller.sink.close();
        controller.close();
      }
    } catch (e, st) {
      final log = ref.read(loggerProvider);
      log.e('Dispose unreceived subscription provider', e, st);
    }
  });

  yield* controller.stream;
});

final newAccountBlockProvider =
    StreamProvider.family<AccountBlockWithHeightMessage, Address>(
        (ref, address) async* {
  final client = ref.watch(wsViteClientProvider);
  final controller = StreamController<AccountBlockWithHeightMessage>();

  void callback(CallbackParam response) {
    if (controller.isClosed) {
      return;
    }
    final messages =
        response.typedMessages(AccountBlockWithHeightMessage.fromJson);
    for (final message in messages) {
      controller.sink.add(message);
    }
  }

  final subscriptionId =
      await client.onNewAccountBlockByAddress(address, callback);

  ref.onDispose(() {
    try {
      if (!client.isClosed) {
        client.unsubscribe(subscriptionId);
      }
      if (!controller.isClosed) {
        controller.sink.close();
        controller.close();
      }
    } catch (e) {
      ref.read(loggerProvider).e(e);
    }
  });

  yield* controller.stream;
});

final remoteRefreshProvider = StateProvider((ref) => 0);

enum TokenCardAction {
  showTokenSheet,
  selectToken,
  vitcSwapSelectFromToken,
  vitcSwapSelectToToken,
}

final tokenCardActionProvider =
    Provider((ref) => TokenCardAction.showTokenSheet);

final lockDisabledProvider = StateProvider((ref) => false);

final homePageScaffoldKeyProvider =
    Provider((ref) => GlobalKey<ScaffoldState>());
