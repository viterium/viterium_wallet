import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/app_simpledialog.dart';
import 'setting_token_sort_option.dart';
import 'tokens_settings.dart';

class TokenSortDialog extends ConsumerWidget {
  const TokenSortDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          l10n.tokenSort,
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        for (final value in TokenSortOption.values)
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, value),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                SettingTokenSortOption(value).getDisplayName(ref),
                style: styles.textStyleDialogOptions,
              ),
            ),
          ),
      ],
    );
  }
}
