import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import 'vitc_swap_tokens_widget.dart';

class VitcSwapTokenSelectSheet extends ConsumerWidget {
  final String title;
  const VitcSwapTokenSelectSheet({super.key, this.title = 'Tokens'});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return SheetWidget(
      title: title,
      mainWidget: Stack(
        children: [
          const VitcSwapTokensWidget(),
          const TopGradientWidget(),
          const BottomGradientWidget(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: PrimaryButton(
          title: l10n.cancel,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
