import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Models that are used in settings dialogs/dropdowns
abstract class SettingSelectionItem {
  const SettingSelectionItem();
  String getDisplayName(WidgetRef ref);
}