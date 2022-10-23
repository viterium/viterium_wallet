// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_explorers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockExplorer _$$_BlockExplorerFromJson(Map json) => _$_BlockExplorer(
      network: $enumDecode(_$ViteNetworkEnumMap, json['network']),
      name: json['name'] as String,
      url: json['url'] as String,
      addressUrl: json['addressUrl'] as String,
      tokenIdUrl: json['tokenIdUrl'] as String,
      txUrl: json['txUrl'] as String,
    );

Map<String, dynamic> _$$_BlockExplorerToJson(_$_BlockExplorer instance) =>
    <String, dynamic>{
      'network': _$ViteNetworkEnumMap[instance.network]!,
      'name': instance.name,
      'url': instance.url,
      'addressUrl': instance.addressUrl,
      'tokenIdUrl': instance.tokenIdUrl,
      'txUrl': instance.txUrl,
    };

const _$ViteNetworkEnumMap = {
  ViteNetwork.mainnet: 'mainnet',
  ViteNetwork.testnet: 'testnet',
  ViteNetwork.devnet: 'devnet',
};
