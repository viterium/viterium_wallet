import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'pow_add_sheet.dart';
import 'pow_item.dart';
import 'pow_providers.dart';

class PowSettingsSheet extends ConsumerWidget {
  const PowSettingsSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final items = ref.watch(powOptionsProvider);
    final title = 'PoW Settings';

    void addOption() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const PowAddSheet(),
      );
    }

    return SheetWidget(
      title: title,
      mainWidget: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: items.length + 1,
            itemBuilder: (context, index) {
              if (index == items.length) {
                return Divider(height: 2, color: theme.text15);
              }
              final config = items[index];
              return ProviderScope(
                overrides: [
                  powConfigItemProvider.overrideWithValue(config),
                ],
                child: const PowItem(),
              );
            },
          ),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(children: [
          PrimaryButton(
            title: l10n.add,
            onPressed: addOption,
          ),
          const SizedBox(height: 16),
          PrimaryOutlineButton(
            title: l10n.close,
            onPressed: () => Navigator.pop(context),
          ),
        ]),
      ),
    );
  }
}
