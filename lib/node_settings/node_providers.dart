import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/settings_providers.dart';
import 'node_types.dart';

const _kViteNodeConfigKey = '_viteNodeConfigKey';

extension ViteNodeSettingsExtension on SettingsRepository {
  ViteNodeConfigSettings getViteNodeConfigSettings() {
    return box.tryGet<ViteNodeConfigSettings>(
          _kViteNodeConfigKey,
          typeFactory: <T>(value) =>
              ViteNodeConfigSettings.fromJson(value) as T,
        ) ??
        const ViteNodeConfigSettings();
  }

  Future<void> setViteNodeConfigSettings(ViteNodeConfigSettings settings) {
    return box.set(_kViteNodeConfigKey, settings);
  }
}

class ViteNodeSettingsNotifier extends StateNotifier<ViteNodeConfigSettings> {
  final SettingsRepository repository;

  ViteNodeSettingsNotifier(this.repository)
      : super(repository.getViteNodeConfigSettings());

  Future<void> updateSelected(ViteNodeConfig config) {
    state = state.copyWith(selected: config);
    return repository.setViteNodeConfigSettings(state);
  }

  Future<void> updateOptions(IList<ViteNodeConfig> options) {
    state = state.copyWith(
      options: options,
    );
    return repository.setViteNodeConfigSettings(state);
  }

  Future<bool> addOption(ViteNodeConfig config) async {
    if (state.options.contains(config)) {
      return false;
    }
    final options = state.options.add(config);
    await updateOptions(options);
    return true;
  }

  Future<bool> removeOption(ViteNodeConfig config) async {
    if (config == state.selected) {
      return false;
    }
    final options = state.options.remove(config);
    await updateOptions(options);
    return true;
  }
}

final viteNodeSettingsProvider =
    StateNotifierProvider<ViteNodeSettingsNotifier, ViteNodeConfigSettings>(
        (ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final notifier = ViteNodeSettingsNotifier(repository);
  return notifier;
});

final viteNodeOptionsProvider = Provider((ref) {
  final settings = ref.watch(viteNodeSettingsProvider);
  return settings.options;
});

final viteNodeConfigProvider = Provider((ref) {
  final settings = ref.watch(viteNodeSettingsProvider);
  return settings.selected;
});
