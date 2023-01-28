import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../widgets/app_icon_button.dart';

class SettingsButton extends ConsumerWidget {
  const SettingsButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = ref.watch(homePageScaffoldKeyProvider);

    final error = ref.watch(networkErrorProvider);
    return AppIconButton(
      icon: error ? AppIcons.warning : AppIcons.settings,
      onPressed: () => scaffoldKey.currentState?.openDrawer(),
    );
  }
}
