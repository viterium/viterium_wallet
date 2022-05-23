import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../node_settings/node_providers.dart';
import '../node_settings/vite_node_setting.dart';
import '../node_settings/vite_nodes_sheet.dart';
import '../pow_settings/pow_providers.dart';
import '../pow_settings/pow_setting.dart';
import '../pow_settings/pow_settings_sheet.dart';
import '../settings/block_explorer_setting.dart';
import '../settings/block_explorers.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'double_line_item.dart';

class NetworkMenu extends ConsumerWidget {
  final VoidCallback onBackAction;
  const NetworkMenu({
    Key? key,
    required this.onBackAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);
    final viteNodeConfig = ref.watch(viteNodeConfigProvider);
    final powSettingsConfig = ref.watch(powConfigProvider);
    final powConfig = powSettingsConfig.map(
      defaultNode: (config) => config.copyWith(name: viteNodeConfig.name),
      custom: (config) => config,
    );

    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        boxShadow: [
          BoxShadow(
            color: theme.barrierWeakest,
            offset: Offset(-5, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: 60,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppIconButton(
                      icon: AppIcons.back,
                      onPressed: onBackAction,
                    ),
                  ),
                  Text(
                    localization.networkHeader,
                    style: styles.textStyleSettingsHeader,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    padding: const EdgeInsets.only(top: 15),
                    children: [
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          start: 30,
                          bottom: 10,
                        ),
                        child: Text(
                          localization.preferences,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            color: theme.text60,
                          ),
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      SettingsDoubleLineItem(
                        heading: localization.nodeAddress,
                        defaultMethod: ViteNodeSetting(viteNodeConfig),
                        icon: Icons.settings_ethernet,
                        onPressed: () {
                          _changeViteNode(context, ref);
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      SettingsDoubleLineItem(
                        heading: localization.powSettings,
                        defaultMethod: PowSetting(powConfig),
                        icon: Icons.memory,
                        iconSize: 28,
                        onPressed: () => _changePowServer(context, ref),
                      ),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final blockExplorer = ref.watch(blockExplorerProvider);
                        return SettingsDoubleLineItem(
                          heading: localization.blockExplorer,
                          defaultMethod: BlockExplorerSetting(blockExplorer),
                          icon: AppIcons.search,
                          onPressed: () {
                            _explorerDialog(context, ref);
                          },
                        );
                      }),
                    ],
                  ),
                  const ListBottomGradient(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeViteNode(BuildContext context, WidgetRef ref) {
    final theme = ref.read(themeProvider);
    Sheets.showAppHeightNineSheet(
      context: context,
      theme: theme,
      widget: const ViteNodesSheet(),
    );
  }

  void _changePowServer(BuildContext context, WidgetRef ref) {
    final theme = ref.read(themeProvider);
    Sheets.showAppHeightNineSheet(
      context: context,
      theme: theme,
      widget: const PowSettingsSheet(),
    );
  }

  Future<void> _explorerDialog(BuildContext context, WidgetRef ref) async {
    BlockExplorer? selection = await showAppDialog<BlockExplorer>(
        context: context,
        builder: (context) {
          return AppSimpleDialog(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                ref.read(l10nProvider).blockExplorer,
                style: ref.read(stylesProvider).textStyleDialogHeader,
              ),
            ),
            children: _buildExplorerOptions(context, ref),
          );
        });
    if (selection != null) {
      final notifier = ref.read(blockExplorerSettingsProvider.notifier);
      final network = ref.read(viteNetworkProvider);

      notifier.updateBlockExplorer(selection, network: network);
    }
  }

  List<Widget> _buildExplorerOptions(BuildContext context, WidgetRef ref) {
    final network = ref.read(viteNetworkProvider);
    final options = kBlockExplorerOptions[network] ?? [kVitcScanMainnet];
    return options.map((value) {
      final styles = ref.read(stylesProvider);
      return SimpleDialogOption(
        onPressed: () => Navigator.pop(context, value),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value.name, style: styles.textStyleDialogOptions),
              Text(value.url, style: styles.addressText),
            ],
          ),
        ),
      );
    }).toList();
  }
}
