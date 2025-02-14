import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class ThoriumTheme extends BaseTheme {
  static const teal = Color(0xFF75F3FF);

  static const orange = Color(0xFFFFBA59);

  static const orangeDark = Color(0xFFBF8026);

  static const purpleDark = Color(0xFF200A40);

  static const purpleLight = Color(0xFF2A1052);

  static const purpleDarkest = Color(0xFF200A40);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  Color primary = teal;
  Color primary60 = teal.withValues(alpha: 0.6);
  Color primary45 = teal.withValues(alpha: 0.45);
  Color primary30 = teal.withValues(alpha: 0.3);
  Color primary20 = teal.withValues(alpha: 0.2);
  Color primary15 = teal.withValues(alpha: 0.15);
  Color primary10 = teal.withValues(alpha: 0.1);

  Color success = orange;
  Color success60 = orange.withValues(alpha: 0.6);
  Color success30 = orange.withValues(alpha: 0.3);
  Color success15 = orange.withValues(alpha: 0.15);

  Color successDark = orangeDark;
  Color successDark30 = orangeDark.withValues(alpha: 0.3);

  Color background = purpleDark;
  Color background40 = purpleDark.withValues(alpha: 0.4);
  Color background00 = purpleDark.withValues(alpha: 0.0);

  Color backgroundDark = purpleLight;
  Color backgroundDark00 = purpleLight.withValues(alpha: 0.0);

  Color backgroundDarkest = purpleDarkest;

  Color text = white.withValues(alpha: 0.9);
  Color text60 = white.withValues(alpha: 0.6);
  Color text45 = white.withValues(alpha: 0.45);
  Color text30 = white.withValues(alpha: 0.3);
  Color text20 = white.withValues(alpha: 0.2);
  Color text15 = white.withValues(alpha: 0.15);
  Color text10 = white.withValues(alpha: 0.1);
  Color text05 = white.withValues(alpha: 0.05);
  Color text03 = white.withValues(alpha: 0.03);

  Color overlay90 = black.withValues(alpha: 0.9);
  Color overlay85 = black.withValues(alpha: 0.85);
  Color overlay80 = black.withValues(alpha: 0.8);
  Color overlay70 = black.withValues(alpha: 0.7);
  Color overlay50 = black.withValues(alpha: 0.5);
  Color overlay30 = black.withValues(alpha: 0.3);
  Color overlay20 = black.withValues(alpha: 0.2);

  Color barrier = black.withValues(alpha: 0.7);
  Color barrierWeaker = black.withValues(alpha: 0.4);
  Color barrierWeakest = black.withValues(alpha: 0.3);
  Color barrierStronger = black.withValues(alpha: 0.85);

  Color animationOverlayMedium = black.withValues(alpha: 0.7);
  Color animationOverlayStrong = black.withValues(alpha: 0.85);

  //Brightness brightness = Brightness.dark;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(color: Colors.transparent);
  BoxShadow boxShadowButton = BoxShadow(color: Colors.transparent);
}
