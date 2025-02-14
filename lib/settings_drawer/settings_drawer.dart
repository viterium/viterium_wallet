import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../contacts/contacts_widget.dart';
import '../node_settings/node_types.dart';
import '../quota/quota_sheet.dart';
import '../sbp/sbp_sheet.dart';
import '../settings/available_currency.dart';
import '../settings/available_themes.dart';
import '../settings_advanced/advanced_menu.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'accounts_area.dart';
import 'currency_dialog.dart';
import 'double_line_item.dart';
import 'network_menu.dart';
import 'push_settings_item.dart';
import 'security_menu.dart';
import 'seed_backup_sheet.dart';
import 'selection_item.dart';
import 'single_line_item.dart';
import 'theme_dialog.dart';
import 'version_widget.dart';

class SettingsSheet extends ConsumerStatefulWidget {
  const SettingsSheet({Key? key}) : super(key: key);

  _SettingsSheetState createState() => _SettingsSheetState();
}

class _SettingsSheetState extends ConsumerState<SettingsSheet>
    with TickerProviderStateMixin {
  late AnimationController _contactsController;
  late Animation<Offset> _contactsOffsetFloat;
  late AnimationController _securityController;
  late Animation<Offset> _securityOffsetFloat;
  late AnimationController _networkController;
  late Animation<Offset> _networkOffsetFloat;
  late AnimationController _advancedController;
  late Animation<Offset> _advancedOffsetFloat;

  bool _securityOpen = false;
  bool _contactsOpen = false;
  bool _networkOpen = false;
  bool _advancedOpen = false;

  @override
  void initState() {
    super.initState();

    // Setup animation controller
    // For contacts menu
    _contactsController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    // For security menu
    _securityController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    // For network menu
    _networkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    // For advanced menu
    _advancedController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );

    final beginOffset = const Offset(1.1, 0);
    final endOffset = const Offset(0, 0);
    _contactsOffsetFloat = Tween<Offset>(
      begin: beginOffset,
      end: endOffset,
    ).animate(_contactsController);
    _securityOffsetFloat = Tween<Offset>(
      begin: const Offset(1.1, 0),
      end: const Offset(0, 0),
    ).animate(_securityController);
    _networkOffsetFloat = Tween<Offset>(
      begin: const Offset(1.1, 0),
      end: const Offset(0, 0),
    ).animate(_networkController);
    _advancedOffsetFloat = Tween<Offset>(
      begin: const Offset(1.1, 0),
      end: const Offset(0, 0),
    ).animate(_advancedController);
  }

  @override
  void dispose() {
    _contactsController.dispose();
    _securityController.dispose();
    _networkController.dispose();
    _advancedController.dispose();

    super.dispose();
  }

  Future<void> _showCurrencyDialog() async {
    final selection = await showAppDialog<AvailableCurrencies>(
      context: context,
      builder: (context) => const CurrencyDialog(),
    );
    if (selection != null) {
      final notifier = ref.read(currencyProvider.notifier);
      notifier.updateCurrency(AvailableCurrency(selection));
    }
  }

  // Future<void> _showLanguageDialog() async {
  //   final selection = await showAppDialog<AvailableLanguage>(
  //     context: context,
  //     builder: (context) => const LanguageDialog(),
  //   );
  //   if (selection != null) {
  //     final notifier = ref.read(languageProvider.notifier);
  //     notifier.updateLanguage(LanguageSetting(selection));
  //   }
  // }

  Future<void> _showThemeDialog() async {
    final selection = await showAppDialog<ThemeOptions>(
      context: context,
      builder: (context) => const ThemeDialog(),
    );
    if (selection != null) {
      final notifier = ref.read(themeSettingProvider.notifier);
      notifier.updateTheme(ThemeSetting(selection));
    }
  }

  void _onBackButtonPressed<T>(bool didPop, T? result) async {
    if (_contactsOpen) {
      setState(() => _contactsOpen = false);
      _contactsController.reverse();
    } else if (_securityOpen) {
      setState(() => _securityOpen = false);
      _securityController.reverse();
    } else if (_networkOpen) {
      setState(() => _networkOpen = false);
      _networkController.reverse();
    } else if (_advancedOpen) {
      setState(() => _advancedOpen = false);
      _advancedController.reverse();
    } else if (!didPop) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Drawer in flutter doesn't have a built-in way to push/pop elements
    // on top of it like our Android counterpart. So we can override back button
    // presses and replace the main settings widget with contacts based on a bool
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: _onBackButtonPressed,
      child: ClipRect(
        child: Stack(children: [
          Consumer(builder: (context, ref, _) {
            return Container(
              color: ref.watch(themeProvider).backgroundDark,
              constraints: BoxConstraints.expand(),
            );
          }),
          buildMainSettings(context),
          SlideTransition(
            position: _contactsOffsetFloat,
            child: ContactsWidget(onBackAction: () {
              setState(() => _contactsOpen = false);
              _contactsController.reverse();
            }),
          ),
          SlideTransition(
            position: _securityOffsetFloat,
            child: SecurityMenu(onBackAction: () {
              setState(() => _securityOpen = false);
              _securityController.reverse();
            }),
          ),
          SlideTransition(
            position: _networkOffsetFloat,
            child: NetworkMenu(onBackAction: () {
              setState(() => _networkOpen = false);
              _networkController.reverse();
            }),
          ),
          SlideTransition(
            position: _advancedOffsetFloat,
            child: AdvancedMenu(onBackAction: () {
              setState(() => _advancedOpen = false);
              _advancedController.reverse();
            }),
          ),
        ]),
      ),
    );
  }

  Widget buildMainSettings(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final styles = ref.watch(stylesProvider);
      final l10n = ref.watch(l10nProvider);

      final hasMnemonic = ref.watch(walletHasMnemonic);

      void showQuotaSheet() {
        Sheets.showAppHeightNineSheet(
          context: context,
          widget: const QuotaSheet(),
          theme: ref.read(themeProvider),
        );
      }

      return Container(
        decoration: BoxDecoration(color: theme.backgroundDark),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: const AccountsArea(),
              ),
              // Settings items
              Expanded(
                child: Stack(children: [
                  ListView(
                    primary: false,
                    padding: const EdgeInsets.only(top: 15),
                    children: [
                      Container(
                        margin:
                            EdgeInsetsDirectional.only(start: 30, bottom: 10),
                        child: Text(
                          l10n.preferences,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final currency = ref.watch(currencyProvider);
                        return DoubleLineItem(
                          heading: l10n.currency,
                          defaultMethod: currency,
                          icon: AppIcons.currency,
                          onPressed: _showCurrencyDialog,
                        );
                      }),
                      // Divider(height: 2, color: theme.text15),
                      // Consumer(builder: (context, ref, _) {
                      //   return SettingsDoubleLineItem(
                      //     heading: localization.language,
                      //     defaultMethod: ref.watch(languageProvider),
                      //     icon: AppIcons.language,
                      //     onPressed: _showLanguageDialog,
                      //   );
                      // }),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final themeSetting = ref.watch(themeSettingProvider);
                        return DoubleLineItem(
                          heading: l10n.themeHeader,
                          defaultMethod: themeSetting,
                          icon: AppIcons.theme,
                          onPressed: _showThemeDialog,
                        );
                      }),
                      Consumer(builder: (context, ref, _) {
                        final network = ref.watch(viteNetworkProvider);
                        final token = ref.read(pushTokenProvider);
                        if (network != ViteNetwork.mainnet || token.isEmpty) {
                          return const SizedBox();
                        }
                        return const PushSettingsItem();
                      }),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.securityHeader,
                        settingIcon: AppIcons.security,
                        onPressed: () {
                          setState(() => _securityOpen = true);
                          _securityController.forward();
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.networkHeader,
                        settingIcon: Icons.language,
                        iconSize: 28,
                        onPressed: () {
                          setState(() => _networkOpen = true);
                          _networkController.forward();
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.advancedHeader,
                        settingIcon: Icons.settings_applications_outlined,
                        iconSize: 28,
                        onPressed: () {
                          setState(() => _advancedOpen = true);
                          _advancedController.forward();
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          start: 30,
                          top: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          l10n.manage,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.contactsHeader,
                        settingIcon: AppIcons.contact,
                        onPressed: () {
                          setState(() => _contactsOpen = true);
                          _contactsController.forward();
                        },
                      ),

                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final quota = ref.watch(currentQuotaLabelProvider);
                        return DoubleLineItem(
                          heading: 'Quota',
                          defaultMethod: SelectionItem(quota),
                          icon: Icons.pie_chart_sharp,
                          iconSize: 28,
                          onPressed: showQuotaSheet,
                        );
                      }),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.changeSbpAuthenticate,
                        settingIcon: AppIcons.changerepresentative,
                        onPressed: () {
                          Sheets.showAppHeightEightSheet(
                            context: context,
                            widget: const VoteForSbpSheet(),
                            theme: ref.read(themeProvider),
                          );
                        },
                      ),
                      if (hasMnemonic.asData?.value == true) ...[
                        Divider(height: 2, color: theme.text15),
                        SingleLineItem(
                          heading: l10n.backupSecretPhrase,
                          settingIcon: AppIcons.backupseed,
                          onPressed: () async {
                            final authUtil = ref.read(authUtilProvider);
                            final walletAuth = ref.read(walletAuthProvider);
                            final notifier =
                                ref.read(walletAuthProvider.notifier);
                            var auth = false;
                            List<String>? mnemonic = null;
                            if (walletAuth.isEncrypted) {
                              final notifier =
                                  ref.read(walletAuthProvider.notifier);
                              auth = await authUtil.authenticateWithPassword(
                                  context, (password) async {
                                try {
                                  mnemonic = await notifier.getMnemonic(
                                      password: password);
                                  return true;
                                } catch (e) {
                                  return false;
                                }
                              });
                            } else {
                              auth = await authUtil.authenticate(
                                context,
                                l10n.pinSeedBackup,
                                l10n.fingerprintSeedBackup,
                              );
                            }
                            if (auth) {
                              if (mnemonic == null) {
                                mnemonic = await notifier.getMnemonic();
                              }
                              Sheets.showAppHeightNineSheet(
                                context: context,
                                theme: ref.read(themeProvider),
                                widget: SeedBackupSheet(mnemonic: mnemonic!),
                              );
                            }
                          },
                        ),
                      ],
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.shareViterium,
                        settingIcon: AppIcons.share,
                        onPressed: () {
                          Share.share(
                            l10n.shareViteriumText,
                            subject: l10n.shareViteriumSubject,
                          );
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      SingleLineItem(
                        heading: l10n.logoutOrSwitchWallet,
                        settingIcon: AppIcons.logout,
                        onPressed: () {
                          AppDialogs.showConfirmDialog(
                            context,
                            l10n.areYouSure,
                            l10n.logoutDialogContent,
                            l10n.YES,
                            () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/logout',
                                (_) => false,
                              );
                            },
                          );
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      const VersionWidget(),
                    ],
                  ),
                  const ListTopGradient()
                ]),
              ),
            ],
          ),
        ),
      );
    });
  }
}
