// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletInfo _$$_WalletInfoFromJson(Map json) => _$_WalletInfo(
      name: json['name'] as String,
      wid: json['wid'] as String,
      accountsBoxKey: json['accountsBoxKey'] as String,
      accountsEncryptionKey: json['accountsEncryptionKey'] as String,
      accountInfoBoxKey: json['accountInfoBoxKey'] as String,
      accountInfoEncryptionKey: json['accountInfoEncryptionKey'] as String,
      selectionKey: json['selectionKey'] as String,
      publicKey: json['publicKey'] as String,
    );

Map<String, dynamic> _$$_WalletInfoToJson(_$_WalletInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'wid': instance.wid,
      'accountsBoxKey': instance.accountsBoxKey,
      'accountsEncryptionKey': instance.accountsEncryptionKey,
      'accountInfoBoxKey': instance.accountInfoBoxKey,
      'accountInfoEncryptionKey': instance.accountInfoEncryptionKey,
      'selectionKey': instance.selectionKey,
      'publicKey': instance.publicKey,
    };

_$_WalletBundle _$$_WalletBundleFromJson(Map json) => _$_WalletBundle(
      wallets: json['wallets'] == null
          ? const IListConst<WalletInfo>([])
          : IList<WalletInfo>.fromJson(
              json['wallets'],
              (value) =>
                  WalletInfo.fromJson(Map<String, dynamic>.from(value as Map))),
      selected: json['selected'] == null
          ? null
          : WalletInfo.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map)),
    );

Map<String, dynamic> _$$_WalletBundleToJson(_$_WalletBundle instance) {
  final val = <String, dynamic>{
    'wallets': instance.wallets.toJson(
      (value) => value.toJson(),
    ),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('selected', instance.selected?.toJson());
  return val;
}
