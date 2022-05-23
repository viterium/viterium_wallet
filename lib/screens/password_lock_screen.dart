import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_styles.dart';
import '../util/caseconverter.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/logout_button.dart';
import '../widgets/tap_outside_unfocus.dart';

class PasswordLockScreen extends HookConsumerWidget {
  final Future<bool> Function(String)? validator;

  const PasswordLockScreen({
    Key? key,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final enterFocusNode = useFocusNode();
    final enterController = useTextEditingController();
    final passwordError = useState<String>('');

    Future<void> validateAndUnlock() async {
      try {
        final validator = this.validator;
        final password = enterController.text;
        if (validator == null) {
          final walletAuth = ref.read(walletAuthNotifierProvider);
          if (walletAuth != null) {
            await walletAuth.unlockWithPassword(password);
          }
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        } else {
          final valid = await validator(password);
          if (!valid) {
            throw Exception('Invalid password');
          }
          Navigator.of(context).pop(true);
        }
      } catch (e) {
        final l10n = ref.read(l10nProvider);
        passwordError.value = l10n.invalidPassword;
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: TapOutsideUnfocus(
        child: Container(
          color: theme.backgroundDark,
          width: double.infinity,
          child: SafeArea(
            minimum: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.035,
            ),
            child: Column(children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 12, 4),
                  child: validator != null
                      ? const BackButton()
                      : const LogoutButton(),
                ),
              ]),
              Expanded(
                child: Column(children: [
                  Container(
                    child: Icon(
                      AppIcons.lock,
                      size: 80,
                      color: theme.primary,
                    ),
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ),
                  Container(
                    child: Text(
                      CaseChange.toUpperCase(localization.locked, ref),
                      style: styles.textStyleHeaderColored,
                    ),
                    margin: const EdgeInsets.only(top: 10),
                  ),
                  Expanded(
                    child: Column(children: [
                      AppTextField(
                        topMargin: 30,
                        padding: EdgeInsetsDirectional.only(
                          start: 16,
                          end: 16,
                        ),
                        focusNode: enterFocusNode,
                        controller: enterController,
                        textInputAction: TextInputAction.go,
                        autofocus: true,
                        onChanged: (String newText) {
                          passwordError.value = '';
                        },
                        onSubmitted: (value) {
                          FocusScope.of(context).unfocus();
                          validateAndUnlock();
                        },
                        hintText: localization.enterPasswordHint,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: theme.primary,
                          fontFamily: kFontFamily,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional(0, 0),
                        margin: const EdgeInsets.only(top: 3),
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
                  ),
                ]),
              ),
              PrimaryButton(
                title: localization.unlock,
                margin: const EdgeInsets.fromLTRB(28, 8, 28, 0),
                onPressed: validateAndUnlock,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
