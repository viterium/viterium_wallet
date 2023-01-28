import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../widgets/account_button.dart';
import '../widgets/app_icon_button.dart';
import 'defi_info.widget.dart';

class DefiMainCard extends ConsumerWidget {
  const DefiMainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final scaffoldKey = ref.watch(homePageScaffoldKeyProvider);

    void showDefiInfo() {
      showDialog(
        barrierColor: theme.barrier,
        context: context,
        builder: (_) => const DefiInfoWidget(),
      );
    }

    return Container(
      margin: const EdgeInsets.only(left: 14, right: 14, top: 10),
      height: 100,
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [theme.boxShadow],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 6, top: 6, right: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Consumer(builder: (context, ref, _) {
              final error = ref.watch(networkErrorProvider);
              return AppIconButton(
                icon: error ? AppIcons.warning : AppIcons.settings,
                onPressed: () => scaffoldKey.currentState?.openDrawer(),
              );
            }),
            Container(
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AccountButton(),
                  Text(
                    'DeFi Center',
                    style: styles.textStyleButtonTextOutline,
                  ),
                ],
              ),
            ),
            AppIconButton(
              icon: AppIcons.info,
              onPressed: showDefiInfo,
            ),
          ],
        ),
      ),
    );
  }
}
