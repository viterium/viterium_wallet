import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'setting_item.dart';

enum LockTimeoutOption { ZERO, ONE, FIVE, FIFTEEN, THIRTY, SIXTY }

/// Represent auto-lock delay when requiring auth to open
class LockTimeoutSetting extends SettingSelectionItem {
  final LockTimeoutOption setting;

  const LockTimeoutSetting(this.setting);

  String getDisplayName(WidgetRef ref) {
    final localization = ref.read(l10nProvider);
    switch (setting) {
      case LockTimeoutOption.ZERO:
        return localization.instantly;
      case LockTimeoutOption.ONE:
        return localization.xMinute.replaceAll("%1", "1");
      case LockTimeoutOption.FIVE:
        return localization.xMinutes.replaceAll("%1", "5");
      case LockTimeoutOption.FIFTEEN:
        return localization.xMinutes.replaceAll("%1", "15");
      case LockTimeoutOption.THIRTY:
        return localization.xMinutes.replaceAll("%1", "30");
      case LockTimeoutOption.SIXTY:
        return localization.xMinutes.replaceAll("%1", "60");
    }
  }

  Duration getDuration() {
    switch (setting) {
      case LockTimeoutOption.ZERO:
        return Duration(seconds: 1);
      case LockTimeoutOption.ONE:
        return Duration(minutes: 1);
      case LockTimeoutOption.FIVE:
        return Duration(minutes: 5);
      case LockTimeoutOption.FIFTEEN:
        return Duration(minutes: 15);
      case LockTimeoutOption.THIRTY:
        return Duration(minutes: 30);
      case LockTimeoutOption.SIXTY:
        return Duration(hours: 1);
    }
  }

  // For saving to shared prefs
  String getId() => setting.name;
}
