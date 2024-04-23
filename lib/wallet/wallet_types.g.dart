// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletInfoImpl _$$WalletInfoImplFromJson(Map json) => _$WalletInfoImpl(
      name: json['name'] as String,
      wid: json['wid'] as String,
      accountsBoxKey: json['accountsBoxKey'] as String,
      accountsEncryptionKey: json['accountsEncryptionKey'] as String,
      accountInfoBoxKey: json['accountInfoBoxKey'] as String,
      accountInfoEncryptionKey: json['accountInfoEncryptionKey'] as String,
      selectionKey: json['selectionKey'] as String,
      publicKey: json['publicKey'] as String,
    );

Map<String, dynamic> _$$WalletInfoImplToJson(_$WalletInfoImpl instance) =>
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

_$WalletBundleImpl _$$WalletBundleImplFromJson(Map json) => _$WalletBundleImpl(
      wallets: json['wallets'] == null
          ? null
          : IList<WalletInfo>.fromJson(
              json['wallets'],
              (value) =>
                  WalletInfo.fromJson(Map<String, dynamic>.from(value as Map))),
      selected: json['selected'] == null
          ? null
          : WalletInfo.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map)),
    );

Map<String, dynamic> _$$WalletBundleImplToJson(_$WalletBundleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'wallets',
      instance.wallets?.toJson(
        (value) => value.toJson(),
      ));
  writeNotNull('selected', instance.selected?.toJson());
  return val;
}
