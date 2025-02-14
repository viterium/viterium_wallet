import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../app_providers.dart';
import '../util/formatters.dart';
import '../widgets/app_text_field.dart';

class VinuSwapSlippageDialog extends HookConsumerWidget {
  final double slippage;

  const VinuSwapSlippageDialog({Key? key, required this.slippage})
    : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final controller = useTextEditingController(
      text: (slippage * 100).toStringAsFixed(2),
    );

    final formatter = NumberFormat.percentPattern();

    void onResult(String text) {
      text = text.replaceAll(formatter.symbols.DECIMAL_SEP, '.');
      final slippage = double.tryParse(text);
      Navigator.of(context).pop(slippage);
    }

    return SimpleDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text('Slippage', style: styles.textStyleDialogHeader),
      ),
      children: [
        AppTextField(
          leftMargin: 0,
          rightMargin: 0,
          controller: controller,
          cursorColor: theme.primary,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          autocorrect: false,
          textInputAction: TextInputAction.done,
          inputFormatters: [
            PercentFormatter(
              groupSeparator: formatter.symbols.GROUP_SEP,
              decimalSeparator: formatter.symbols.DECIMAL_SEP,
            ),
          ],
          suffixButton: TextFieldButton(icon: Icons.percent, onPressed: null),
          onSubmitted: onResult,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              style: styles.dialogButtonStyle,
              child: Text('SAVE', style: styles.textStyleDialogButtonText),
              onPressed: () => onResult(controller.text),
            ),
          ],
        ),
      ],
    );
  }
}
