import 'dart:convert';
import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:vite/vite.dart' hide TypeFactory;

import '../accounts/account.dart';
import '../contacts/contact.dart';
import '../core/vault.dart';
import '../push_notifications/push_types.dart';
import '../tokens/token_types.dart';
import '../vitex/vitex_types.dart';
import 'boxes.dart';
import 'json_type_adapter.dart';

typedef BoxKey = String;

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
    case PushInfo:
      return 5;
    case ExchangeRate:
      return 6;
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
final pushInfoAdapter = JsonTypeAdapter(
  typeId: _getTypeId<PushInfo>(),
  fromJson: PushInfo.fromJson,
);

final exchangeRateAdapter = JsonTypeAdapter(
  typeId: _getTypeId<ExchangeRate>(),
  fromJson: ExchangeRate.fromJson,
);

class Database {
  Database._();

  static late Database _instance;
  factory Database() => _instance;

  static bool _isInitialized = false;
  static Future<void> _initHive() async {
    await Hive.initFlutter('viterium_wallet');

    Hive.registerAdapter(accountAdapter);
    Hive.registerAdapter(accountInfoAdapter);
    Hive.registerAdapter(contactAdapter);
    Hive.registerAdapter(tokenInfoAdapter);
    Hive.registerAdapter(cachedTokenIconAdapter);
    Hive.registerAdapter(pushInfoAdapter);
    Hive.registerAdapter(exchangeRateAdapter);
  }

  static Future<void> init() async {
    if (_isInitialized) return;
    await _initHive();
    _instance = Database._();
    await _instance._init();
    _isInitialized = true;
  }

  static Future<Database> reset() async {
    await closeBox<TokenInfo>(_instance.tokenInfoBoxTestnet);
    await closeBox<TokenInfo>(_instance.tokenInfoBoxDevnet);
    await Hive.deleteFromDisk();

    _instance = Database._();
    await _instance._init();
    return _instance;
  }

  late final BoxKey contactsBox;
  late final BoxKey tokenInfoBoxMainnet;
  final BoxKey tokenInfoBoxTestnet = 'tokenInfoBoxTestnet';
  final BoxKey tokenInfoBoxDevnet = 'tokenInfoBoxDevnet';
  late final BoxKey tokenIconBox;
  late final BoxKey pushInfoBox;
  late final BoxKey settingsBox;
  late final BoxKey exchangeRateBox;
  late final BoxKey cacheBox;

  static Future<HiveCipher> _getBoxCipher(BoxKey boxKey, Vault vault) async {
    var secureKey = await vault.get(boxKey);
    if (secureKey == null) {
      secureKey = Database.generateSecureKey();
      vault.set(boxKey, secureKey);
    }
    return HiveAesCipher(base64Decode(secureKey));
  }

  Future<void> _init() async {
    await Hive.initFlutter('viterium_wallet');

    const kContactsBoxId = '_contactsBox';
    const kTokenInfoBoxId = '_tokenInfoBox';
    const kTokenIconBoxId = '_tokenIconBox';
    const kSettingsBoxId = '_settingsBox';
    const kPushInfoBoxId = '_pushInfoBox';
    const kExchangeRateBoxId = '_exchangeRateBox';
    const kCacheBoxId = '_cacheBox';

    final vault = Vault();
    final dbKey = await vault.getDbKey();

    contactsBox = digest(data: stringToBytesUtf8('$kContactsBoxId#$dbKey')).hex;
    tokenInfoBoxMainnet = digest(
        data: stringToBytesUtf8(
      '$kTokenInfoBoxId#mainnet#$dbKey',
    )).hex;
    tokenIconBox =
        digest(data: stringToBytesUtf8('$kTokenIconBoxId#$dbKey')).hex;
    settingsBox = digest(data: stringToBytesUtf8('$kSettingsBoxId#$dbKey')).hex;
    pushInfoBox = digest(data: stringToBytesUtf8('$kPushInfoBoxId#$dbKey')).hex;
    exchangeRateBox =
        digest(data: stringToBytesUtf8('$kExchangeRateBoxId#$dbKey')).hex;
    cacheBox = digest(data: stringToBytesUtf8('$kCacheBoxId#$dbKey')).hex;

    Future<Box> _openBox<T>(String box, {bool encrypted = false}) async {
      return Hive.openBox<T>(
        box,
        encryptionCipher: encrypted ? await _getBoxCipher(box, vault) : null,
      );
    }

    Future<LazyBox> _openLazyBox<T>(
      String box, {
      bool encrypted = false,
    }) async {
      return Hive.openLazyBox<T>(
        box,
        encryptionCipher: encrypted ? await _getBoxCipher(box, vault) : null,
      );
    }

    await Future.wait([
      // typed boxes
      _openBox<Contact>(contactsBox, encrypted: true),
      _openBox<TokenInfo>(tokenInfoBoxMainnet),
      Hive.openBox<TokenInfo>(tokenInfoBoxTestnet, bytes: Uint8List(0)),
      Hive.openBox<TokenInfo>(tokenInfoBoxDevnet, bytes: Uint8List(0)),
      _openBox<CachedTokenIcon>(tokenIconBox),
      _openBox<PushInfo>(pushInfoBox, encrypted: true),
      _openBox<ExchangeRate>(exchangeRateBox),
      // generic boxes
      _openBox(settingsBox, encrypted: true),
      // lazy generic boxes
      _openLazyBox(cacheBox, encrypted: true),
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

  GenericBox getGenericBox(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.box(boxKey);
    return GenericBox(box);
  }

  LazyGenericBox getLazyGenericBox(BoxKey boxKey) {
    assert(Hive.isBoxOpen(boxKey));
    final box = Hive.lazyBox(boxKey);
    return LazyGenericBox(box);
  }
}
