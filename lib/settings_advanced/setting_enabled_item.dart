import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/setting_item.dart';

class SettingEnabledItem implements SettingSelectionItem {
  final bool enabled;
  const SettingEnabledItem(this.enabled);

  String getDisplayName(WidgetRef ref) {
    return enabled ? 'Enabled' : 'Disabled';
  }
}
