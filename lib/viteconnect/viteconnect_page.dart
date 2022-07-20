import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/core.dart';
import 'package:vite/utils.dart';

import '../app_providers.dart';
import '../settings_drawer/account_widget.dart';
import '../tokens/token_info_provider.dart';
import '../transactions/send_tx.dart';
import '../util/ui_util.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_util.dart';
import 'peer_widget.dart';
import 'viteconnect_providers.dart';
import 'viteconnect_requests_widget.dart';
import 'viteconnect_sign_sheet.dart';
import 'viteconnect_tx_sheet.dart';
import 'viteconnect_types.dart';

final autoSignEnabledProvider = StateProvider((ref) => false);

class ViteConnectPage extends HookConsumerWidget {
  const ViteConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final peer = ref.watch(viteConnectPeerProvider);
    final state = ref.watch(viteConnectProvider);

    void handleRequest(VCRequest request) {
      request.when(
        transaction: (request) async {
          try {
            final block = request.params?.first['block'];
            final rawTx = RawTransaction.fromJson(block);
            final address = ref.read(selectedAddressProvider);

            final tokenId = rawTx.token?.tokenId ?? viteTokenId;
            final tokenInfo = await ref.read(tokenInfoProvider(tokenId).future);

            final tx = SendTx.validated(rawTx: rawTx, tokenInfo: tokenInfo);

            if (tx.address != address) {
              throw Exception('Address mismatch');
            }

            final txRequest = VCTxRequest(
              id: request.id,
              tx: tx,
            );

            Sheets.showAppHeightNineSheet(
              context: context,
              theme: theme,
              widget: ViteConnectTxSheet(request: txRequest),
            );
          } catch (e, st) {
            final log = ref.read(loggerProvider);
            log.e('Invalid transaction request', e, st);

            UIUtil.showSnackbar(e.toString(), context);

            final viteConnect = ref.read(viteConnectProvider.notifier);
            viteConnect.onInvalidRequest(request, e);
          }
        },
        signMessage: (request) {
          try {
            final message = request.params?.first['message'];
            final signRequest = VCSignRequest(
              id: request.id,
              data: base64ToBytes(message),
            );
            Sheets.showAppHeightEightSheet(
              context: context,
              theme: theme,
              widget: ViteConnectSignSheet(request: signRequest),
            );
          } catch (e, st) {
            final log = ref.read(loggerProvider);
            log.e('Invalid sign message request', e, st);

            UIUtil.showSnackbar('Invalid sign message request', context);

            final viteConnect = ref.read(viteConnectProvider.notifier);
            viteConnect.onInvalidRequest(request, e);
          }
        },
      );
    }

    ref.listen<VCRequest?>(viteConnectCurrentRequestProvider, (previous, next) {
      if (next == null) return;
      handleRequest(next);
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

    // Future<void> setAutoSign(bool value) async {
    //   final notifier = ref.read(autoSignEnabledProvider.notifier);
    //   notifier.state = value;
    // }

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
                  AppIconButton(
                    //iconSize: 24,
                    icon: Icons.arrow_back,
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
                  AppIconButton(
                    icon: Icons.power_settings_new_outlined,
                    onPressed: disconnectConfirm,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsetsDirectional.only(start: 8),
                      //   child: Text(
                      //     'Connected Account'.toUpperCase(),
                      //     style: styles.textStyleSubHeader,
                      //   ),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 4),
                          //   child: const SelectedWalletButton(),
                          // ),
                          //const SizedBox(width: 20),
                          const AccountWidget(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      if (peer != null) ...[
                        Text(
                          'Connected To'.toUpperCase(),
                          style: styles.textStyleSubHeader,
                        ),
                        const SizedBox(height: 16),
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
                        // const SizedBox(height: 20),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Padding(
                        //       padding:
                        //           const EdgeInsetsDirectional.only(start: 8),
                        //       child: Text(
                        //         'Auto Sign Requests'.toUpperCase(),
                        //         style: styles.textStyleSubHeader,
                        //       ),
                        //     ),
                        //     Consumer(builder: (context, ref, _) {
                        //       final autoSign =
                        //           ref.watch(autoSignEnabledProvider);
                        //       return CupertinoSwitch(
                        //         activeColor: theme.primary,
                        //         value: autoSign,
                        //         onChanged: setAutoSign,
                        //       );
                        //     }),
                        //   ],
                        // ),

                        const SizedBox(height: 30),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Requests'.toUpperCase(),
                            style: styles.textStyleSubHeader,
                          ),
                        ),
                        Expanded(
                          child: ViteConnectRequestsWidget(
                            onItemSelect: (item) {
                              item.when(
                                tx: (request, response, _) =>
                                    Sheets.showAppHeightNineSheet(
                                  context: context,
                                  theme: theme,
                                  widget: ViteConnectTxSheet(
                                    request: request,
                                    response: response,
                                  ),
                                ),
                                sign: (request, response, _) =>
                                    Sheets.showAppHeightEightSheet(
                                  context: context,
                                  theme: theme,
                                  widget: ViteConnectSignSheet(
                                    request: request,
                                    response: response,
                                  ),
                                ),
                                invalid: (_, __, ___) {},
                                current: handleRequest,
                              );
                            },
                          ),
                        ),
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
