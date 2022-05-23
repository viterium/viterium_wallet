import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'node_types.freezed.dart';
part 'node_types.g.dart';

enum ViteNetwork {
  mainnet,
  testnet,
  devnet,
}

const mainnetViteNodeConfig = ViteNodeConfig(
  id: '421bbd24-f5b9-43e6-ac2a-4e8a832ca127',
  name: 'Vite Official',
  http: 'https://node.vite.net/gvite',
  ws: 'wss://node.vite.net/gvite/ws',
  network: ViteNetwork.mainnet,
);

const testnetViteNodeConfig = ViteNodeConfig(
  id: '03b9392b-0bb2-4585-96ee-0253a7715837',
  name: 'Vite Testnet',
  http: 'https://buidl.vite.net/gvite',
  ws: 'wss://buidl.vite.net/gvite/ws',
  network: ViteNetwork.testnet,
);

@freezed
class ViteNodeConfigSettings with _$ViteNodeConfigSettings {
  const factory ViteNodeConfigSettings({
    @Default(const IListConst([
      mainnetViteNodeConfig,
      testnetViteNodeConfig,
    ]))
        IList<ViteNodeConfig> options,
    @Default(mainnetViteNodeConfig)
        ViteNodeConfig selected,
  }) = _ViteNodeConfigSettings;

  factory ViteNodeConfigSettings.fromJson(Map<String, dynamic> json) =>
      _$ViteNodeConfigSettingsFromJson(json);
}

@freezed
class ViteNodeConfig with _$ViteNodeConfig {
  const factory ViteNodeConfig({
    required String id,
    required String name,
    required String http,
    required String ws,
    required ViteNetwork network,
  }) = _ViteNodeConfig;

  factory ViteNodeConfig.fromJson(Map<String, dynamic> json) =>
      _$ViteNodeConfigFromJson(json);
}

@freezed
class AddNodeSheetState with _$AddNodeSheetState {
  const factory AddNodeSheetState({
    @Default(true) bool showNameHint,
    @Default(true) bool showHttpHint,
    @Default(true) bool showWsHint,
    @Default('') String nameValidationText,
    @Default('') String httpValidationText,
    @Default('') String wsValidationText,
  }) = _AddNodeSheetState;
}
