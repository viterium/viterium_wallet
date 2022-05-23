import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../settings_drawer/accounts_area.dart';
import '../util/util.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_header_button.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_widget.dart';
import 'quota_get_sheet.dart';
import 'quota_item.dart';

class QuotaSheet extends ConsumerWidget {
  const QuotaSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final address = ref.watch(selectedAddressProvider);
    final quota = ref.watch(quotaProvider(address));
    final quotaStakeList = ref.watch(quotaStakeListProvider);
    final items = quotaStakeList.stakeList;

    Amount? totalStakeAmount = null;
    final totalStakeRaw = quotaStakeList.totalStakeAmount;
    if (totalStakeRaw != null) {
      totalStakeAmount = Amount.raw(totalStakeRaw, tokenInfo: TokenInfo.vite);
    }

    void getQuota() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const QuotaGetSheet(),
      );
    }

    return SheetWidget(
      title: 'Quota',
      rightWidget: SheetHeaderButton(
        icon: AppIcons.info,
        onPressed: () {
          openUrl('https://docs.vite.org/vite-docs/reference/quota.html');
        },
      ),
      mainWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: const AccountWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Quota'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: theme.text,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Total Locked'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: theme.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Builder(builder: (context) {
                          final ut = Decimal.fromInt(21000);
                          final current =
                              (Decimal.parse(quota.currentQuota) / ut)
                                  .toDecimal(scaleOnInfinitePrecision: 2);
                          final max =
                              (Decimal.parse(quota.maxQuota) / ut).toDecimal();

                          final digits = current.isInteger ? 0 : 2;
                          final currentLabel = current.toStringAsFixed(digits);
                          return RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '$currentLabel / ${max}',
                                  style: styles.textStyleTransactionAmount
                                      .copyWith(fontSize: 14),
                                ),
                                TextSpan(
                                  text: ' UT',
                                  style: styles.textStyleTransactionUnit
                                      .copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                            maxLines: 1,
                          );
                        }),
                        const SizedBox(height: 8),
                        if (totalStakeAmount != null) ...[
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '${totalStakeAmount.value}',
                                  style: styles.textStyleTransactionAmount
                                      .copyWith(fontSize: 14),
                                ),
                                TextSpan(
                                  text: ' VITE',
                                  style: styles.textStyleTransactionUnit
                                      .copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                            maxLines: 1,
                          ),
                        ]
                      ],
                    ),
                  ]),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              'Quota Records'.toUpperCase(),
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: theme.text,
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                if (items.length == 0)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Divider(height: 2, color: theme.text15),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8),
                        child: Text(
                          'No Quota Records',
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: theme.text,
                          ),
                        ),
                      )
                    ],
                  )
                else
                  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemCount: items.length + 1,
                    itemBuilder: (context, index) {
                      if (index == items.length) {
                        // load more
                        if (quotaStakeList.hasMore) {
                          quotaStakeList.loadMore();
                        }
                        return Divider(height: 2, color: theme.text15);
                      }
                      final item = items[index];

                      return ProviderScope(
                        overrides: [
                          quotaItemProvider.overrideWithValue(item),
                        ],
                        child: const QuotaItem(),
                      );
                    },
                  ),
                const ListTopGradient(),
                const ListBottomGradient(),
              ],
            ),
          ),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: 'Get Quota',
              onPressed: getQuota,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: 'Close',
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
