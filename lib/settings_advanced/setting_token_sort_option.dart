import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/setting_item.dart';
import 'tokens_settings.dart';

class SettingTokenSortOption implements SettingSelectionItem {
  final TokenSortOption settings;
  const SettingTokenSortOption(this.settings);

  String getDisplayName(WidgetRef ref) {
    switch (settings) {
      case TokenSortOption.custom:
        return 'Custom';
      case TokenSortOption.nameAscending:
        return 'Name ascending';
      case TokenSortOption.nameDescending:
        return 'Name descending';
      case TokenSortOption.valueAscending:
        return 'Value ascending';
      case TokenSortOption.valueDescending:
        return 'Value descending';
    }
  }
}
