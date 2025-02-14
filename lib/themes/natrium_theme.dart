import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class NatriumTheme extends BaseTheme {
  static const brightBlue = Color(0xFFA3CDFF);

  static const green = Color(0xFF4AFFAE);

  static const greenDark = Color(0xFF18A264);

  static const blueishGreyDark = Color(0xFF1E2C3D);

  static const blueishGreyLight = Color(0xFF2A3A4D);

  static const blueishGreyDarkest = Color(0xFF1E2C3D);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  Color primary = brightBlue;
  Color primary60 = brightBlue.withValues(alpha: 0.6);
  Color primary45 = brightBlue.withValues(alpha: 0.45);
  Color primary30 = brightBlue.withValues(alpha: 0.3);
  Color primary20 = brightBlue.withValues(alpha: 0.2);
  Color primary15 = brightBlue.withValues(alpha: 0.15);
  Color primary10 = brightBlue.withValues(alpha: 0.1);

  Color success = green;
  Color success60 = green.withValues(alpha: 0.6);
  Color success30 = green.withValues(alpha: 0.3);
  Color success15 = green.withValues(alpha: 0.15);

  Color successDark = greenDark;
  Color successDark30 = greenDark.withValues(alpha: 0.3);

  Color background = blueishGreyDark;
  Color background40 = blueishGreyDark.withValues(alpha: 0.4);
  Color background00 = blueishGreyDark.withValues(alpha: 0.0);

  Color backgroundDark = blueishGreyLight;
  Color backgroundDark00 = blueishGreyLight.withValues(alpha: 0.0);

  Color backgroundDarkest = blueishGreyDarkest;

  Color text = white.withValues(alpha: 0.9);
  Color text60 = white.withValues(alpha: 0.6);
  Color text45 = white.withValues(alpha: 0.45);
  Color text30 = white.withValues(alpha: 0.3);
  Color text20 = white.withValues(alpha: 0.2);
  Color text15 = white.withValues(alpha: 0.15);
  Color text10 = white.withValues(alpha: 0.1);
  Color text05 = white.withValues(alpha: 0.05);
  Color text03 = white.withValues(alpha: 0.03);

  Color overlay20 = black.withValues(alpha: 0.2);
  Color overlay30 = black.withValues(alpha: 0.3);
  Color overlay50 = black.withValues(alpha: 0.5);
  Color overlay70 = black.withValues(alpha: 0.7);
  Color overlay80 = black.withValues(alpha: 0.8);
  Color overlay85 = black.withValues(alpha: 0.85);
  Color overlay90 = black.withValues(alpha: 0.9);

  Color barrier = black.withValues(alpha: 0.7);
  Color barrierWeaker = black.withValues(alpha: 0.4);
  Color barrierWeakest = black.withValues(alpha: 0.3);
  Color barrierStronger = black.withValues(alpha: 0.85);

  Color animationOverlayMedium = black.withValues(alpha: 0.7);
  Color animationOverlayStrong = black.withValues(alpha: 0.85);

  //Brightness brightness = Brightness.dark;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.light;
  SystemUiOverlayStyle statusBar =
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent);

  BoxShadow boxShadow = BoxShadow(color: Colors.transparent);
  BoxShadow boxShadowButton = BoxShadow(color: Colors.transparent);
}
