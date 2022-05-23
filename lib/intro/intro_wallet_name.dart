import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_styles.dart';
import '../core/core_providers.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';

class IntroWalletName extends HookConsumerWidget {
  const IntroWalletName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final localization = ref.watch(l10nProvider);

    final nameFocusNode = useFocusNode();
    final nameController = useTextEditingController();

    final nameError = useState('');

    final textFieldStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: theme.text,
      fontFamily: kFontFamily,
    );

    void inputChanged(_) {
      nameError.value = '';
    }

    void submitAndContinue() {
      final name = nameController.text;

      if (name.isEmpty) {
        nameError.value = 'Wallet name cannot be empty';
        return;
      }

      final intro = ref.read(introStateProvider.notifier);
      intro.setName(nameController.text);
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
              child: Column(children: [
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
                    'Wallet name',
                    maxLines: 3,
                    stepGranularity: 0.5,
                    style: styles.textStyleHeaderColored,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 16),
                  alignment: const AlignmentDirectional(-1, 0),
                  child: AutoSizeText(
                    'Enter a name to identify this wallet.',
                    style: styles.textStyleParagraph,
                    textAlign: TextAlign.start,
                    maxLines: 5,
                    stepGranularity: 0.5,
                  ),
                ),
                Expanded(
                  child: Column(children: [
                    AppTextField(
                      topMargin: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      focusNode: nameFocusNode,
                      controller: nameController,
                      maxLines: 1,
                      autocorrect: false,
                      textCapitalization: TextCapitalization.words,
                      onChanged: inputChanged,
                      hintText: 'Wallet name',
                      keyboardType: TextInputType.text,
                      style: textFieldStyle,
                    ),
                    Container(
                      alignment: AlignmentDirectional(0, 0),
                      margin: EdgeInsets.only(top: 3),
                      child: Text(
                        nameError.value,
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
