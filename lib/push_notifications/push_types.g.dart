// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushTokenPayloadImpl _$$PushTokenPayloadImplFromJson(Map json) =>
    _$PushTokenPayloadImpl(
      clientId: Hash.fromJson(json['clientId'] as String),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$PushTokenPayloadImplToJson(
        _$PushTokenPayloadImpl instance) =>
    <String, dynamic>{
      'clientId': instance.clientId.toJson(),
      'token': instance.token,
    };

_$PushTokenSettingsImpl _$$PushTokenSettingsImplFromJson(Map json) =>
    _$PushTokenSettingsImpl(
      payload: PushTokenPayload.fromJson(
          Map<String, dynamic>.from(json['payload'] as Map)),
      published: json['published'] as bool? ?? false,
    );

Map<String, dynamic> _$$PushTokenSettingsImplToJson(
        _$PushTokenSettingsImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload.toJson(),
      'published': instance.published,
    };

_$PushInfoImpl _$$PushInfoImplFromJson(Map json) => _$PushInfoImpl(
      walletId: json['walletId'] as String,
      index: json['index'] as int,
      settings: BigInt.parse(json['settings'] as String),
      idLinked: json['idLinked'] as bool? ?? false,
      network: $enumDecodeNullable(_$ViteNetworkEnumMap, json['network']) ??
          ViteNetwork.mainnet,
    );

Map<String, dynamic> _$$PushInfoImplToJson(_$PushInfoImpl instance) =>
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
