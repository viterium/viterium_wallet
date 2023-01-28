import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:validators/validators.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/validation_text.dart';
import 'pow_providers.dart';
import 'pow_types.dart';

class PowAddSheet extends HookConsumerWidget {
  const PowAddSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    const title = 'Add PoW Server';

    final stateNotifier = useState(const PowAddSheetState());
    final state = stateNotifier.value;

    final nameController = useTextEditingController();
    final nameFocusNode = useFocusNode();

    final urlController = useTextEditingController();
    final urlFocusNode = useFocusNode();

    useEffect(() {
      nameFocusNode.addListener(() {
        stateNotifier.value = state.copyWith(
          showNameHint: !nameFocusNode.hasFocus,
        );
      });
      return;
    }, [nameFocusNode]);

    useEffect(() {
      urlFocusNode.addListener(() {
        stateNotifier.value = state.copyWith(
          showUrlHint: !urlFocusNode.hasFocus,
        );
      });
      return;
    }, [urlFocusNode]);

    bool inputValid() {
      final name = nameController.text;
      final url = sanitizeUri(urlController.text, 'http');
      bool valid = true;

      var state = stateNotifier.value;
      if (name.isEmpty) {
        state = state.copyWith(
          nameValidationText: 'Name is empty',
        );
        valid = false;
      }
      if (!isIP(url)) {
        final uri = Uri.tryParse(url);
        if (uri == null ||
            uri.host.isEmpty ||
            !(const {'http', 'https'}.contains(uri.scheme))) {
          state = state.copyWith(
            urlValidationText: 'Invalid URL',
          );
          valid = false;
        }
      }
      if (!valid) {
        stateNotifier.value = state;
      }
      return valid;
    }

    Future<void> addOption() async {
      if (!inputValid()) {
        return;
      }

      final name = nameController.text;
      final url = sanitizeUri(urlController.text, 'http');

      RpcClient? urlClient;
      var cancelled = false;

      AppDialogs.showInProgressDialog(
        context,
        'Adding PoW Server',
        'Please wait while verifying server',
        onCancel: () => cancelled = true,
      );

      try {
        urlClient = RpcClient.http(url);
        final address = Address.user(Uint8List(20));
        final powHash = computePowDataHash(address, Hash.empty);
        await urlClient.getPowNonce('67108863', powHash.hex);

        final config = PowConfig.custom(name: name, url: url);
        final powSettings = ref.read(powSettingsProvider.notifier);
        if (!cancelled) {
          // pop dialog
          Navigator.of(context).pop();
          final success = await powSettings.addConfig(config);
          if (success) {
            // pop sheet
            Navigator.of(context).pop();
            UIUtil.showSnackbar('PoW Server added', context);
          } else {
            UIUtil.showSnackbar('Failed to add PoW Server', context);
          }
        }
      } catch (e, st) {
        if (!cancelled) {
          // pop dialog
          Navigator.of(context).pop();
        }
        final log = ref.read(loggerProvider);
        log.e('Failed to add pow server', e, st);
        UIUtil.showSnackbar('Failed to add PoW Server', context);
      } finally {
        urlClient?.close();
      }
    }

    Future<void> scanUrl() async {
      FocusManager.instance.primaryFocus?.unfocus();
      final scanResult = await UserDataUtil.scanQrCode(context);
      if (scanResult?.code == null) {
        return;
      }
      urlController.text = scanResult!.code!;
    }

    Future<void> pasteUrl() async {
      final data = await UserDataUtil.getClipboardText(DataType.RAW);
      if (data != null) {
        urlController.text = data;
      }
    }

    return SheetWidget(
      title: title,
      mainWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          AppTextField(
            controller: nameController,
            focusNode: nameFocusNode,
            hintText: state.showNameHint ? 'Enter Server Name' : '',
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            inputFormatters: [
              LengthLimitingTextInputFormatter(20),
            ],
          ),
          ValidationText(state.nameValidationText),
          AppTextField(
            controller: urlController,
            focusNode: urlFocusNode,
            hintText: state.showUrlHint ? 'Enter URL' : '',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.url,
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: scanUrl,
            ),
            suffixButton: TextFieldButton(
              icon: AppIcons.paste,
              onPressed: pasteUrl,
            ),
          ),
          ValidationText(state.urlValidationText),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(children: [
          PrimaryButton(
            title: 'Add PoW Server',
            onPressed: addOption,
          ),
          const SizedBox(height: 16),
          PrimaryOutlineButton(
            title: l10n.cancel,
            onPressed: () => Navigator.pop(context),
          ),
        ]),
      ),
    );
  }
}
