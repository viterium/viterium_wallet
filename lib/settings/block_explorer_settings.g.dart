// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_explorer_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockExplorerSettings _$$_BlockExplorerSettingsFromJson(Map json) =>
    _$_BlockExplorerSettings(
      selection: (json['selection'] as Map?)?.map(
            (k, e) => MapEntry($enumDecode(_$ViteNetworkEnumMap, k),
                BlockExplorer.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {
            ViteNetwork.mainnet: kVitcScanMainnet,
            ViteNetwork.testnet: kVitcScanTestnet,
            ViteNetwork.devnet: kVitcScanDebug
          },
    );

Map<String, dynamic> _$$_BlockExplorerSettingsToJson(
        _$_BlockExplorerSettings instance) =>
    <String, dynamic>{
      'selection': instance.selection
          .map((k, e) => MapEntry(_$ViteNetworkEnumMap[k]!, e.toJson())),
    };

const _$ViteNetworkEnumMap = {
  ViteNetwork.mainnet: 'mainnet',
  ViteNetwork.testnet: 'testnet',
  ViteNetwork.devnet: 'devnet',
};
