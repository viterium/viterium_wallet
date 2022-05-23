import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import 'tokens_widget.dart';

class TokenSelectSheet extends ConsumerWidget {
  const TokenSelectSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return SheetWidget(
      title: 'Tokens',
      mainWidget: Stack(
        children: [
          const TokensWidget(),
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
