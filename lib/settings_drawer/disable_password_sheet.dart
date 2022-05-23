import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_styles.dart';
import '../util/ui_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';

class DisablePasswordSheet extends HookConsumerWidget {
  const DisablePasswordSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final passwordFocusNode = useFocusNode();
    final passwordController = useTextEditingController();
    final passwordError = useState('');

    Future<void> submitAndDecrypt() async {
      final password = passwordController.text;
      if (password.isEmpty) {
        passwordError.value = localization.passwordBlank;
        return;
      }
      try {
        final auth = ref.read(walletAuthProvider.notifier);
        await auth.removePassword(password);

        UIUtil.showSnackbar(localization.disablePasswordSuccess, context);
        Navigator.of(context).pop();
      } catch (e) {
        passwordError.value = localization.invalidPassword;
      }
    }

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: localization.disablePasswordSheetHeader,
        mainWidget: Column(children: [
          Container(
            margin: EdgeInsetsDirectional.only(start: 40, end: 40, top: 16),
            child: AutoSizeText(
              localization.passwordNoLongerRequiredToOpenParagraph,
              style: styles.textStyleParagraph,
              maxLines: 5,
              stepGranularity: 0.5,
            ),
          ),
          Column(children: [
            AppTextField(
              topMargin: 30,
              padding: EdgeInsetsDirectional.only(start: 16, end: 16),
              focusNode: passwordFocusNode,
              controller: passwordController,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              autocorrect: false,
              onChanged: (String newText) {
                passwordError.value = '';
              },
              hintText: localization.enterPasswordHint,
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: theme.text,
                fontFamily: kFontFamily,
              ),
            ),
            Container(
              alignment: AlignmentDirectional(0, 0),
              margin: EdgeInsets.only(top: 3),
              child: Text(
                passwordError.value,
                style: TextStyle(
                  fontSize: 14,
                  color: theme.primary,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
        ]),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
            PrimaryButton(
              title: localization.disablePasswordSheetHeader,
              onPressed: submitAndDecrypt,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: localization.close,
              onPressed: () => Navigator.pop(context),
            ),
          ]),
        ),
      ),
    );
  }
}
