import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../settings/available_language.dart';

class LanguageDialog extends ConsumerWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final style = styles.textStyleDialogOptions;
    final uStyle = style.copyWith(color: Colors.grey);

    return SimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          ref.read(l10nProvider).language,
          style: ref.read(stylesProvider).textStyleDialogHeader,
        ),
      ),
      children: [
        for (final value in AvailableLanguage.values)
          Builder(
            builder: (context) {
              final isAvailable = LanguageSetting.isAvailable(value);
              return SimpleDialogOption(
                onPressed:
                    isAvailable ? () => Navigator.pop(context, value) : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    LanguageSetting(value).getDisplayName(ref),
                    style: isAvailable ? style : uStyle,
                  ),
                ),
              );
            },
          ),
      ],
    );
  }
}
