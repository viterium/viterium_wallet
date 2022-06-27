import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/core.dart';
import 'package:viteconnect/viteconnect.dart';
import 'package:viterium_wallet/app_providers.dart';
import 'package:viterium_wallet/tokens/token_info_provider.dart';
import 'package:viterium_wallet/util/ui_util.dart';
import 'package:viterium_wallet/viteconnect/peer_widget.dart';
import 'package:viterium_wallet/viteconnect/viteconnect_confirm_sheet.dart';
import 'package:viterium_wallet/viteconnect/viteconnect_types.dart';

import '../settings_drawer/account_widget.dart';
import '../widgets/dialog.dart';
import '../widgets/selected_wallet_button.dart';
import '../widgets/sheet_util.dart';
import 'viteconnect_providers.dart';

final autoSignEnabledProvider = StateProvider((ref) => false);

class ViteConnectPage extends HookConsumerWidget {
  const ViteConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final peer = ref.watch(viteConnectPeerProvider);
    final state = ref.watch(viteConnectProvider);

    ref.listen<JsonRpcRequest?>(
        viteConnectProvider.select(
          (value) => value.mapOrNull<JsonRpcRequest?>(
            connected: (value) => value.currentRequest,
          ),
        ), (previous, next) async {
      if (next == null) {
        return;
      }

      try {
        final block = next.params?[0]['block'];
        final transaction = RawTransaction.fromJson(block);
        final address = ref.read(selectedAddressProvider);
        if (transaction.address != address) {
          UIUtil.showSnackbar('Address mismatch', context);
          return;
        }

        final toAddress = transaction.toAddress;
        if (toAddress == null) {
          UIUtil.showSnackbar('Missing destination address', context);
          return;
        }

        final tokenId = transaction.token?.tokenId ?? viteTokenId;
        final tokenInfo = await ref.read(tokenInfoProvider(tokenId).future);

        final txRequest = VCTxRequest.parse(
          transaction,
          id: next.id,
          tokenInfo: tokenInfo,
        );

        Sheets.showAppHeightNineSheet(
          context: context,
          theme: theme,
          widget: ViteConnectConfirmSheet(txRequest: txRequest),
        );
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Invalid ViteConnect request', e, st);
        UIUtil.showSnackbar('Invalid ViteConnect request', context);
        return;
      }
    });

    void disconnect() {
      final autoSign = ref.read(autoSignEnabledProvider.notifier);
      autoSign.state = false;

      final viteConnect = ref.read(viteConnectProvider.notifier);
      viteConnect.disconnect();
    }

    void disconnectConfirm() {
      state.mapOrNull(connected: (state) {
        AppDialogs.showConfirmDialog(
          context,
          'ViteConnect',
          '',
          'Disconnect'.toUpperCase(),
          disconnect,
          contentWidget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.backgroundDarkest,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [theme.boxShadow],
            ),
            child: const PeerWidget(),
          ),
        );
      });
    }

    Future<void> setAutoSign(bool value) async {
      final notifier = ref.read(autoSignEnabledProvider.notifier);
      notifier.state = value;
    }

    return Scaffold(
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 24,
                    icon: Icon(
                      Icons.arrow_back,
                      color: theme.text,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Column(children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 8,
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'ViteConnect',
                          style: styles.textStyleHeader(context),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                  IconButton(
                    iconSize: 24,
                    icon: Icon(
                      Icons.power_settings_new_outlined,
                      color: theme.text,
                    ),
                    onPressed: disconnectConfirm,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 8),
                        child: Text(
                          'Connected Account'.toUpperCase(),
                          style: styles.textStyleSubHeader,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: const SelectedWalletButton(
                              size: const Size(72, 56),
                            ),
                          ),
                          const SizedBox(width: 20),
                          const AccountWidget(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      if (peer != null) ...[
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 8),
                          child: Text(
                            'Connected To'.toUpperCase(),
                            style: styles.textStyleSubHeader,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: theme.backgroundDarkest,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [theme.boxShadow],
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 18,
                          ),
                          child: const PeerWidget(),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(start: 8),
                              child: Text(
                                'Auto Sign Requests'.toUpperCase(),
                                style: styles.textStyleSubHeader,
                              ),
                            ),
                            Consumer(builder: (context, ref, _) {
                              final autoSign =
                                  ref.watch(autoSignEnabledProvider);
                              return CupertinoSwitch(
                                activeColor: theme.primary,
                                value: autoSign,
                                onChanged: setAutoSign,
                              );
                            }),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(start: 8),
                              child: Text(
                                'Requests'.toUpperCase(),
                                style: styles.textStyleSubHeader,
                              ),
                            ),
                            Consumer(builder: (context, ref, _) {
                              final requests =
                                  ref.watch(viteConnectRequestHistoryProvider);
                              return Text(
                                '${requests.length}',
                                style: styles.textStyleSubHeader,
                              );
                            }),
                          ],
                        ),
                        Consumer(builder: (context, ref, _) {
                          final requests =
                              ref.watch(viteConnectRequestHistoryProvider);
                          if (requests.isEmpty) {
                            return Text('No Requests so far');
                          }
                          return ListView.builder(
                            itemCount: requests.length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('Contract Call'),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
