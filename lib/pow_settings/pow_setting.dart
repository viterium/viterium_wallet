import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/setting_item.dart';
import 'pow_types.dart';

class PowSetting extends SettingSelectionItem {
  final PowConfig powConfig;
  PowSetting(this.powConfig);

  @override
  String getDisplayName(WidgetRef ref) {
    return powConfig.name;
  }
}
