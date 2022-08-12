import 'dart:convert';
import 'dart:typed_data';

import 'package:crypton/crypton.dart';
import 'package:vite/vite.dart';

import 'push_types.dart';

class PayloadEncrypter {
  RSAPublicKey _publicKey;
  PayloadEncrypter(String publicKey)
      : _publicKey = RSAPublicKey.fromString(publicKey);

  String encryptTokenPayload(PushTokenPayload tokenPayload) {
    final message = json.encode(tokenPayload.toJson());
    final payload = _publicKey.encrypt(message);
    return payload;
  }

  Uint8List encryptPushSettingsPayload(PushIdLinkPayload settingsPayload) {
    final payload = _publicKey.encryptData(settingsPayload.encodeed);
    return payload;
  }

  Uint8List encryptCliendId(Hash clientId) {
    final payload = _publicKey.encryptData(clientId.bytes);
    return payload;
  }
}
