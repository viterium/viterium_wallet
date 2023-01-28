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

  Push.instance.notificationTapWhichLaunchedAppFromTerminated.then((data) {
    if (data == null) {
      return;
    }
    final id = Hash.tryParse(data['id'] as String? ?? '');
    if (id == null) {
      return;
    }
    final notifier = ref.read(notificationIdProvider.notifier);
    notifier.state = id;
  });

  final onNotificationTapSubscription =
      Push.instance.onNotificationTap.listen((data) {
    final id = Hash.tryParse(data['id'] as String? ?? '');
    if (id == null) {
      return;
    }
    final notifier = ref.read(notificationIdProvider.notifier);
    notifier.state = id;
  });

  final onMessageSubscription = Push.instance.onMessage.listen((message) {});

  final onBackgroundMessageSubscription =
      Push.instance.onBackgroundMessage.listen((message) {});

  return () {
    onNewTokenSubscription.cancel();
    onNotificationTapSubscription.cancel();
    onMessageSubscription.cancel();
    onBackgroundMessageSubscription.cancel();
  };
}
