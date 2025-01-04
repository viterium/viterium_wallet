import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import '../../widgets/app_simpledialog.dart';
import '../vinu_swap_slippage_dialog.dart';

class SlippageWidget extends ConsumerWidget {
  const SlippageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final settings = ref.watch(vinuSwapSettingsProvider);

    Future<void> changeSlippage() async {
      final slippage = await showAppDialog<double>(
        context: context,
        builder: (_) => VinuSwapSlippageDialog(
          slippage: settings.slippage,
        ),
      );

      if (slippage != null) {
        final notifier = ref.read(vinuSwapSettingsProvider.notifier);
        notifier.updateSlippage(slippage / 100.0);
      }
    }

    return TextButton(
      style: styles.dialogButtonStyle,
      child: Column(
        children: [
          Text(
            'Slippage Tolerance:',
            style: styles.textStyleTransactionType,
          ),
          Text(
            '${(settings.slippage * 100).toStringAsFixed(2)}%',
            style: styles.textStyleAddressPrimary,
          ),
        ],
      ),
      onPressed: changeSlippage,
    );
  }
}
