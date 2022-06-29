import 'package:flutter/material.dart';

import 'themes/themes.dart';

const kFontFamily = 'NunitoSans';

class AppFontSizes {
  static const smallest = 12.0;
  static const small = 14.0;
  static const medium = 16.0;
  static const large = 20.0;
  static const larger = 24.0;
  static const largest = 28.0;
  static const largestc = 28.0;
}

class AppStyles {
  final BaseTheme theme;

  AppStyles(this.theme);
  // Text style for paragraph text.
  TextStyle get textStyleParagraph {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w200,
      color: theme.text,
    );
  }

  late final textStyleParagraphSmall = TextStyle(
    fontFamily: kFontFamily,
    fontSize: AppFontSizes.small,
    fontWeight: FontWeight.w400,
    color: theme.text,
  );

  TextStyle get textStyleParagraphBold {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w400,
      color: theme.text,
    );
  }

  // Text style for paragraph text with primary color.
  TextStyle get textStyleParagraphPrimary {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w700,
      color: theme.primary,
    );
  }

  // Text style for thin paragraph text with primary color.
  TextStyle get textStyleParagraphThinPrimary {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w600,
      color: theme.primary,
    );
  }

  // Text style for paragraph text with primary color.
  TextStyle get textStyleParagraphSuccess {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w700,
      color: theme.success,
    );
  }

  // For snackbar/Toast text
  TextStyle get textStyleSnackbar {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w700,
      color: theme.background,
    );
  }

  // Text style for primary button
  TextStyle get textStyleButtonPrimary {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.background,
    );
  }

  // Green primary button
  TextStyle get textStyleButtonPrimaryGreen {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.successDark,
    );
  }

  // Text style for outline button
  TextStyle get textStyleButtonPrimaryOutline {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.primary,
    );
  }

  // Text style for small outline button
  TextStyle get textStyleButtonPrimarySmallOutline {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w700,
      color: theme.primary,
    );
  }

  // Text style for small success outline button
  TextStyle get textStyleButtonSuccessSmallOutline {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w700,
      color: theme.success,
    );
  }

  TextStyle get textStyleButtonPrimaryOutlineDisabled {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.primary60,
    );
  }

  // Text style for success outline button
  TextStyle get textStyleButtonSuccessOutline {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.success,
    );
  }

  // Text style for text outline button
  TextStyle get textStyleButtonTextOutline {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.text,
    );
  }

  // General address/seed styles
  TextStyle get textStyleAddressPrimary60 {
    return TextStyle(
      color: theme.primary60,
      fontSize: AppFontSizes.small,
      height: 1.5,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
    );
  }

  TextStyle get textStyleAddressPrimary {
    return TextStyle(
      color: theme.primary,
      fontSize: AppFontSizes.small,
      height: 1.5,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
    );
  }

  TextStyle get textStyleAddressSuccess {
    return TextStyle(
      color: theme.success,
      fontSize: AppFontSizes.small,
      height: 1.5,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
    );
  }

  TextStyle get textStyleAddressText60 {
    return TextStyle(
      color: theme.text60,
      fontSize: AppFontSizes.small,
      height: 1.5,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
    );
  }

  TextStyle get textStyleAddressText90 {
    return TextStyle(
      color: theme.text,
      fontSize: AppFontSizes.small,
      height: 1.5,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
    );
  }

  // Text style for alternate currencies on home page
  TextStyle get textStyleCurrencyAlt {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w600,
      color: theme.text60,
    );
  }

  TextStyle get textStyleCurrencyAltHidden {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w600,
      color: Colors.transparent,
    );
  }

  // Text style for primary currency on home page
  TextStyle get textStyleCurrency {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.largest,
      fontWeight: FontWeight.w900,
      color: theme.primary,
    );
  }

  // Text style for primary currency on home page
  TextStyle get textStyleCurrencySmaller {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w900,
      color: theme.primary,
    );
  }

  /* Transaction cards */
  // Text style for transaction card "Received"/"Sent" text
  TextStyle get textStyleTransactionType {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w600,
      color: theme.text,
    );
  }

  // Amount
  late final textStyleTransactionAmount = TextStyle(
    fontFamily: kFontFamily,
    color: theme.primary60,
    fontSize: AppFontSizes.smallest,
    fontWeight: FontWeight.w600,
  );

  late final textStyleTransactionAmountSmall =
      textStyleTransactionAmount.copyWith(fontSize: AppFontSizes.small);

  late final textStyleTransactionAmountMedium =
      textStyleTransactionAmount.copyWith(fontSize: AppFontSizes.medium);

  // Unit (e.g. BAN)
  TextStyle get textStyleTransactionUnit {
    return TextStyle(
      fontFamily: kFontFamily,
      color: theme.primary60,
      fontSize: AppFontSizes.smallest,
      fontWeight: FontWeight.w100,
    );
  }

  late final textStyleTransactionUnitSmall = TextStyle(
    fontFamily: kFontFamily,
    color: theme.primary60,
    fontSize: AppFontSizes.small,
    fontWeight: FontWeight.w100,
  );

  // Address
  TextStyle get textStyleTransactionAddress {
    return TextStyle(
      fontSize: AppFontSizes.smallest,
      fontFamily: 'OverpassMono',
      fontWeight: FontWeight.w100,
      color: theme.text60,
    );
  }

  // Transaction Welcome
  TextStyle get textStyleTransactionWelcome {
    return TextStyle(
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w200,
      color: theme.text,
      fontFamily: kFontFamily,
    );
  }

  // Transaction Welcome Text
  TextStyle get textStyleTransactionWelcomePrimary {
    return TextStyle(
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w200,
      color: theme.primary,
      fontFamily: kFontFamily,
    );
  }

  // Version info in settings
  TextStyle get textStyleVersion {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w100,
      color: theme.text60,
    );
  }

  TextStyle get textStyleVersionUnderline {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w100,
      color: theme.text60,
      decoration: TextDecoration.underline,
    );
  }

  // Text style for alert dialog header
  TextStyle get textStyleDialogHeader {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.primary,
    );
  }

  // Text style for dialog options
  TextStyle get textStyleDialogOptions {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w600,
      color: theme.primary,
    );
  }

  // Text style for app text field
  TextStyle get textStyleAppTextField {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w600,
      color: theme.primary,
    );
  }

  late final textStyleAppTextFieldSimple = TextStyle(
    fontFamily: kFontFamily,
    fontSize: AppFontSizes.medium,
    fontWeight: FontWeight.w600,
    color: theme.text,
  );

  // Text style for dialog button text
  TextStyle get textStyleDialogButtonText {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.smallest,
      fontWeight: FontWeight.w600,
      color: theme.primary,
    );
  }

  late final textStyleDialogButtonTextSimple = TextStyle(
    fontFamily: kFontFamily,
    fontSize: AppFontSizes.smallest,
    fontWeight: FontWeight.w600,
    color: theme.text,
  );

  // Text style for seed text
  TextStyle get textStyleSeed {
    return TextStyle(
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
      color: theme.primary,
      height: 1.5,
      letterSpacing: 1,
    );
  }

  TextStyle get textStyleSeedGray {
    return TextStyle(
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
      color: theme.text60,
      height: 1.5,
      letterSpacing: 1,
    );
  }

  // Text style for mnemonic text
  TextStyle textStyleMnemonicText(BuildContext context) {
    return TextStyle(
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
      color: theme.primary,
      height: 1,
      letterSpacing: 1,
    );
  }

  TextStyle textStyleMnemonicTextGray(BuildContext context) {
    return TextStyle(
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
      color: theme.text60,
      height: 1,
      letterSpacing: 1,
    );
  }

  TextStyle get textStyleSeedGreen {
    return TextStyle(
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w100,
      fontFamily: 'OverpassMono',
      color: theme.success,
      height: 1.5,
      letterSpacing: 1,
    );
  }

  // Text style for general headers like sheet headers
  TextStyle textStyleHeader(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.larger,
      letterSpacing: 1.4,
      fontWeight: FontWeight.w700,
      color: theme.text,
    );
  }

  // Text style for data sub headers
  late final textStyleSubHeader = TextStyle(
    fontFamily: kFontFamily,
    fontSize: AppFontSizes.medium,
    letterSpacing: 1.4,
    fontWeight: FontWeight.w400,
    color: theme.text,
  );

  late final textStyleSubHeaderUnselected = TextStyle(
    fontFamily: kFontFamily,
    fontSize: AppFontSizes.medium,
    letterSpacing: 1.4,
    fontWeight: FontWeight.w400,
    color: theme.text.withOpacity(0.3),
  );

  // Text style for settings headers
  TextStyle get textStyleSettingsHeader {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.largest,
      fontWeight: FontWeight.w700,
      color: theme.text,
    );
  }

  // Text style for primary color header
  TextStyle get textStyleHeaderColored {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.largest,
      fontWeight: FontWeight.w700,
      color: theme.primary,
    );
  }

  // Text style for primary color header
  TextStyle get textStyleHeader2Colored {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.larger,
      fontWeight: FontWeight.w700,
      color: theme.primary,
    );
  }

  TextStyle get textStylePinScreenHeaderColored {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.large,
      fontWeight: FontWeight.w700,
      color: theme.primary,
    );
  }

  TextStyle get textStyleLogoutButton {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.small,
      fontWeight: FontWeight.w600,
      color: theme.text,
    );
  }

  // Text style for setting item header
  TextStyle get textStyleSettingItemHeader {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w600,
      color: theme.text,
    );
  }

  late final textStyleSettingItemHeaderLarge = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: theme.text,
  );

  TextStyle get textStyleSettingItemHeader60 {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w600,
      color: theme.text60,
    );
  }

  TextStyle get textStyleSettingItemHeader45 {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.medium,
      fontWeight: FontWeight.w600,
      color: theme.text45,
    );
  }

  // Text style for setting item subheader
  TextStyle get textStyleSettingItemSubheader {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.smallest,
      fontWeight: FontWeight.w100,
      color: theme.text60,
    );
  }

  TextStyle get textStyleSettingItemSubheader30 {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: AppFontSizes.smallest,
      fontWeight: FontWeight.w100,
      color: theme.text30,
    );
  }

  // Text style for lock screen error
  TextStyle get textStyleErrorMedium {
    return TextStyle(
      fontSize: AppFontSizes.small,
      color: theme.primary,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  // Text style for mnemonic
  TextStyle textStyleMnemonic(BuildContext context) {
    return TextStyle(
      fontSize: AppFontSizes.small,
      color: theme.primary,
      fontFamily: 'OverpassMono',
      fontWeight: FontWeight.w100,
    );
  }

  // Text style for mnemonic success
  TextStyle textStyleMnemonicSuccess(BuildContext context) {
    return TextStyle(
      fontSize: AppFontSizes.small,
      color: theme.success,
      fontFamily: 'OverpassMono',
      fontWeight: FontWeight.w100,
    );
  }

  // Text style for numbers of mnemonic
  TextStyle textStyleNumbersOfMnemonic(BuildContext context) {
    return TextStyle(
      fontSize: AppFontSizes.small,
      color: theme.text30,
      fontFamily: 'OverpassMono',
      fontWeight: FontWeight.w100,
    );
  }

  // Text style for numbers of mnemonic
  TextStyle get headerPrimary {
    return TextStyle(
      fontSize: 16,
      color: theme.primary,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get headerSuccess {
    return TextStyle(
      fontSize: 16,
      color: theme.success,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get addressText {
    return TextStyle(
      fontSize: 12,
      color: theme.text,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get tagText {
    return TextStyle(
      fontSize: 12,
      color: theme.text60,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get remoteMessageCardTitle {
    return TextStyle(
      fontSize: 20,
      color: theme.success,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get remoteMessageCardShortDescription {
    return TextStyle(
      fontSize: 14,
      color: theme.text,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get remoteMessageCardTimestamp {
    return TextStyle(
      fontSize: 12,
      color: theme.text60,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get buttonTextBg {
    return TextStyle(
      fontSize: 18,
      color: theme.background,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  ButtonStyle get cardButtonStyle {
    return TextButton.styleFrom(
      backgroundColor: theme.backgroundDark,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null;
      }),
    );
  }

  ButtonStyle get darkCardButtonStyle {
    return TextButton.styleFrom(
      backgroundColor: theme.backgroundDarkest,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null;
      }),
    );
  }

  ButtonStyle get defaultTextButtonStyle {
    return TextButton.styleFrom(
      padding: EdgeInsets.zero,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null;
      }),
    );
  }

  ButtonStyle get roundedTextButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.zero,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get dialogButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null;
      }),
    );
  }

  ButtonStyle get accountButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null;
      }),
    );
  }

  ButtonStyle get quotaButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null;
      }),
    );
  }

  ButtonStyle get walletButtonStyle {
    return TextButton.styleFrom(
      padding: EdgeInsets.zero,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused))
          return theme.backgroundDark.withOpacity(0.45);
        if (states.contains(MaterialState.hovered))
          return theme.backgroundDark.withOpacity(0.45);
        if (states.contains(MaterialState.pressed))
          return theme.backgroundDark.withOpacity(0.75);
        return null;
      }),
    );
  }

  ButtonStyle get roundButtonStyle {
    return TextButton.styleFrom(
      shape: const CircleBorder(),
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.padded,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get appIconButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.padded,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get sheetHeaderButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.all(13),
      tapTargetSize: MaterialTapTargetSize.padded,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get primaryButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      backgroundColor: theme.primary,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.background40;
        if (states.contains(MaterialState.hovered)) return theme.background40;
        if (states.contains(MaterialState.pressed)) return theme.background40;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get disabledPrimaryButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      backgroundColor: theme.primary60,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return Colors.transparent;
        if (states.contains(MaterialState.hovered)) return Colors.transparent;
        if (states.contains(MaterialState.pressed)) return Colors.transparent;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get successButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      backgroundColor: theme.success,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.success30;
        if (states.contains(MaterialState.hovered)) return theme.success30;
        if (states.contains(MaterialState.pressed)) return Colors.transparent;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get outlinedSuccessButtonStyle {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      side: BorderSide(color: theme.success, width: 2),
      backgroundColor: theme.backgroundDark,
      primary: theme.success,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.success15;
        if (states.contains(MaterialState.hovered)) return theme.success15;
        if (states.contains(MaterialState.pressed)) return theme.success30;
        return null;
      }),
      // side: MaterialStateProperty.resolveWith<BorderSide?>(
      //     (Set<MaterialState> states) {
      //   if (states.contains(MaterialState.pressed))
      //     return BorderSide(
      //       color: theme.primary,
      //       width: 2,
      //     );
      //   return null;
      // }),
    );
  }

  ButtonStyle get outlinedButtonStyle {
    return OutlinedButton.styleFrom(
      primary: theme.text,
      backgroundColor: theme.backgroundDark,
      side: BorderSide(color: theme.text, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.primary15;
        if (states.contains(MaterialState.hovered)) return theme.primary15;
        if (states.contains(MaterialState.pressed)) return theme.primary30;
        return null;
      }),
    );
  }

  ButtonStyle get outlinedPrimaryButtonStyle {
    return OutlinedButton.styleFrom(
      primary: theme.primary,
      backgroundColor: theme.backgroundDark,
      side: BorderSide(color: theme.primary, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) return theme.primary15;
          if (states.contains(MaterialState.hovered)) return theme.primary15;
          if (states.contains(MaterialState.pressed)) return theme.primary30;
          return null; // Defer to the widget's default.
        },
      ),
    );
  }

  ButtonStyle get smallOutlinedPrimaryButtonStyle {
    return OutlinedButton.styleFrom(
      primary: theme.primary,
      backgroundColor: theme.backgroundDark,
      side: BorderSide(color: theme.primary, width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) return theme.primary15;
          if (states.contains(MaterialState.hovered)) return theme.primary15;
          if (states.contains(MaterialState.pressed)) return theme.primary30;
          return null; // Defer to the widget's default.
        },
      ),
    );
  }

  ButtonStyle get outlinedPrimaryDarkButtonStyle {
    return OutlinedButton.styleFrom(
      primary: theme.primary,
      backgroundColor: theme.backgroundDarkest,
      side: BorderSide(color: theme.primary, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) return theme.primary15;
          if (states.contains(MaterialState.hovered)) return theme.primary15;
          if (states.contains(MaterialState.pressed)) return theme.primary30;
          return null; // Defer to the widget's default.
        },
      ),
    );
  }

  ButtonStyle get disabledPrimaryOutlinedButtonStyle {
    return OutlinedButton.styleFrom(
      primary: theme.primary60,
      backgroundColor: theme.backgroundDark,
      side: BorderSide(color: theme.primary60, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.primary15;
        if (states.contains(MaterialState.hovered)) return theme.primary15;
        if (states.contains(MaterialState.pressed)) return theme.primary30;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get disabledPrimaryOutlinedDarkButtonStyle {
    return OutlinedButton.styleFrom(
      primary: theme.primary60,
      backgroundColor: theme.backgroundDarkest,
      side: BorderSide(color: theme.primary60, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.primary15;
        if (states.contains(MaterialState.hovered)) return theme.primary15;
        if (states.contains(MaterialState.pressed)) return theme.primary30;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get innerButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.all(10),
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return Colors.transparent;
        if (states.contains(MaterialState.hovered)) return Colors.transparent;
        if (states.contains(MaterialState.pressed)) return Colors.transparent;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get textFieldButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(14),
      tapTargetSize: MaterialTapTargetSize.padded,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null; // Defer to the widget's default.
      }),
    );
  }

  ButtonStyle get tokenTextFieldButtonStyle {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(4),
      tapTargetSize: MaterialTapTargetSize.padded,
      enabledMouseCursor: SystemMouseCursors.click,
      disabledMouseCursor: SystemMouseCursors.basic,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return theme.text15;
        if (states.contains(MaterialState.hovered)) return theme.text05;
        if (states.contains(MaterialState.pressed)) return theme.text15;
        return null; // Defer to the widget's default.
      }),
    );
  }
}
