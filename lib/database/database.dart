import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:vite/vite.dart' hide TypeFactory;

import '../accounts/account.dart';
import '../contacts/contact.dart';
import '../core/vault.dart';
import '../tokens/token_types.dart';
import '../util/random_util.dart';
import 'boxes.dart';
import 'json_type_adapter.dart';

typedef BoxKey = String;

late final BoxKey kContactsBox;
late final BoxKey kTokenInfoBox;
late final BoxKey kTokenIconBox;
late final BoxKey kSettingsBox;

int _getTypeId<T>() {
  switch (T) {
    case Account:
      return 0;
    case AccountInfo:
      return 1;
    case Contact:
      return 2;
    case TokenInfo:
      return 3;
    case CachedTokenIcon:
      return 4;
  }
  throw 'Unknown type $T';
}

final accountAdapter = JsonTypeAdapter(
  typeId: _getTypeId<Account>(),
  fromJson: Account.fromJson,
);
final accountInfoAdapter = JsonTypeAdapter(
  typeId: _getTypeId<AccountInfo>(),
  fromJson: AccountInfo.fromJson,
);
final contactAdapter = JsonTypeAdapter(
  typeId: _getTypeId<Contact>(),
  fromJson: Contact.fromJson,
);
final tokenInfoAdapter = JsonTypeAdapter(
  typeId: _getTypeId<TokenInfo>(),
  fromJson: TokenInfo.fromJson,
);
final cachedTokenIconAdapter = JsonTypeAdapter(
  typeId: _getTypeId<CachedTokenIcon>(),
  fromJson: CachedTokenIcon.fromJson,
);

class Database {
  const Database();

  static Future<HiveCipher> _getBoxCipher(BoxKey boxKey, Vault vault) async {
    var secureKey = await vault.get(boxKey);
    if (secureKey == null) {
      secureKey = Database.generateSecureKey();
      vault.set(boxKey, secureKey);
    }
    return HiveAesCipher(base64Decode(secureKey));
  }

  static Future<void> init() async {
    await Hive.initFlutter('viterium_wallet');

    final vault = Vault();
    const key = 'aa721440b4f52bca';
    var secureKey = await vault.get(key);
    if (secureKey == null) {
      secureKey = RandomUtil.generateKey();
      await vault.set(key, secureKey);
    }

    const kContactsBoxId = '_contactsBox';
    const kTokenInfoBoxId = '_tokenInfoBox';
    const kTokenIconBoxId = '_tokenIconBox';
    const kSettingsBoxId = '_settingsBox';

    kContactsBox =
        digest(data: stringToBytesUtf8('$kContactsBoxId#$secureKey')).hex;
    kTokenInfoBox =
        digest(data: stringToBytesUtf8('$kTokenInfoBoxId#$secureKey')).hex;
    kTokenIconBox =
        digest(data: stringToBytesUtf8('$kTokenIconBoxId#$secureKey')).hex;
    kSettingsBox =
        digest(data: stringToBytesUtf8('$kSettingsBoxId#$secureKey')).hex;

    Hive.registerAdapter(accountAdapter);
    Hive.registerAdapter(accountInfoAdapter);
    Hive.registerAdapter(contactAdapter);
    Hive.registerAdapter(tokenInfoAdapter);
    Hive.registerAdapter(cachedTokenIconAdapter);

    await Future.wait([
      // typed boxes
      Hive.openBox<Contact>(
        kContactsBox,
        encryptionCipher: await _getBoxCipher(kContactsBox, vault),
      ),
      Hive.openBox<TokenInfo>(kTokenInfoBox),
      Hive.openBox<CachedTokenIcon>(kTokenIconBox),
      // generic boxes
      Hive.openBox(
        kSettingsBox,
        encryptionCipher: await _getBoxCipher(kSettingsBox, vault),
      ),
    ]);
  }

  static Future<void> openBox<T>(
    String boxKey, {
    bool lazy = false,
    String? encryptionKey,
  }) async {
    HiveCipher? chipher = null;
    if (encryptionKey != null) {
      chipher = HiveAesCipher(base64Decode(encryptionKey));
    }
    if (lazy) {
      await Hive.openLazyBox<T>(boxKey, encryptionCipher: chipher);
    } else {
      await Hive.openBox<T>(boxKey, encryptionCipher: chipher);
    }
  }

  static Future<void> closeBox<T>(String boxKey) async {
    if (Hive.isBoxOpen(boxKey)) {
      final box = Hive.box<T>(boxKey);
      await box.close();
    }
  }

  static Future<void> closeAll() => Hive.close();

  static String generateSecureKey() => base64Encode(Hive.generateSecureKey());

  static Future<void> removeBox(String boxKey) =>
      Hive.deleteBoxFromDisk(boxKey);

  TypedBox<T> getTypedBox<T>(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.box<T>(boxKey);
    return TypedBox(box);
  }

  LazyTypedBox<T> getLazyTypedBox<T>(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.lazyBox<T>(boxKey);
    return LazyTypedBox(box);
  }

  GenericBox getGenericBox(BoxKey boxKey, {TypeFactory? typeFactory}) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.box(boxKey);
    return GenericBox(box);
  }

  LazyGenericBox getLazyGenericBox(BoxKey, {TypeFactory? typeFactory}) {
    assert(Hive.isBoxOpen(BoxKey));
    final box = Hive.lazyBox(BoxKey);
    return LazyGenericBox(box, typeFactory: typeFactory);
  }
}
