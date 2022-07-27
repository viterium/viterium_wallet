import 'dart:convert';
import 'dart:typed_data';

import 'package:crypton/crypton.dart';
import 'package:vite/vite.dart';

import 'push_types.dart';

String encryptPushTokenPayload(
  PushTokenPayload tokenPayload, {
  required String publicKey,
}) {
  final pubKey = RSAPublicKey.fromString(publicKey);
  final message = json.encode(tokenPayload.toJson());
  // FIXME
  print('JsonPayload: $message');
  final payload = pubKey.encrypt(message);
  print('Encrypted token payload size ${payload.length}');

  return payload;
}

Uint8List encryptPushSettingsPayload(
  PushSettingsPayload settingsPayload, {
  required String publicKey,
}) {
  final pubKey = RSAPublicKey.fromString(publicKey);
  final payload = pubKey.encryptData(settingsPayload.encodeed);
  // FIXME
  print('Encrypted settings payload size ${payload.lengthInBytes}');

  return payload;
}

Uint8List encryptCliendId(Hash clientId, {required String publicKey}) {
  final pubKey = RSAPublicKey.fromString(publicKey);
  final payload = pubKey.encryptData(clientId.bytes);
  // FIXME
  print('Encrypted clientId siez ${payload.lengthInBytes}');

  return payload;
}
