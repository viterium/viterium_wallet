import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/buttons.dart';
import 'intro_back_button.dart';
import 'intro_providers.dart';

class IntroPasswordOnLaunch extends ConsumerWidget {
  const IntroPasswordOnLaunch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    void skipPassword() {
      final intro = ref.read(introStateProvider.notifier);
      intro.skipPassword();
    }

    void setPassword() {
      final intro = ref.read(introStateProvider.notifier);
      intro.showIntroPassword();
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
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
                  alignment: AlignmentDirectional(-1, 0),
                  child: AutoSizeText(
                    localization.requireAPasswordToOpenHeader,
                    maxLines: 3,
                    stepGranularity: 0.5,
                    style: styles.textStyleHeaderColored,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 40,
                    end: 40,
                    top: 16,
                  ),
                  alignment: AlignmentDirectional(-1, 0),
                  child: AutoSizeText(
                    localization.createPasswordFirstParagraph,
                    style: styles.textStyleParagraph,
                    maxLines: 5,
                    stepGranularity: 0.5,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 8),
                  alignment: AlignmentDirectional(-1, 0),
                  child: AutoSizeText(
                    localization.createPasswordSecondParagraph,
                    style: styles.textStyleParagraphPrimary,
                    maxLines: 4,
                    stepGranularity: 0.5,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(children: [
              PrimaryButton(
                title: localization.noSkipButton,
                onPressed: skipPassword,
              ),
              const SizedBox(height: 16),
              PrimaryOutlineButton(
                title: localization.yesButton,
                onPressed: setPassword,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
