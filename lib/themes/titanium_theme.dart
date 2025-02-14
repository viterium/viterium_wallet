import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_theme.dart';

class TitaniumTheme extends BaseTheme {
  static const blueishGreen = Color(0xFF61C6AD);

  static const green = Color(0xFFB5ED88);

  static const greenDark = Color(0xFF5F893D);

  static const tealDark = Color(0xFF041920);

  static const tealLight = Color(0xFF052029);

  static const tealDarkest = Color(0xFF041920);

  static const white = Color(0xFFFFFFFF);

  static const black = Color(0xFF000000);

  Color primary = blueishGreen;
  Color primary60 = blueishGreen.withValues(alpha: 0.6);
  Color primary45 = blueishGreen.withValues(alpha: 0.45);
  Color primary30 = blueishGreen.withValues(alpha: 0.3);
  Color primary20 = blueishGreen.withValues(alpha: 0.2);
  Color primary15 = blueishGreen.withValues(alpha: 0.15);
  Color primary10 = blueishGreen.withValues(alpha: 0.1);

  Color success = green;
  Color success60 = green.withValues(alpha: 0.6);
  Color success30 = green.withValues(alpha: 0.3);
  Color success15 = green.withValues(alpha: 0.15);

  Color successDark = greenDark;
  Color successDark30 = greenDark.withValues(alpha: 0.3);

  Color background = tealDark;
  Color background40 = tealDark.withValues(alpha: 0.4);
  Color background00 = tealDark.withValues(alpha: 0.0);

  Color backgroundDark = tealLight;
  Color backgroundDark00 = tealLight.withValues(alpha: 0.0);

  Color backgroundDarkest = tealDarkest;

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
