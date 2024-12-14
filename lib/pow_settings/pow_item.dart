import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../app_providers.dart';
import '../app_styles.dart';
import '../node_settings/node_providers.dart';
import '../widgets/dialog.dart';
import 'pow_providers.dart';
import 'pow_types.dart';

final powConfigItemProvider =
    Provider<PowConfig>((ref) => throw UnimplementedError());

class PowItem extends ConsumerWidget {
  const PowItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final node = ref.watch(viteNodeConfigProvider);
    final item = ref.watch(powConfigItemProvider);
    final config = ref.watch(powConfigProvider);

    final display = item.map(
      defaultNode: (_) => (node.name, node.http),
      custom: (config) => (config.name, config.url),
    );

    final canDelete = item.map(
      defaultNode: (_) => false,
      custom: (value) => value != config,
    );

    void changeConfig() {
      final notifier = ref.read(powSettingsProvider.notifier);
      notifier.updateSelected(item);
    }

    void deleteConfig() {
      final notifier = ref.read(powSettingsProvider.notifier);
      notifier.removeConfig(item);
    }

    void confirmDeleteConfig() {
      final title = 'Delete PoW Option?';
      final content = 'Are you sure you want to delete ${item.name}?';
      AppDialogs.showConfirmDialog(
        context,
        title,
        content,
        l10n.YES,
        deleteConfig,
        cancelText: l10n.NO,
      );
    }

    return Slidable(
      enabled: canDelete,
      endActionPane: ActionPane(
        extentRatio: 0.16,
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            icon: Icons.delete,
            backgroundColor: theme.primary,
            foregroundColor: theme.backgroundDark,
            onPressed: (_) => confirmDeleteConfig(),
          )
        ],
      ),
      child: Column(
        children: [
          Divider(height: 2, color: theme.text15),
          TextButton(
            style: styles.defaultTextButtonStyle,
            onPressed: changeConfig,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<PowConfig>(
                    value: item,
                    groupValue: config,
                    activeColor: theme.primary,
                    onChanged: (_) => changeConfig(),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          display.$1,
                          style: styles.textStyleSettingItemHeader,
                        ),
                        Text(
                          display.$2,
                          style: styles.textStyleAddressText60.copyWith(
                            fontSize: AppFontSizes.smallest,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
