// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PushTokenPayload _$$_PushTokenPayloadFromJson(Map json) =>
    _$_PushTokenPayload(
      clientId: Hash.fromJson(json['clientId'] as String),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_PushTokenPayloadToJson(_$_PushTokenPayload instance) =>
    <String, dynamic>{
      'clientId': instance.clientId.toJson(),
      'token': instance.token,
    };

_$_PushTokenSettings _$$_PushTokenSettingsFromJson(Map json) =>
    _$_PushTokenSettings(
      payload: PushTokenPayload.fromJson(
          Map<String, dynamic>.from(json['payload'] as Map)),
      published: json['published'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PushTokenSettingsToJson(
        _$_PushTokenSettings instance) =>
    <String, dynamic>{
      'payload': instance.payload.toJson(),
      'published': instance.published,
    };

_$_PushInfo _$$_PushInfoFromJson(Map json) => _$_PushInfo(
      walletId: json['walletId'] as String,
      index: json['index'] as int,
      settings: BigInt.parse(json['settings'] as String),
      idLinked: json['idLinked'] as bool? ?? false,
      network: $enumDecodeNullable(_$ViteNetworkEnumMap, json['network']) ??
          ViteNetwork.mainnet,
    );

Map<String, dynamic> _$$_PushInfoToJson(_$_PushInfo instance) =>
    <String, dynamic>{
      'walletId': instance.walletId,
      'index': instance.index,
      'settings': instance.settings.toString(),
      'idLinked': instance.idLinked,
      'network': _$ViteNetworkEnumMap[instance.network]!,
    };

const _$ViteNetworkEnumMap = {
  ViteNetwork.mainnet: 'mainnet',
  ViteNetwork.testnet: 'testnet',
  ViteNetwork.devnet: 'devnet',
};
