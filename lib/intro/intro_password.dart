import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_styles.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';

class IntroPassword extends HookConsumerWidget {
  const IntroPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final createFocusNode = useFocusNode();
    final createController = useTextEditingController();
    final confirmFocusNode = useFocusNode();
    final confirmController = useTextEditingController();
    final passwordError = useState('');
    final passwordsMatch = useState(false);

    final textColor = passwordsMatch.value ? theme.primary : theme.text;
    final textFieldStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: textColor,
      fontFamily: kFontFamily,
    );

    void inputChanged(_) {
      passwordError.value = '';
      passwordsMatch.value = confirmController.text == createController.text;
    }

    bool validateInputs() {
      if (createController.text.isEmpty || confirmController.text.isEmpty) {
        passwordError.value = localization.passwordBlank;
        return false;
      } else if (createController.text != confirmController.text) {
        passwordError.value = localization.passwordsDontMatch;
        return false;
      }
      return true;
    }

    void submitAndContinue() {
      final valid = validateInputs();
      if (!valid) return;

      final intro = ref.read(introStateProvider.notifier);
      intro.setPassword(confirmController.text);
    }

    void goBack() {
      final intro = ref.read(introStateProvider.notifier);
      intro.goBack();
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: TapOutsideUnfocus(
        child: SafeArea(
          minimum: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.035,
            top: MediaQuery.of(context).size.height * 0.075,
          ),
          child: Column(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20),
                      child: const IntroBackButton(),
                    ),
                  ]),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                    alignment: const AlignmentDirectional(-1, 0),
                    child: AutoSizeText(
                      localization.createAPasswordHeader,
                      maxLines: 3,
                      stepGranularity: 0.5,
                      style: styles.textStyleHeaderColored,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 16),
                    alignment: const AlignmentDirectional(-1, 0),
                    child: AutoSizeText(
                      localization.passwordWillBeRequiredToOpenParagraph,
                      style: styles.textStyleParagraph,
                      maxLines: 5,
                      stepGranularity: 0.5,
                    ),
                  ),
                  Expanded(
                    child: Column(children: [
                      AppTextField(
                        topMargin: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        focusNode: createFocusNode,
                        controller: createController,
                        textInputAction: TextInputAction.next,
                        maxLines: 1,
                        autocorrect: false,
                        onChanged: inputChanged,
                        hintText: localization.createPasswordHint,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: textFieldStyle,
                        onSubmitted: (text) => confirmFocusNode.requestFocus(),
                      ),
                      // Confirm Password Text Field
                      AppTextField(
                        topMargin: 20,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        focusNode: confirmFocusNode,
                        controller: confirmController,
                        textInputAction: TextInputAction.done,
                        maxLines: 1,
                        autocorrect: false,
                        onChanged: inputChanged,
                        hintText: localization.confirmPasswordHint,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: textFieldStyle,
                      ),
                      // Error Text
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(children: [
                PrimaryButton(
                  title: localization.nextButton,
                  onPressed: submitAndContinue,
                ),
                const SizedBox(height: 16),
                PrimaryOutlineButton(
                  title: localization.goBackButton,
                  onPressed: goBack,
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
