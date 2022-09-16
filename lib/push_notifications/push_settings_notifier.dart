import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import 'payload_encrypter.dart';
import 'push_info_repository.dart';
import 'push_service.dart';
import 'push_types.dart';

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

  Future<bool> linkId({PushTokenPayload? tokenPayload}) async {
    if (state.idLinked) {
      return false;
    }

    final publicKey = await pushService.getPublicKey();
    final encrypter = PayloadEncrypter(publicKey);
    final idLinkPayload = PushIdLinkPayload(clientId: clientId, id: id);

    final payload = encrypter.encryptIdLinkPayload(
      idLinkPayload,
      tokenPayload: tokenPayload,
    );

    await pushService.linkId(
      address: account.address,
      accountService: accountService,
      payload: payload,
    );

    final pushInfo = state.copyWith(idLinked: true);
    await repository.setPushInfo(pushInfo, id: id);
    state = pushInfo;
    return true;
  }

  Future<bool> setPush({required bool enabled}) async {
    if (state.pushEnabled == enabled) {
      return false;
    }

    final settings = PushSettings(enabled: enabled);
    await pushService.changeSettings(
      address: account.address,
      accountService: accountService,
      settings: settings.encoded,
      id: id,
    );

    final pushInfo = state.copyWith(
      settings: settings.encoded,
    );

    await repository.setPushInfo(pushInfo, id: id);
    state = pushInfo;
    return true;
  }

  Future<void> resetSettings() async {
    final publicKey = await pushService.getPublicKey();
    final encrypter = PayloadEncrypter(publicKey);
    final payload = encrypter.encryptCliendId(clientId);
    await pushService.reset(
      address: account.address,
      accountService: accountService,
      payload: payload,
    );
    await repository.clear();
  }
}
