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

  Uint8List encryptIdLinkPayload(
    PushIdLinkPayload idLinkPayload, {
    PushTokenPayload? tokenPayload,
  }) {
    if (tokenPayload != null) {
      return encryptPushPayloads(
        tokenPayload: tokenPayload,
        idLinkPayload: idLinkPayload,
      );
    }
    final payload = _publicKey.encryptData(idLinkPayload.encodeed);
    return payload;
  }

  Uint8List encryptCliendId(Hash clientId) {
    final payload = _publicKey.encryptData(clientId.bytes);
    return payload;
  }

  Uint8List encryptPushPayloads({
    required PushTokenPayload tokenPayload,
    required PushIdLinkPayload idLinkPayload,
  }) {
    final idLink = idLinkPayload.encodeed;
    final token = stringToBytesUtf8(tokenPayload.token);
    final payload = _publicKey.encryptData(Uint8List.fromList(idLink + token));
    return payload;
  }
}
