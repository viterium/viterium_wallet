import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/settings_providers.dart';
import 'pow_types.dart';

const _kPowConfigSettingsKey = '_powConfigSettingsKey';

extension PowSettings on SettingsRepository {
  PowConfigSettings getPowConfigSettings() {
    return box.tryGet<PowConfigSettings>(
          _kPowConfigSettingsKey,
          typeFactory: <T>(value) => PowConfigSettings.fromJson(value) as T,
        ) ??
        const PowConfigSettings();
  }

  Future<void> setPowConfigSettings(PowConfigSettings settings) {
    return box.set(_kPowConfigSettingsKey, settings);
  }
}

class PowSettingsNotifier extends StateNotifier<PowConfigSettings> {
  final SettingsRepository repository;

  PowSettingsNotifier(this.repository)
      : super(repository.getPowConfigSettings());

  Future<void> updateSelected(PowConfig config) {
    state = state.copyWith(selected: config);
    return repository.setPowConfigSettings(state);
  }

  Future<void> updateOptions(
    IList<PowConfig> options, {
    PowConfig? selected,
  }) {
    state = state.copyWith(
      options: options,
      selected: selected ?? state.selected,
    );
    return repository.setPowConfigSettings(state);
  }

  Future<bool> addConfig(PowConfig config) async {
    if (state.options.contains(config)) {
      return false;
    }
    final options = state.options.add(config);
    await updateOptions(options);

    return true;
  }

  Future<bool> removeConfig(PowConfig config) async {
    if (config == state.selected) {
      return false;
    }
    final options = state.options.remove(config);
    await updateOptions(options);
    return true;
  }
}
