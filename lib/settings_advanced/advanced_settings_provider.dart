import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/utils.dart';

import '../app_providers.dart';
import 'advanced_settings.dart';

extension AdvancedSettingsExtension on SettingsRepository {
  AdvancedSettings getAdvancedSettings(String key) {
    return box.tryGet<AdvancedSettings>(
          key,
          typeFactory: AdvancedSettings.fromJson,
        ) ??
        const AdvancedSettings();
  }

  Future<void> setAdvancedSettings(String key, AdvancedSettings settings) =>
      box.set(key, settings);
}

class AdvancedSettingsNotifier extends StateNotifier<AdvancedSettings> {
  final SettingsRepository repository;
  final String key;

  AdvancedSettingsNotifier(this.repository, this.key)
      : super(repository.getAdvancedSettings(key));

  Future<void> _updateSettings(AdvancedSettings settings) async {
    await repository.setAdvancedSettings(key, settings);
    state = settings;
  }

  Future<void> updateDefiEnabled(bool enabled) async {
    final settings = state.copyWith(defiEnabled: enabled);
    return _updateSettings(settings);
  }

  Future<void> updateAutoReceiveEnabled(bool enabled) async {
    final settings = state.copyWith(autoReceiveEnabled: enabled);
    return _updateSettings(settings);
  }

  Future<void> updateShowFiatValue(bool enabled) async {
    final settings = state.copyWith(showFiatValue: enabled);
    return _updateSettings(settings);
  }
}

final _advancedSettingsKeyProvider = Provider((ref) {
  final data = stringToBytesUtf8('advancedSettings#key');
  return digest(data: data, digestSize: 8).hex;
});

final advancedSettingsProvider =
    StateNotifierProvider<AdvancedSettingsNotifier, AdvancedSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final key = ref.watch(_advancedSettingsKeyProvider);
  return AdvancedSettingsNotifier(repository, key);
});

final defiEnabledProvider = Provider((ref) {
  final settings = ref.watch(advancedSettingsProvider);
  return settings.defiEnabled;
});

final autoReceiveEnabledProvider = Provider((ref) {
  final settings = ref.watch(advancedSettingsProvider);
  return settings.autoReceiveEnabled;
});

final showFiatValueProvider = Provider((ref) {
  final settings = ref.watch(advancedSettingsProvider);
  return settings.showFiatValue;
});
