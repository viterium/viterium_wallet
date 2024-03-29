
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../widgets/app_simpledialog.dart';

class ShowFiatValueDialog extends ConsumerWidget {
  const ShowFiatValueDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Show Fiat Value',
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        for (final value in [true, false])
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, value),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                value ? 'Enabled' : 'Disabled',
                style: styles.textStyleDialogOptions,
              ),
            ),
          ),
      ],
    );
  }
}
