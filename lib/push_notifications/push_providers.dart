import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/core.dart';
import 'package:vite/utils.dart';

import '../accounts/account.dart';
import '../app_providers.dart';
import '../database/database.dart';
import 'push_contract.dart';
import 'push_info_repository.dart';
import 'push_service.dart';
import 'push_settings_notifier.dart';
import 'push_token_notifier.dart';
import 'push_types.dart';

final pushTokenSettingsProvider =
    StateNotifierProvider<PushTokenSettingsNotifier, PushTokenSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);

  return PushTokenSettingsNotifier(repository: repository);
});

final pushTokenProvider = Provider.autoDispose((ref) {
  final payload = ref.watch(pushTokenSettingsProvider).payload;
  return payload.token;
});

final clientIdProvider = Provider.autoDispose((ref) {
  final payload = ref.watch(pushTokenSettingsProvider).payload;
  return payload.clientId;
});

final pushServiceProvider = Provider((ref) {
  final client = ref.watch(rpcClientProvider);

  return PushService(
    contract: pushNotificationsContract,
    client: client,
  );
});

final pushInfoBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  return db.getTypedBox<PushInfo>(kPushInfoBox);
});

final pushInfoRepositoryProvider = Provider((ref) {
  final box = ref.watch(pushInfoBoxProvider);
  return PushInfoRepository(box);
});

final pushIdCacheProvider = Provider((ref) => <String, Hash>{});

final pushIdForAccountProvider =
    Provider.autoDispose.family<Hash, Account>((ref, account) {
  final wallet = ref.watch(walletProvider);
  final clientId = ref.watch(clientIdProvider);
  final cache = ref.watch(pushIdCacheProvider);
  final network = ref.watch(viteNetworkProvider);

  final key = '${clientId}#${wallet.wid}#${account.index}#$network';
  final id = cache.putIfAbsent(
    key,
    () => Hash.dataToHash(stringToBytesUtf8(key)),
  );

  return id;
});

final pushSettingsForAccountProvider = StateNotifierProvider.autoDispose
    .family<PushSettingsNotifier, PushInfo, Account>((ref, account) {
  final accountService = ref.watch(accountServiceProvider);
  final clientId = ref.watch(clientIdProvider);
  final wallet = ref.watch(walletProvider);
  final repository = ref.watch(pushInfoRepositoryProvider);
  final pushService = ref.watch(pushServiceProvider);
  final id = ref.watch(pushIdForAccountProvider(account));
  final pushInfo = repository.getPushInfo(
    id,
    create: (id) => PushInfo(
      walletId: wallet.wid,
      index: account.index,
      settings: BigInt.zero,
    ),
  );

  return PushSettingsNotifier(
    account: account,
    accountService: accountService,
    id: id,
    pushInfo: pushInfo,
    clientId: clientId,
    repository: repository,
    pushService: pushService,
  );
});

final pushEnabledProvider = Provider.autoDispose((ref) {
  final account = ref.watch(selectedAccountProvider);
  final pushInfo = ref.watch(pushSettingsForAccountProvider(account));
  return pushInfo.pushEnabled;
});

final notificationIdProvider = StateProvider<Hash?>((ref) => null);
