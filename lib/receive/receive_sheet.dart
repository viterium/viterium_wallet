import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../app_providers.dart';
import '../send_sheet/account_address_widget.dart';
import '../widgets/buttons/primary_button.dart';
import '../widgets/buttons/primary_outline_button.dart';
import '../widgets/buttons/success_button.dart';
import '../widgets/sheet_handle.dart';
import 'share_card.dart';

class ReceiveSheet extends HookConsumerWidget {
  const ReceiveSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    final account = ref.watch(selectedAccountProvider);
    final address = account.viteAddress;

    final shareCardKey = useRef(GlobalKey());
    final showShareCard = useState(false);
    final addressCopied = useState(false);
    final addressCopiedTimer = useRef<Timer?>(null);

    useFuture(precacheImage(AssetImage('assets/vite.png'), context));

    Future<Uint8List?> _capturePng() async {
      if (shareCardKey.value.currentContext == null) {
        return null;
      }
      RenderRepaintBoundary boundary =
          shareCardKey.value.currentContext!.findRenderObject()
              as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 5);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      return byteData?.buffer.asUint8List();
    }

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: account.viteAddress));
      addressCopied.value = true;
      addressCopiedTimer.value?.cancel();
      addressCopiedTimer.value = Timer(
        const Duration(milliseconds: 800),
        () => addressCopied.value = false,
      );
    }

    Future<void> shareAddress() async {
      final lockDisabled = ref.read(lockDisabledProvider.notifier);
      lockDisabled.state = true;
      try {
        showShareCard.value = true;
        await Future.delayed(Duration(milliseconds: 50));
        if (!showShareCard.value) {
          return;
        }
        final byteData = await _capturePng();
        if (byteData != null) {
          if (kIsWeb) {
            final file = await XFile.fromData(
              byteData,
              name: '$address.png',
              mimeType: 'image/png',
            );
            Share.shareXFiles([file], text: account.viteAddress);
          } else {
            final receiveCardFileName = "share_${account.viteAddress}.png";
            final directory = await getTemporaryDirectory();
            final filePath = "${directory.path}/$receiveCardFileName";
            final f = File(filePath);
            final file = await f.writeAsBytes(byteData);
            Share.shareXFiles([XFile(file.path)]);
          }
        } else {
          Share.share(account.viteAddress);
        }
        showShareCard.value = false;
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to share address', e, st);
      }

      lockDisabled.state = false;
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 60, height: 60),
              Column(
                children: [const SheetHandle(), const AccountAddressWidget()],
              ),
              const SizedBox(width: 60, height: 60),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 28,
                left: 20,
                right: 20,
              ),
              child: Center(
                child: Stack(
                  children: [
                    Visibility(
                      visible: showShareCard.value,
                      child: Container(
                        child: AppShareCard(globalKey: shareCardKey.value),
                        alignment: const AlignmentDirectional(0, 0),
                      ),
                    ),
                    // This is for hiding the share card
                    Center(
                      child: Container(
                        width: 260,
                        height: 150,
                        color: theme.backgroundDark,
                      ),
                    ),
                    Center(
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 280),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: theme.primary, width: 2),
                        ),
                        child: QrImageView(
                          data: 'vite:$address',
                          gapless: false,
                          backgroundColor: Colors.white,
                          errorCorrectionLevel: QrErrorCorrectLevel.Q,
                          semanticsLabel: 'QR code for address $address',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                Visibility(
                  visible: !addressCopied.value,
                  replacement: SuccessButton(title: l10n.addressCopied),
                  child: PrimaryButton(
                    title: l10n.copyAddress,
                    onPressed: copyAddress,
                  ),
                ),
                const SizedBox(height: 16),
                PrimaryOutlineButton(
                  title: l10n.addressShare,
                  disabled: showShareCard.value,
                  onPressed: shareAddress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
