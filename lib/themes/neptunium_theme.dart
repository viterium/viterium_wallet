import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class NeptuniumTheme extends BaseTheme {
  static const blue = Color(0xFF4A90E2);

  static const orange = Color(0xFFF9AE42);

  static const orangeDark = Color(0xFF9C671E);

  static const blueDark = Color(0xFF000034);

  static const blueLightish = Color(0xFF080840);

  static const blueDarkest = Color(0xFF000034);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  Color primary = blue;
  Color primary60 = blue.withValues(alpha: 0.6);
  Color primary45 = blue.withValues(alpha: 0.45);
  Color primary30 = blue.withValues(alpha: 0.3);
  Color primary20 = blue.withValues(alpha: 0.2);
  Color primary15 = blue.withValues(alpha: 0.15);
  Color primary10 = blue.withValues(alpha: 0.1);

  Color success = orange;
  Color success60 = orange.withValues(alpha: 0.6);
  Color success30 = orange.withValues(alpha: 0.3);
  Color success15 = orange.withValues(alpha: 0.15);

  Color successDark = orangeDark;
  Color successDark30 = orangeDark.withValues(alpha: 0.3);

  Color background = blueDark;
  Color background40 = blueDark.withValues(alpha: 0.4);
  Color background00 = blueDark.withValues(alpha: 0.0);

  Color backgroundDark = blueLightish;
  Color backgroundDark00 = blueLightish.withValues(alpha: 0.0);

  Color backgroundDarkest = blueDarkest;

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

  Color barrier = black.withValues(alpha: 0.75);
  Color barrierWeaker = black.withValues(alpha: 0.45);
  Color barrierWeakest = black.withValues(alpha: 0.35);
  Color barrierStronger = black.withValues(alpha: 0.9);

  Color animationOverlayMedium = black.withValues(alpha: 0.75);
  Color animationOverlayStrong = black.withValues(alpha: 0.9);

  //Brightness brightness = Brightness.dark;

  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.dark;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(color: Colors.transparent);
  BoxShadow boxShadowButton = BoxShadow(color: Colors.transparent);
}
