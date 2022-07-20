import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'node_add_sheet.dart';
import 'node_providers.dart';
import 'vite_node_item.dart';

class ListViewEndItem extends ConsumerWidget {
  final Widget child;

  const ListViewEndItem({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        Divider(height: 2, color: theme.text15),
      ],
    );
  }
}

class ViteNodesSheet extends ConsumerWidget {
  const ViteNodesSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    final items = ref.watch(viteNodeOptionsProvider);
    final title = 'Vite Nodes';

    void addNode() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const NodeAddSheet(),
      );
    }

    return SheetWidget(
      title: title,
      mainWidget: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 10),
            itemCount: items.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == items.length) {
                return Divider(height: 2, color: theme.text15);
              }
              final config = items[index];
              return ProviderScope(
                overrides: [
                  viteNodeConfigItemProvider.overrideWithValue(config),
                ],
                child: const ViteNodeItem(),
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
            title: l10n.addNode,
            onPressed: addNode,
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
