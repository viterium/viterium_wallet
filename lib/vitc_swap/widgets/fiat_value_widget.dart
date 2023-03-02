import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../../core/core_providers.dart';
import '../../vitex/vitex_providers.dart';

class FiatValueWidget extends ConsumerWidget {
  final Amount amount;
  const FiatValueWidget({
    super.key,
    required this.amount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final fiatValue = ref.watch(fiatFormatedForAmountProvider(amount));
    final rate = ref.watch(aprExchangeRateForTokenIdProvider(amount.tokenId));

    return Visibility(
      visible: amount.value != Decimal.zero && rate.btcRate != 0.0,
      child: Container(
        child: Text(
          '≈ $fiatValue',
          style: styles.textStyleTransactionAmount,
        ),
      ),
    );
  }
}
