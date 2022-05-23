import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../core/vite_uri.dart';
import '../send_sheet/balance_text_widget.dart';
import '../send_sheet/send_sheet.dart';
import '../tokens/token_info_provider.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/balance_widget.dart';
import '../widgets/sheet_util.dart';

class MainCard extends ConsumerWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MainCard({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final account = ref.watch(selectedAccountProvider);

    return GestureDetector(
      onTap: () {
        final notifier = ref.read(mainCardProvider.notifier);
        notifier.setNextState();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 14, right: 14, top: 10),
        height: 130,
        decoration: BoxDecoration(
          color: theme.backgroundDark,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [theme.boxShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
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
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          account.name,
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: theme.text,
                          ),
                        ),
                        ShortAddressText(address: account.viteAddress),
                      ],
                    ),
                  ),
                  AppIconButton(
                    icon: Icons.qr_code_scanner,
                    onPressed: () => qrScannerAction(context, ref.read),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                'Total Value',
                style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: theme.text,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 14, right: 14),
              child: const BalanceWidget(),
            )
          ],
        ),
      ),
    );
  }

  Future<void> qrScannerAction(BuildContext context, Reader read) async {
    final result = await UserDataUtil.scanQrCode(context);
    final data = result?.code;
    if (data != null) {
      if (data.startsWith('vc:')) {
        UIUtil.showSnackbar(
          'ViteConnect not yet supported.',
          context,
        );
        return;
      }
      final viteUri = ViteUri.tryParse(data);
      if (viteUri == null) {
        UIUtil.showSnackbar(
          'Failed to parse qr code',
          context,
        );
        return;
      }
      final tokenId = viteUri.token?.tokenId ?? viteTokenId;
      final tokenInfo = await read(tokenInfoProvider(tokenId).future);
      BigInt? sendAmount;
      if (viteUri.amount != null) {
        sendAmount = NumberUtil.getRawFromDecimal(
          viteUri.amount!,
          tokenInfo.decimals,
        );
      }
      final selectedToken = read(selectedTokenProvider.notifier);
      selectedToken.update((_) => tokenInfo);
      final theme = read(themeProvider);
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendSheet(
          address: viteUri.viteAddress,
          amountRaw: sendAmount,
          data: viteUri.data,
        ),
      );
    }
  }
}
