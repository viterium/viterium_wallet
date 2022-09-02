import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_icons_custom.dart';
import '../app_providers.dart';
import '../settings_drawer/double_line_item.dart';
import '../settings_drawer/single_line_item.dart';
import '../tokens/tokens_manage_sheet.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'defi_enabled_dialog.dart';
import 'setting_enabled_item.dart';
import 'setting_token_sort_option.dart';
import 'token_sort_dialog.dart';
import 'tokens_settings.dart';
import 'tokens_settings_provider.dart';

class AdvancedMenu extends ConsumerWidget {
  final VoidCallback onBackAction;
  const AdvancedMenu({
    Key? key,
    required this.onBackAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    void manageTokens() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        backgroundColor: theme.backgroundDarkest,
        widget: const TokensManageSheet(),
      );
    }

    Future<void> changeTokenOrder() async {
      final selection = await showAppDialog<TokenSortOption>(
        context: context,
        builder: (_) => const TokenSortDialog(),
      );
      if (selection != null) {
        final account = ref.read(selectedAccountProvider);
        final notifier = ref.read(tokensSettingsProvider(account).notifier);
        return notifier.updateTokenSortOption(selection);
      }
    }

    Future<void> changeDefiEnabled() async {
      final enabled = await showAppDialog<bool>(
        context: context,
        builder: (_) => const DefiEnabledDialog(),
      );
      if (enabled != null) {
        final notifier = ref.read(advancedSettingsProvider.notifier);
        return notifier.updateDefiEnabled(enabled);
      }
    }

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
                    l10n.advancedHeader,
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
                          l10n.preferences,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.manageTokens,
                        settingIcon: Icons.currency_exchange,
                        iconSize: 28,
                        onPressed: manageTokens,
                      ),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final account = ref.watch(selectedAccountProvider);
                        final settings =
                            ref.watch(tokensSettingsProvider(account));
                        return DoubleLineItem(
                          heading: l10n.tokenSort,
                          defaultMethod:
                              SettingTokenSortOption(settings.sortOption),
                          icon: Icons.sort,
                          iconSize: 28,
                          onPressed: changeTokenOrder,
                        );
                      }),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final settings = ref.watch(advancedSettingsProvider);
                        return DoubleLineItem(
                          heading: 'DeFi Center',
                          defaultMethod:
                              SettingEnabledItem(settings.defiEnabled),
                          icon: AppIconsCustom.defi,
                          iconSize: 28,
                          onPressed: changeDefiEnabled,
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
}
