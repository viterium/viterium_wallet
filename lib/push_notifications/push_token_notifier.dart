import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/random_util.dart';
import 'push_service.dart';
import 'push_types.dart';
import 'push_util.dart';

const _kPushSettingsPushTokenSettings = '_kPushSettingsPushTokenSettings';

Hash _generateClientId() =>
    Hash.dataToHash(hexToBytes(RandomUtil.generateKey()));

extension PushSettings on SettingsRepository {
  PushTokenSettings getTokenSettings() {
    final cached = box.tryGet(
      _kPushSettingsPushTokenSettings,
      typeFactory: PushTokenSettings.fromJson,
    );
    if (cached != null) {
      return cached;
    }
    final payload = PushTokenPayload(clientId: _generateClientId(), token: '');
    final settings = PushTokenSettings(payload: payload, published: true);
    box.set(_kPushSettingsPushTokenSettings, settings);
    return settings;
  }

  Future<void> setTokenSettings(PushTokenSettings settings) =>
      box.set(_kPushSettingsPushTokenSettings, settings);

  // Future<void> clearTokenSettings() =>
  //     box.remove(_kPushSettingsPushTokenSettings);
}

class PushTokenSettingsNotifier extends StateNotifier<PushTokenSettings> {
  final SettingsRepository repository;

  PushTokenSettingsNotifier({
    required this.repository,
  }) : super(repository.getTokenSettings());

  Future<void> updateToken(String token) async {
    if (state.payload.token == token) {
      return;
    }
    final settings = state.copyWith(
      payload: state.payload.copyWith(token: token),
      published: false,
    );
    await repository.setTokenSettings(settings);

    state = settings;
  }

  Future<void> publishToken({
    required Address address,
    required AccountService accountService,
    required PushService service,
  }) async {
    if (state.published) {
      return;
    }

    final publicKey = await service.getPublicKey();
    final payload = encryptPushTokenPayload(
      state.payload,
      publicKey: publicKey,
    );
    await service.updateToken(
      address: address,
      accountService: accountService,
      payload: payload,
    );

    final settings = state.copyWith(published: true);
    await repository.setTokenSettings(settings);

    state = settings;
  }

  Future<void> resetTokenSettings() async {
    final clientId = _generateClientId();
    final tokenSettings = state.copyWith(
      published: false,
      payload: state.payload.copyWith(clientId: clientId),
    );
    await repository.setTokenSettings(tokenSettings);
    state = tokenSettings;
  }

  Future<void> resetTokenPublished() async {
    // Only allowed in debug mode
    if (!kDebugMode) return;
    final tokenSettings = state.copyWith(published: false);
    await repository.setTokenSettings(tokenSettings);
    state = tokenSettings;
  }
}
