import 'package:freezed_annotation/freezed_annotation.dart';

import '../node_settings/node_types.dart';
import 'block_explorers.dart';

part 'block_explorer_settings.freezed.dart';
part 'block_explorer_settings.g.dart';

@freezed
class BlockExplorerSettings with _$BlockExplorerSettings {
  const BlockExplorerSettings._();
  const factory BlockExplorerSettings({
    @Default(const {
      ViteNetwork.mainnet: kVitcScanMainnet,
      ViteNetwork.testnet: kVitcScanTestnet,
      ViteNetwork.devnet: kVitcScanDebug,
    })
        Map<ViteNetwork, BlockExplorer> selection,
  }) = _BlockExplorerSettings;

  BlockExplorer explorerForNetwork(ViteNetwork network) {
    return selection[network] ?? kVitcScanMainnet;
  }

  factory BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerSettingsFromJson(json);
}
