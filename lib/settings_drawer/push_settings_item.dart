import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:push/push.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';
import 'double_line_item.dart';
import 'notifications_info_dialog.dart';
import 'push_settings_dialog.dart';
import 'selection_item.dart';

class PushSettingsItem extends ConsumerWidget {
  const PushSettingsItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    final pushEnabled = ref.watch(pushEnabledProvider);

    // FIXME - workaround
    Future<void> checkUnreceived() async {
      final txHistory = ref.read(selectedTxHistoryProvider);
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
          () => txHistory.hasUnconfirmed,
        ),
      );
      await Future.delayed(const Duration(seconds: 1));
    }

    Future<void> changePushSettings(bool enable) async {
      AppDialogs.showInProgressDialog(
        context,
        'Setting Notifications',
        'Please wait...',
      );

      try {
        final account = ref.read(selectedAccountProvider);
        if (enable) {
          final accountService = ref.read(accountServiceProvider);
          final service = ref.read(pushServiceProvider);
          final pushToken = ref.read(pushTokenSettingsProvider.notifier);
          final published = await pushToken.publishToken(
            address: account.address,
            accountService: accountService,
            service: service,
          );
          if (published) {
            await checkUnreceived();
          }
        }

        final pushSettingsProvider = pushSettingsForAccountProvider(account);
        final pushSettings = ref.read(pushSettingsProvider.notifier);
        if (enable) {
          final linked = await pushSettings.linkId();
          if (linked) {
            await checkUnreceived();
          }
        }
        await pushSettings.setPush(enabled: enable);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        final action = enable ? 'Enable' : 'Disable';
        log.e('Failed to $action Notifications', e, st);

        UIUtil.showSnackbar('Failed to $action Notifications', context);
      } finally {
        Navigator.of(context).pop();
      }
    }

    Future<void> authChangePushSettings(bool enable) async {
      final authUtil = ref.read(authUtilProvider);
      final action = enable ? 'Enable' : 'Disable';
      final auth = await authUtil.authenticate(
        context,
        'Enter PIN to $action Notifications',
        'Authenticate to $action Notifications',
      );

      if (auth) {
        changePushSettings(enable);
      }
    }

    Future<bool> iOSCheckPermissions() async {
      if (!kIsWeb && Platform.isIOS) {
        final permission = await Push.instance.requestPermission();
        if (permission == false) {
          AppDialogs.showInfoDialog(
            context,
            'Notifications Disabled',
            'Please enable notifications fron iOS settings',
          );
          return false;
        }
      }
      return true;
    }

    Future<void> showPushSettingsDialog() async {
      final selection = await showAppDialog<bool>(
        context: context,
        builder: (context) => const PushSettingsDialog(),
      );
      if (selection == null || selection == pushEnabled) {
        return;
      }

      if (selection) {
        if (!await iOSCheckPermissions()) {
          return;
        }
      }
      await authChangePushSettings(selection);
    }

    Future<void> resetNotifications() async {
      AppDialogs.showInProgressDialog(
        context,
        'Resetting Notifications',
        'Please wait...',
      );

      try {
        final account = ref.read(selectedAccountProvider);
        final pushSettingsProvider = pushSettingsForAccountProvider(account);
        final pushSettings = ref.read(pushSettingsProvider.notifier);
        await pushSettings.resetSettings();

        final tokenSettings = ref.read(pushTokenSettingsProvider.notifier);
        await tokenSettings.resetTokenSettings();
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to reset Notifications', e, st);

        UIUtil.showSnackbar('Failed to Reset Notifications', context);
      } finally {
        Navigator.of(context).pop();
      }
    }

    Future<void> authResetNotifications() async {
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticate(
        context,
        'Enter PIN to Reset Notifications',
        'Authenticate to Reset Notifications',
      );

      if (auth) {
        await resetNotifications();
      }
    }

    Future<void> confirmResetNotifications() async {
      AppDialogs.showConfirmDialog(
        context,
        'Reset Notifications?',
        'This will reset all Viterium Notifications settings for this device.',
        'RESET',
        authResetNotifications,
      );
    }

    Future<void> showNotificationsInfoDialog() async {
      AppDialogs.showConfirmDialog(
        context,
        'Notifications Info',
        '',
        'RESET',
        confirmResetNotifications,
        cancelText: 'CLOSE',
        contentWidget: const NotificationsInfoDialog(),
      );
    }

    Future<void> authShowNotificationsInfo() async {
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticate(
        context,
        'Enter PIN to View Notifications Info',
        'Authenticate to View Notifications Info',
      );
      if (auth) {
        await showNotificationsInfoDialog();
      }
    }

    return Column(
      children: [
        Divider(height: 2, color: theme.text15),
        DoubleLineItem(
          heading: l10n.notifications,
          defaultMethod: SelectionItem(pushEnabled ? 'ON' : 'OFF'),
          icon: AppIcons.notifications,
          onPressed: showPushSettingsDialog,
          onLongPress: authShowNotificationsInfo,
        ),
      ],
    );
  }
}
