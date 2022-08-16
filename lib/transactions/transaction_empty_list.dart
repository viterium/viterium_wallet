import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'transaction_dummy_card.dart';
import 'transaction_welcome_card.dart';

class TransactionEmptyList extends ConsumerWidget {
  final String tokenSymbol;
  const TransactionEmptyList({
    Key? key,
    required this.tokenSymbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ListView(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 15),
      children: [
        const WelcomeTransactionCard(),
        TransactionDummyCard(
          type: l10n.sent,
          amount: l10n.exampleCardLittle,
          address: l10n.exampleCardTo,
          tokenSymbol: tokenSymbol,
        ),
        TransactionDummyCard(
          type: l10n.received,
          amount: l10n.exampleCardLot,
          address: l10n.exampleCardFrom,
          tokenSymbol: tokenSymbol,
        ),
      ],
    );
  }
}
