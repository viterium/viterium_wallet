// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViteNodeConfigSettingsImpl _$$ViteNodeConfigSettingsImplFromJson(Map json) =>
    _$ViteNodeConfigSettingsImpl(
      options: json['options'] == null
          ? const IListConst([mainnetViteNodeConfig, testnetViteNodeConfig])
          : IList<ViteNodeConfig>.fromJson(
              json['options'],
              (value) => ViteNodeConfig.fromJson(
                  Map<String, dynamic>.from(value as Map))),
      selected: json['selected'] == null
          ? mainnetViteNodeConfig
          : ViteNodeConfig.fromJson(
              Map<String, dynamic>.from(json['selected'] as Map)),
    );

Map<String, dynamic> _$$ViteNodeConfigSettingsImplToJson(
        _$ViteNodeConfigSettingsImpl instance) =>
    <String, dynamic>{
      'options': instance.options.toJson(
        (value) => value.toJson(),
      ),
      'selected': instance.selected.toJson(),
    };

_$ViteNodeConfigImpl _$$ViteNodeConfigImplFromJson(Map json) =>
    _$ViteNodeConfigImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      http: json['http'] as String,
      ws: json['ws'] as String,
      network: $enumDecode(_$ViteNetworkEnumMap, json['network']),
    );

Map<String, dynamic> _$$ViteNodeConfigImplToJson(
        _$ViteNodeConfigImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'http': instance.http,
      'ws': instance.ws,
      'network': _$ViteNetworkEnumMap[instance.network]!,
    };

const _$ViteNetworkEnumMap = {
  ViteNetwork.mainnet: 'mainnet',
  ViteNetwork.testnet: 'testnet',
  ViteNetwork.devnet: 'devnet',
};
