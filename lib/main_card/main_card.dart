import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../core/vite_uri.dart';
import '../send_sheet/send_confirm_sheet.dart';
import '../send_sheet/send_sheet.dart';
import '../tokens/token_info_provider.dart';
import '../transactions/send_tx.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../util/vite_util.dart';
import '../viteconnect/peer_widget.dart';
import '../viteconnect/viteconnect_providers.dart';
import '../viteconnect/viteconnect_types.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/balance_widget.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_util.dart';

final homePageScaffoldKeyProvider =
    Provider((ref) => GlobalKey<ScaffoldState>());

class MainCard extends ConsumerWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);
    final viteConnect = ref.watch(viteConnectProvider.notifier);
    final scaffoldKey = ref.watch(homePageScaffoldKeyProvider);

    ref.listen<VCState>(viteConnectProvider, (prev, state) {
      state.mapOrNull(
        connectingToBridge: (state) {
          AppDialogs.showInfoDialog(
            context,
            'ViteConnect',
            'Connecting',
            contentWidget: Center(
              child: Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: theme.backgroundDarkest,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [theme.boxShadow],
                ),
                child: const CupertinoActivityIndicator(),
              ),
            ),
            closeText: 'CANCEL',
            onClose: viteConnect.disconnect,
          );
        },
        pendingApproval: (state) {
          Navigator.of(context).popUntil(ModalRoute.withName('/home'));
          final peerMeta = state.sessionRequest.peerMeta;
          AppDialogs.showConfirmDialog(
            context,
            'ViteConnect',
            '',
            'Connect'.toUpperCase(),
            () => viteConnect.approve(state.sessionRequest),
            contentWidget: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: theme.backgroundDarkest,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [theme.boxShadow],
              ),
              child: ProviderScope(
                overrides: [
                  viteConnectPeerProvider.overrideWithValue(peerMeta)
                ],
                child: const PeerWidget(),
              ),
            ),
            cancelAction: viteConnect.reject,
          );
        },
        connected: (_) {
          if (prev?.connected == true) {
            return;
          }
          // FIXME
          Navigator.of(context).popUntil(ModalRoute.withName('/home'));
          Navigator.of(context).pushNamed('/vite_connect');
        },
        disconnected: (state) {
          var message = state.message;
          if (message == null || message.isEmpty) {
            message = 'Session disconnected';
          }
          if (prev?.connected == true) {
            UIUtil.showSnackbar('ViteConnect: $message', context);
          }
          Navigator.of(context).popUntil(ModalRoute.withName('/home'));
        },
      );
    });

    Future<void> scanQrCode() async {
      final qrCode = await UserDataUtil.scanQrCode(context);
      final data = qrCode?.code;
      if (data == null) {
        return;
      }

      // Check for ViteConnect URL
      if (data.startsWith('vc:')) {
        final viteConnect = ref.read(viteConnectProvider.notifier);
        viteConnect.connect(uri: data);
        return;
      }

      // Check for ViteUri
      final viteUri = ViteUri.tryParse(data);
      if (viteUri == null) {
        // Check for ViteAddress
        final address = ViteUtil.findAddressInString(data);
        if (address == null) {
          UIUtil.showSnackbar('Failed to parse qr code', context);
          return;
        }
        // Show SendSheet with address only
        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          widget: SendSheet(address: address),
        );
        return;
      }

      final tokenId = viteUri.token.tokenId;
      final tokenInfo = await ref.read(tokenInfoProvider(tokenId).future);
      final amount = Amount.value(viteUri.amount, tokenInfo: tokenInfo);

      Amount? fee;
      if (viteUri.fee != null) {
        fee = Amount.value(viteUri.fee!, tokenInfo: TokenInfo.vite);
      }

      // final selectedToken = ref.read(selectedTokenProvider.notifier);
      // selectedToken.update((_) => tokenInfo);

      final tx = SendTx.compose(
        address: account.address,
        toAddress: viteUri.address,
        amount: amount.raw,
        tokenInfo: tokenInfo,
        fee: fee?.raw,
        data: viteUri.data,
      );

      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendConfirmSheet(tx: tx),
      );
    }

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
                          style: styles.textStyleAccountName,
                        ),
                        AddressShortText(address: account.viteAddress),
                      ],
                    ),
                  ),
                  Consumer(builder: (context, ref, _) {
                    final connected = ref.watch(viteConnectStatusProvider);
                    if (connected) {
                      return AppIconButton(
                        icon: Icons.swap_horiz_outlined,
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/vite_connect'),
                      );
                    }
                    return AppIconButton(
                      icon: Icons.qr_code_scanner,
                      onPressed: scanQrCode,
                    );
                  }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                'Total Value',
                style: styles.textStyleTotalValue,
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
}
