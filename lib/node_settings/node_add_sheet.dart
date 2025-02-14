import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:validators/validators.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/random_util.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/validation_text.dart';
import 'node_providers.dart';
import 'node_types.dart';

class NodeAddSheet extends HookConsumerWidget {
  const NodeAddSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final stateNotifier = useState(const AddNodeSheetState());
    final state = stateNotifier.value;

    final nameController = useTextEditingController();
    final nameFocusNode = useFocusNode();

    final httpController = useTextEditingController();
    final httpFocusNode = useFocusNode();

    final wsController = useTextEditingController();
    final wsFocusNode = useFocusNode();

    useEffect(() {
      final listener = () {
        stateNotifier.value = state.copyWith(
          showNameHint: !nameFocusNode.hasFocus,
        );
      };
      nameFocusNode.addListener(listener);
      return () => nameFocusNode.removeListener(listener);
    }, [nameFocusNode]);

    useEffect(() {
      final listener = () {
        stateNotifier.value = state.copyWith(
          showHttpHint: !httpFocusNode.hasFocus,
        );
      };
      httpFocusNode.addListener(listener);
      return () => httpFocusNode.removeListener(listener);
    }, [httpFocusNode]);

    useEffect(() {
      final listener = () {
        stateNotifier.value = state.copyWith(showWsHint: !wsFocusNode.hasFocus);
      };
      wsFocusNode.addListener(listener);
      return () => wsFocusNode.removeListener(listener);
    }, [wsFocusNode]);

    bool inputValid() {
      final name = nameController.text;
      final http = sanitizeUri(httpController.text, 'http');
      final ws = sanitizeUri(wsController.text, 'ws');
      bool valid = true;

      var state = stateNotifier.value;
      if (name.isEmpty) {
        state = state.copyWith(nameValidationText: 'Node name is empty');
        valid = false;
      }
      if (!isIP(http)) {
        final httpUri = Uri.tryParse(http);
        if (httpUri == null ||
            httpUri.host.isEmpty ||
            !(const {'http', 'https'}.contains(httpUri.scheme))) {
          state = state.copyWith(httpValidationText: 'Invalid HTTP URL');
          valid = false;
        }
      }
      if (!isIP(ws)) {
        final wsUri = Uri.tryParse(ws);
        if (wsUri == null ||
            wsUri.host.isEmpty ||
            !(const {'ws', 'wss'}.contains(wsUri.scheme))) {
          state = state.copyWith(wsValidationText: 'Invalid WS URL');
          valid = false;
        }
      }
      if (!valid) {
        stateNotifier.value = state;
      }
      return valid;
    }

    Future<void> addNode() async {
      if (!inputValid()) {
        return;
      }

      final name = nameController.text;
      final http = sanitizeUri(httpController.text, 'http');
      final ws = sanitizeUri(wsController.text, 'ws');

      RpcClient? wsClient;
      RpcClient? httpClient;
      var cancelled = false;

      AppDialogs.showInProgressDialog(
        context,
        'Adding Vite node',
        'Please wait while contacting node',
        onCancel: () => cancelled = true,
      );

      try {
        httpClient = RpcClient.http(http);
        final httpNodeInfo = await httpClient.net.getNodeInfo();

        wsClient = RpcClient.ws(ws);
        final wsNodeInfo = await wsClient.net.getNodeInfo();
        if (httpNodeInfo.netId != wsNodeInfo.netId) {
          throw Exception('Net ids do not match');
        }

        final network =
            httpNodeInfo.netId == 0
                ? ViteNetwork.devnet
                : httpNodeInfo.netId == 1
                ? ViteNetwork.mainnet
                : ViteNetwork.testnet;
        final notifier = ref.read(viteNodeSettingsProvider.notifier);
        final config = ViteNodeConfig(
          id: RandomUtil.generateKey(),
          name: name,
          http: http,
          ws: ws,
          network: network,
        );

        if (!cancelled) {
          Navigator.of(context).pop();
          final success = await notifier.addOption(config);
          if (success) {
            // pop sheet
            Navigator.of(context).pop();
            UIUtil.showSnackbar('Vite node added', context);
          } else {
            UIUtil.showSnackbar('Failed to add Vite node', context);
          }
        }
      } catch (e, st) {
        if (!cancelled) {
          // pop dialog
          Navigator.of(context).pop();
        }
        final log = ref.read(loggerProvider);
        log.e('Failed to add node', e, st);
        UIUtil.showSnackbar('Failed to add node', context);
      } finally {
        wsClient?.close();
        httpClient?.close();
      }
    }

    Future<void> scanHttp() async {
      FocusManager.instance.primaryFocus?.unfocus();
      final scanResult = await UserDataUtil.scanQrCode(context);
      if (scanResult?.code == null) {
        return;
      }
      httpController.text = scanResult!.code!;
    }

    Future<void> pasteHttp() async {
      final data = await UserDataUtil.getClipboardText(DataType.RAW);
      if (data != null) {
        httpController.text = data;
      }
    }

    Future<void> scanWs() async {
      FocusManager.instance.primaryFocus?.unfocus();
      final scanResult = await UserDataUtil.scanQrCode(context);
      if (scanResult?.code == null) {
        return;
      }
      wsController.text = scanResult!.code!;
    }

    Future<void> pasteWs() async {
      final data = await UserDataUtil.getClipboardText(DataType.RAW);
      if (data != null) {
        wsController.text = data;
      }
    }

    return SheetWidget(
      title: l10n.addNode,
      mainWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          AppTextField(
            controller: nameController,
            focusNode: nameFocusNode,
            hintText: state.showNameHint ? 'Enter Node Name' : '',
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            inputFormatters: [LengthLimitingTextInputFormatter(20)],
          ),
          ValidationText(state.nameValidationText),
          AppTextField(
            controller: httpController,
            focusNode: httpFocusNode,
            hintText: state.showHttpHint ? 'Enter HTTP URL' : '',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.url,
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: scanHttp,
            ),
            suffixButton: TextFieldButton(
              icon: AppIcons.paste,
              onPressed: pasteHttp,
            ),
          ),
          ValidationText(state.httpValidationText),
          AppTextField(
            controller: wsController,
            focusNode: wsFocusNode,
            hintText: state.showWsHint ? 'Enter WebSocket URL' : '',
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.url,
            prefixButton: TextFieldButton(
              icon: AppIcons.scan,
              onPressed: scanWs,
            ),
            suffixButton: TextFieldButton(
              icon: AppIcons.paste,
              onPressed: pasteWs,
            ),
          ),
          ValidationText(state.wsValidationText),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(title: l10n.add, onPressed: addNode),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.cancel,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
