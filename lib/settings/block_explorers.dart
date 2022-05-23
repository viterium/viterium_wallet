import 'package:freezed_annotation/freezed_annotation.dart';

import '../node_settings/node_types.dart';

part 'block_explorers.freezed.dart';
part 'block_explorers.g.dart';

const kParamPattern = '{0}';

const kBlockExplorerOptions = {
  ViteNetwork.mainnet: [
    kVitcScanMainnet,
    kViteScanMainnet,
    kViteViewMainnet,
  ],
  ViteNetwork.testnet: [
    kVitcScanTestnet,
    kViteScanTestnet,
    kViteViewTestnet,
  ],
  ViteNetwork.devnet: [
    kVitcScanDebug,
  ]
};

@freezed
class BlockExplorer with _$BlockExplorer {
  const BlockExplorer._();
  const factory BlockExplorer({
    required ViteNetwork network,
    required String name,
    required String url,
    required String addressUrl,
    required String tokenIdUrl,
    required String txUrl,
  }) = _BlockExplorer;

  String urlForAddress(String address) =>
      addressUrl.replaceFirst(kParamPattern, address);

  String urlForTx(String hash) => txUrl.replaceFirst(kParamPattern, hash);

  String urlForTokenId(String tokenId) =>
      tokenIdUrl.replaceFirst(kParamPattern, tokenId);

  factory BlockExplorer.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerFromJson(json);
}

const kViteScanMainnet = BlockExplorer(
  network: ViteNetwork.mainnet,
  name: 'ViteScan',
  url: 'vitescan.io',
  addressUrl: 'https://vitescan.io/address/$kParamPattern',
  tokenIdUrl: 'https://vitescan.io/token/$kParamPattern',
  txUrl: 'https://vitescan.io/tx/$kParamPattern',
);

const kViteScanTestnet = BlockExplorer(
  network: ViteNetwork.testnet,
  name: 'ViteScan',
  url: 'test.vitescan.io',
  addressUrl: 'https://test.vitescan.io/address/$kParamPattern',
  tokenIdUrl: 'https://test.vitescan.io/token/$kParamPattern',
  txUrl: 'https://test.vitescan.io/tx/$kParamPattern',
);

const kVitcScanMainnet = BlockExplorer(
  network: ViteNetwork.mainnet,
  name: 'VITCScan',
  url: 'vitcscan.com',
  addressUrl: 'https://vitcscan.com/address/$kParamPattern',
  tokenIdUrl: 'https://vitcscan.com/token/$kParamPattern',
  txUrl: 'https://vitcscan.com/tx/$kParamPattern',
);

const kVitcScanTestnet = BlockExplorer(
  network: ViteNetwork.testnet,
  name: 'VITCScan',
  url: 'testnet.vitcscan.com',
  addressUrl: 'https://testnet.vitcscan.com/address/$kParamPattern',
  tokenIdUrl: 'https://testnet.vitcscan.com/token/$kParamPattern',
  txUrl: 'https://testnet.vitcscan.com/tx/$kParamPattern',
);

const kVitcScanDebug = BlockExplorer(
  network: ViteNetwork.devnet,
  name: 'VITCScan',
  url: 'debug.vitcscan.com',
  addressUrl: 'https://debug.vitcscan.com/address/$kParamPattern',
  tokenIdUrl: 'https://debug.vitcscan.com/token/$kParamPattern',
  txUrl: 'https://debug.vitcscan.com/tx/$kParamPattern',
);

const kViteViewMainnet = BlockExplorer(
  network: ViteNetwork.mainnet,
  name: 'ViteExplorer',
  url: 'viteview.xyz',
  addressUrl: 'https://mainnet.viteview.xyz/#/account/$kParamPattern',
  tokenIdUrl: 'https://mainnet.viteview.xyz/#/token/$kParamPattern',
  txUrl: 'https://mainnet.viteview.xyz/#/tx/$kParamPattern',
);

const kViteViewTestnet = BlockExplorer(
  network: ViteNetwork.testnet,
  name: 'ViteExplorer',
  url: 'buidl.viteview.xyz',
  addressUrl: 'https://buidl.viteview.xyz/#/account/$kParamPattern',
  tokenIdUrl: 'https://buidl.viteview.xyz/#/token/$kParamPattern',
  txUrl: 'https://buidl.viteview.xyz/#/tx/$kParamPattern',
);
