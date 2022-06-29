import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../wallet_signer/wallet_signer.dart';
import '../widgets/buttons.dart';
import '../widgets/data_encoded_card.dart';
import '../widgets/data_memo_card.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import 'viteconnect_providers.dart';
import 'viteconnect_types.dart';

final kSignMessagePrefix = stringToBytesUtf8('Vite Signed Message:\n');

class ViteConnectSignSheet extends HookConsumerWidget {
  final VCSignRequest request;
  final VCSignResponse? response;

  const ViteConnectSignSheet({
    Key? key,
    required this.request,
    this.response,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final response = this.response;
    final data = request.data;

    final message = useMemoized(() {
      try {
        return bytesUtf8ToString(data);
      } catch (_) {
        return null;
      }
    }, [data]);

    Future<void> signData() async {
      try {
        AppDialogs.showInProgressDialog(
          context,
          'Signing Message',
          'Please wait.',
        );

        final address = ref.read(selectedAddressProvider);
        final signer = ref.read(walletSignerProvider);

        final canSign = await signer.canSignForAddress(address);
        if (!canSign) {
          throw Exception('Can\'t sign for address $address');
        }

        final data = Uint8List.fromList(kSignMessagePrefix + request.data);
        final hash = digest(data: data);

        final publicKey = await signer.publicKeyOfAddress(address);
        final signature = await signer.sign(hash, address);

        final signedData = SignedData(
          publicKey: publicKey,
          signature: signature,
        );

        final viteConnect = ref.read(viteConnectProvider.notifier);
        final response = VCSignResponse.confirmed(signedData);
        viteConnect.onSignAction(request, response);

        Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to sign message', e, st);

        UIUtil.showSnackbar('Failed to sign message', context);

        Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
      }
    }

    Future<void> onConfirm() async {
      // Authenticate
      final authUtil = ref.read(authUtilProvider);

      final message = 'Sign Message';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth) {
        await signData();
      }
    }

    Future<void> onCancel() async {
      final viteConnect = ref.read(viteConnectProvider.notifier);
      final response = VCSignResponse.cancelled();
      viteConnect.onSignAction(request, response);

      Navigator.of(context).popUntil(ModalRoute.withName('/vite_connect'));
    }

    return SheetWidget(
      title: 'Sign Message',
      mainWidget: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                if (response != null)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      response.when(
                        confirmed: (_) => 'Request Confirmed',
                        cancelled: () => 'Request Cancelled',
                      ),
                      style: styles.remoteMessageCardTitle,
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Message'.toUpperCase(),
                    style: styles.textStyleSubHeader,
                  ),
                ),
                if (message != null) ...[
                  DataMemoCard(memo: message),
                ] else
                  DataEncodedCard(data: data),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const ListTopGradient(),
          const ListBottomGradient(),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: response != null
            ? PrimaryOutlineButton(
                title: l10n.close,
                onPressed: () => Navigator.of(context).pop(),
              )
            : Column(
                children: [
                  PrimaryButton(
                    title: l10n.confirm,
                    onPressed: onConfirm,
                  ),
                  const SizedBox(height: 16),
                  PrimaryOutlineButton(
                    title: l10n.cancel,
                    onPressed: onCancel,
                  ),
                ],
              ),
      ),
    );
  }
}
