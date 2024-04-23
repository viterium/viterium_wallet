import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../core/vite_uri.dart';
import '../send_sheet/balance_text_widget.dart';
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
import '../widgets/app_icon_button.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_util.dart';

class ViteConnectButton extends HookConsumerWidget {
  const ViteConnectButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final connected = ref.watch(viteConnectStatusProvider);
    final viteConnect = ref.watch(viteConnectProvider.notifier);

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

    Future<void> handleData(String data) async {
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

      final amountValue = viteUri.amount;
      if (amountValue == null) {
        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          widget: SendSheet(address: viteUri.address.viteAddress),
        );
        return;
      }
      final token = ref.read(selectedTokenProvider);
      final tokenId = viteUri.token?.tokenId ?? token.tokenId;
      final tokenInfo = await ref.read(tokenInfoProvider(tokenId).future);
      final amount = Amount.value(amountValue, tokenInfo: tokenInfo);

      Amount? fee;
      if (viteUri.fee != null) {
        fee = Amount.value(viteUri.fee!, tokenInfo: TokenInfo.vite);
      }

      final address = ref.read(selectedAddressProvider);

      final tx = SendTx.compose(
        address: address,
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

    Future<void> scanQrCode() async {
      final qrCode = await UserDataUtil.scanQrCode(context);
      final data = qrCode?.code;
      if (data == null) {
        return;
      }

      await handleData(data);
    }

    useEffect(() {
      final notifier = ref.read(appLinkProvider.notifier);
      return notifier.addListener((appLink) {
        if (appLink == null) {
          return;
        }
        final auth = ref.read(walletAuthNotifierProvider);
        if (auth == null || auth.walletLocked == true) {
          return;
        }
        final uri = ViteUri.tryParse(appLink);

        Future.microtask(() {
          if (uri == null) {
            UIUtil.showSnackbar('Vite URI is invalid', context);
            return;
          }

          handleData(appLink);

          notifier.state = null;
        });
      }, fireImmediately: true);
    }, const []);

    if (connected) {
      return AppIconButton(
        icon: Icons.swap_horiz_outlined,
        onPressed: () => Navigator.of(context).pushNamed('/vite_connect'),
      );
    }
    return AppIconButton(
      icon: Icons.qr_code_scanner,
      onPressed: scanQrCode,
    );
  }
}
