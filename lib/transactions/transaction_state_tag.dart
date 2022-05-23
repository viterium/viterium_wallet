import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'transaction_types.dart';

class TransactionStateTag extends ConsumerWidget {
  final TxState state;

  const TransactionStateTag({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
      child: state.when(
        unknown: () => const SizedBox(),
        unconfirmed: () => Text(
          l10n.unconfirmed,
          style: styles.tagText,
        ),
        confirming: (confirmations) => Text(
          '$confirmations confirmations',
          style: styles.tagText,
        ),
        confirmed: () => Text(
          l10n.confirmed,
          style: styles.tagText,
        ),
      ),
      decoration: BoxDecoration(
        color: theme.text10,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
