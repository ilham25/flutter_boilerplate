import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/utils/flavor/flavor_utils.dart';

class PColor {
  // Singleton instance
  static final PColor _instance = PColor._internal();

  // Factory constructor returns the same instance
  factory PColor() => _instance;

  // Private constructor
  PColor._internal();

  // Define colors with default values
  Color primary = flavor.current.primaryColor;
  Color primaryLight = flavor.current.primaryLightColor;
  Color secondary = flavor.current.secondaryColor;
  Color success = const Color(0xFF3AC0A0);
  Color info = const Color(0xFF05BFDB);
  Color warning = const Color(0xFFFFB37C);
  Color danger = const Color(0xFFFF616D);
  Color disabled = const Color(0xFFDCDEE7);
  Color white = const Color(0xFFFFFFFF);
  Color main = const Color(0xFF2E3261);
  Color black = const Color(0xFF151316);
  Color grey = const Color(0xff8288A2);
  Color softGrey = const Color(0xff8F95B2);
  Color orange = const Color(0xffE8A01D);
  Color limeGreen = const Color(0xff4BAC87);
  Color brown = const Color(0xff66460D);

  /// Listen to theme mode so white and black based on the theme mode
  // Color get blackWhite {
  //   return Theme.of(appRouter.navigatorKey.currentState!.context).brightness ==
  //           Brightness.dark
  //       ? white
  //       : black;
  // }

  ColorPalette palette = ColorPalette();
}

class ColorPalette {
  // Singleton instance
  static final ColorPalette _instance = ColorPalette._internal();

  // Factory constructor returns the same instance
  factory ColorPalette() => _instance;

  // Private constructor
  ColorPalette._internal();

  HighlightColor highlight = HighlightColor();
  LightColor light = LightColor();
  DarkColor dark = DarkColor();
  SuccessColor success = SuccessColor();
  WarningColor warning = WarningColor();
  ErrorColor error = ErrorColor();
}

class HighlightColor {
  // Singleton instance
  static final HighlightColor _instance = HighlightColor._internal();

  // Factory constructor returns the same instance
  factory HighlightColor() => _instance;

  // Private constructor
  HighlightColor._internal();

  Color darkest = const Color(0xFF006FFD);
  Color dark = const Color(0xFF2897FF);
  Color medium = const Color(0xFF6FBAFF);
  Color light = const Color(0xFFB4DBFF);
  Color lightest = const Color(0xFFEAF2FF);
}

class LightColor {
  // Singleton instance
  static final LightColor _instance = LightColor._internal();

  // Factory constructor returns the same instance
  factory LightColor() => _instance;

  // Private constructor
  LightColor._internal();

  Color darkest = const Color(0xFFC5C6CC);
  Color dark = const Color(0xFFD4D6DD);
  Color medium = const Color(0xFFE8E9F1);
  Color light = const Color(0xFFF8F9FE);
  Color lightest = const Color(0xFFFFFFFF);
}

class DarkColor {
  // Singleton instance
  static final DarkColor _instance = DarkColor._internal();

  // Factory constructor returns the same instance
  factory DarkColor() => _instance;

  // Private constructor
  DarkColor._internal();

  Color darkest = const Color(0xFF1F2024);
  Color dark = const Color(0xFF2F3036);
  Color medium = const Color(0xFF494A50);
  Color light = const Color(0xFF71727A);
  Color lightest = const Color(0xFF8F9098);
}

class SuccessColor {
  // Singleton instance
  static final SuccessColor _instance = SuccessColor._internal();

  // Factory constructor returns the same instance
  factory SuccessColor() => _instance;

  // Private constructor
  SuccessColor._internal();

  Color dark = const Color(0xFF298267);
  Color medium = const Color(0xFF3AC0A0);
  Color light = const Color(0xFFE7F4E8);
}

class WarningColor {
  // Singleton instance
  static final WarningColor _instance = WarningColor._internal();

  // Factory constructor returns the same instance
  factory WarningColor() => _instance;

  // Private constructor
  WarningColor._internal();

  Color dark = const Color(0xFFE86339);
  Color medium = const Color(0xFFFFB37C);
  Color light = const Color(0xFFFFF4E4);
}

class ErrorColor {
  // Singleton instance
  static final ErrorColor _instance = ErrorColor._internal();

  // Factory constructor returns the same instance
  factory ErrorColor() => _instance;

  // Private constructor
  ErrorColor._internal();

  Color dark = const Color(0xFFED3241);
  Color medium = const Color(0xFFFF616D);
  Color light = const Color(0xFFFFE2E5);
}
