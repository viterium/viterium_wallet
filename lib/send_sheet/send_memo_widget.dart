import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../util/user_data_util.dart';
import '../widgets/app_text_field.dart';
import 'send_sheet_providers.dart';

class SendMemoWidget extends ConsumerStatefulWidget {
  const SendMemoWidget({Key? key}) : super(key: key);

  @override
  _SendMemoWidgetState createState() => _SendMemoWidgetState();
}

class _SendMemoWidgetState extends ConsumerState<SendMemoWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);

    final state = ref.watch(memoStateProvider);
    final notifier = ref.watch(memoStateProvider.notifier);
    return AppTextField(
      padding: state.validAndUnfocused
          ? EdgeInsets.symmetric(horizontal: 25, vertical: 15)
          : EdgeInsets.zero,
      focusNode: notifier.focusNode,
      controller: notifier.controller,
      cursorColor: theme.primary,
      inputFormatters: [
        LengthLimitingTextInputFormatter(120),
      ],
      textInputAction: TextInputAction.done,
      maxLines: null,
      autocorrect: false,
      hintText: localization.enterMemo,
      prefixButton: TextFieldButton(
        icon: AppIcons.scan,
        onPressed: () async {
          final qr = await UserDataUtil.scanQrCode(context);
          final data = qr?.code;
          if (data == null) {
            return;
          }
          notifier.controller.text = data;
        },
      ),
      fadePrefixOnCondition: true,
      prefixShowFirstCondition: true,
      suffixButton: TextFieldButton(
        icon: AppIcons.paste,
        onPressed: () {
          final state = ref.read(memoStateProvider);
          final notifier = ref.read(memoStateProvider.notifier);

          if (!state.pasteButtonVisible) {
            return;
          }
          Clipboard.getData("text/plain").then((ClipboardData? data) {
            if (data == null || data.text == null) {
              return;
            }
            notifier.controller.text = data.text!;
          });
        },
      ),
      fadeSuffixOnCondition: true,
      suffixShowFirstCondition: state.pasteButtonVisible,
      // style: _sendAddressStyle == AddressStyle.TEXT60
      //     ? styles.textStyleAddressText60
      //     : _sendAddressStyle == AddressStyle.TEXT90
      //         ? styles.textStyleAddressText90
      //         : styles.textStyleAddressPrimary,
      onChanged: (text) {
        final notifier = ref.read(memoStateProvider.notifier);
        notifier.updateValidationText('');
      },
      overrideTextFieldWidget: state.validAndUnfocused
          ? GestureDetector(
              onTap: () {
                final notifier = ref.read(memoStateProvider.notifier);
                notifier.updateState(
                  state.copyWith(validAndUnfocused: false),
                );
                Future.delayed(Duration(milliseconds: 50), () {
                  FocusScope.of(context).requestFocus(notifier.focusNode);
                });
              },
              child: Text(notifier.controller.text),
            )
          : null,
    );
  }
}
