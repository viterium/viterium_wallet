import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/settings_providers.dart';
import 'pow_settings_notifier.dart';
import 'pow_types.dart';

final powSettingsProvider =
    StateNotifierProvider<PowSettingsNotifier, PowConfigSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final notifier = PowSettingsNotifier(repository);
  return notifier;
});

final powOptionsProvider = Provider((ref) {
  final settings = ref.watch(powSettingsProvider);
  return settings.options;
});

final powConfigProvider = Provider((ref) {
  final settings = ref.watch(powSettingsProvider);
  return settings.selected;
});
