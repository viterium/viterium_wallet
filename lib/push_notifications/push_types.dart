import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

import '../node_settings/node_types.dart';

part 'push_types.freezed.dart';
part 'push_types.g.dart';

@freezed
class PushTokenPayload with _$PushTokenPayload {
  const factory PushTokenPayload({
    required Hash clientId,
    required String token,
  }) = _PushTokenPayload;

  factory PushTokenPayload.fromJson(Map<String, dynamic> json) =>
      _$PushTokenPayloadFromJson(json);
}

@freezed
class PushTokenSettings with _$PushTokenSettings {
  const factory PushTokenSettings({
    required PushTokenPayload payload,
    @Default(false) bool published,
  }) = _PushTokenSettings;

  factory PushTokenSettings.fromJson(Map<String, dynamic> json) =>
      _$PushTokenSettingsFromJson(json);
}

@freezed
class PushIdLinkPayload with _$PushIdLinkPayload {
  const PushIdLinkPayload._();
  const factory PushIdLinkPayload({
    required Hash clientId,
    required Hash id,
  }) = _PushIdLinkPayload;

  factory PushIdLinkPayload.decode(Uint8List data) {
    assert(data.lengthInBytes == kHashSize * 2);

    final clientId = Hash(data.sublist(0, kHashSize));
    final id = Hash(data.sublist(kHashSize));
    return PushIdLinkPayload(clientId: clientId, id: id);
  }

  Uint8List get encodeed => Uint8List.fromList(clientId.bytes + id.bytes);
}

@freezed
class PushInfo with _$PushInfo {
  PushInfo._();
  factory PushInfo({
    required String walletId,
    required int index,
    required BigInt settings,
    @Default(false) bool idLinked,
    @Default(ViteNetwork.mainnet) ViteNetwork network,
  }) = _PushInfo;

  late final pushSettings = PushSettings.decode(settings);
  bool get pushEnabled => pushSettings.enabled;

  factory PushInfo.fromJson(Map<String, dynamic> json) =>
      _$PushInfoFromJson(json);
}

@freezed
class PushSettings with _$PushSettings {
  const PushSettings._();
  const factory PushSettings({
    @Default(false) bool enabled,
  }) = _PushSettings;

  factory PushSettings.decode(BigInt settings) {
    final enabled = settings != BigInt.zero;
    return PushSettings(enabled: enabled);
  }

  BigInt get encoded => enabled ? BigInt.one : BigInt.zero;
}
