import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/sheet_util.dart';
import 'quota_sheet.dart';

class QuotaWidget extends ConsumerWidget {
  const QuotaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final address = ref.watch(selectedAddressProvider);
    final quota = ref.watch(quotaProvider(address));

    void showQuotaSheet() {
      Sheets.showAppHeightNineSheet(
        context: context,
        widget: const QuotaSheet(),
        theme: ref.read(themeProvider),
      );
    }

    return TextButton(
      style: styles.quotaButtonStyle,
      onPressed: showQuotaSheet,
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text('Quota', style: styles.textStyleCurrencyAlt),
            ),
            const SizedBox(width: 10),
            Builder(builder: (context) {
              final ut = Decimal.fromInt(21000);
              final current = (Decimal.parse(quota.currentQuota) / ut)
                  .toDecimal(scaleOnInfinitePrecision: 2);
              final max = (Decimal.parse(quota.maxQuota) / ut)
                  .toDecimal(scaleOnInfinitePrecision: 2);
              final digits = current.isInteger ? 0 : 2;
              final currentLabel = current.toStringAsFixed(digits);
              return Text(
                '$currentLabel / ${max} UT',
                style: styles.textStyleTransactionAmount,
              );
            }),
          ],
        ),
      ),
    );
  }
}
