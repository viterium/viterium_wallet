import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'setting_item.dart';

enum UnlockOption { YES, NO }

/// Represent authenticate to open setting
class UnlockSetting extends SettingSelectionItem {
  final UnlockOption setting;

  const UnlockSetting(this.setting);

  String getDisplayName(WidgetRef ref) {
    final localization = ref.read(l10nProvider);
    switch (setting) {
      case UnlockOption.YES:
        return localization.yes;
      case UnlockOption.NO:
        return localization.no;
    }
  }

  // For saving to shared prefs
  String getId() => setting.name;
}
