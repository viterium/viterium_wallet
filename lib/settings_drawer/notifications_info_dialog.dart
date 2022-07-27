import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';

class NotificationsInfoDialog extends ConsumerWidget {
  const NotificationsInfoDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);
    final clientId = ref.watch(clientIdProvider).hex;
    final token = ref.watch(pushTokenProvider);
    final accountId = ref.watch(pushIdForAccountProvider(account)).hex;

    Future<void> copyClientId() async {
      await Clipboard.setData(ClipboardData(text: clientId));
      UIUtil.showSnackbar('Client Id copied!', context);
    }

    Future<void> copyAccountId() async {
      await Clipboard.setData(ClipboardData(text: accountId));
      UIUtil.showSnackbar('Account Id copied!', context);
    }

    Future<void> copyNotificationsToken() async {
      await Clipboard.setData(ClipboardData(text: token));
      UIUtil.showSnackbar('Notifications Token copied!', context);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Client Id', style: styles.textStyleParagraphBold),
        Row(
          children: [
            Expanded(
              child: Text(
                clientId,
                style: styles.textStyleAddressText60,
              ),
            ),
            const SizedBox(width: 16),
            Container(
              height: 40,
              width: 40,
              child: TextButton(
                style: styles.roundedTextButtonStyle,
                child: Icon(Icons.copy, color: theme.text),
                onPressed: copyClientId,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text('Account Id', style: styles.textStyleParagraphBold),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                accountId,
                style: styles.textStyleAddressText60,
              ),
            ),
            const SizedBox(width: 16),
            Container(
              height: 40,
              width: 40,
              child: TextButton(
                style: styles.roundedTextButtonStyle,
                child: Icon(Icons.copy, color: theme.text),
                onPressed: copyAccountId,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text('Notifications Token', style: styles.textStyleParagraphBold),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                token,
                style: styles.textStyleAddressText60,
                overflow: TextOverflow.fade,
                softWrap: false,
              ),
            ),
            const SizedBox(width: 16),
            Container(
              height: 40,
              width: 40,
              child: TextButton(
                style: styles.roundedTextButtonStyle,
                child: Icon(Icons.copy, color: theme.text),
                onPressed: copyNotificationsToken,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
