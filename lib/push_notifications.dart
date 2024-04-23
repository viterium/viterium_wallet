import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:push/push.dart';
import 'package:vite/vite.dart';

import 'push_notifications/push_providers.dart';

void Function() setupPushNotifications(WidgetRef ref) {
  final onNewTokenSubscription = Push.instance.onNewToken.listen((token) {
    final notifier = ref.read(pushTokenSettingsProvider.notifier);
    notifier.updateToken(token);
  });

  Push.instance.token.then((token) {
    if (token == null) {
      return;
    }
    final notifier = ref.read(pushTokenSettingsProvider.notifier);
    notifier.updateToken(token);
  });

  Hash? getIdFromData(Map<String?, Object?> data) {
    return switch (data) {
      {'data': {'id': String id}} || {'id': String id} => Hash.tryParse(id),
      _ => null,
    };
  }

  Push.instance.notificationTapWhichLaunchedAppFromTerminated.then((data) {
    if (data == null) {
      return;
    }
    final id = getIdFromData(data);
    if (id == null) {
      return;
    }
    final notifier = ref.read(notificationIdProvider.notifier);
    notifier.state = id;
  });

  final onNotificationTapSubscription =
      Push.instance.onNotificationTap.listen((data) {
    final id = getIdFromData(data);
    if (id == null) {
      return;
    }

    final notifier = ref.read(notificationIdProvider.notifier);
    notifier.state = id;
  });

  final onMessageCancel = Push.instance.addOnMessage((message) {});

  final onBackgroundMessageCancel =
      Push.instance.addOnBackgroundMessage((message) {});

  return () {
    onNewTokenSubscription.cancel();
    onNotificationTapSubscription.cancel();
    onMessageCancel();
    onBackgroundMessageCancel();
  };
}
