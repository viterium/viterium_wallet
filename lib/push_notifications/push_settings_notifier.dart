import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import 'push_info_repository.dart';
import 'push_service.dart';
import 'push_types.dart';
import 'push_util.dart';

class PushSettingsNotifier extends StateNotifier<PushInfo> {
  final Account account;
  final AccountService accountService;
  final Hash clientId;
  final Hash id;
  final PushInfoRepository repository;
  final PushService pushService;

  PushSettingsNotifier({
    required this.account,
    required this.accountService,
    required this.clientId,
    required this.id,
    required PushInfo pushInfo,
    required this.repository,
    required this.pushService,
  }) : super(pushInfo) {
    pushService.getSettings(account.address, id).then((value) async {
      if (value == state.settings) {
        return;
      }
      final newInfo = state.copyWith(settings: value);
      await repository.setPushInfo(pushInfo, id: id);
      state = newInfo;
    }).catchError((e) {});
  }

  Future<void> _linkId() async {
    final publicKey = await pushService.getPublicKey();
    final settingsPayload = PushSettingsPayload(clientId: clientId, id: id);
    final payload = encryptPushSettingsPayload(
      settingsPayload,
      publicKey: publicKey,
    );

    await pushService.linkId(
      address: account.address,
      accountService: accountService,
      payload: payload,
    );
  }

  Future<void> setPush({required bool enabled}) async {
    if (state.pushEnabled == enabled) {
      return;
    }

    final settings = PushSettings(enabled: enabled);
    if (enabled && !state.idLinked) {
      await _linkId();
    }

    await pushService.changeSettings(
      address: account.address,
      accountService: accountService,
      settings: settings.encoded,
      id: id,
    );

    final pushInfo = state.copyWith(
      settings: settings.encoded,
      idLinked: true,
    );

    await repository.setPushInfo(pushInfo, id: id);

    state = pushInfo;
  }

  Future<void> resetSettings() async {
    final publicKey = await pushService.getPublicKey();
    final payload = encryptCliendId(clientId, publicKey: publicKey);
    await pushService.reset(
      address: account.address,
      accountService: accountService,
      payload: payload,
    );
    await repository.clear();
  }
}
