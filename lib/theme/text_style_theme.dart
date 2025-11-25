import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

// Text Theme
class Style {
  // Singleton instance
  static final Style _instance = Style._internal();

  // Factory constructor returns the same instance
  factory Style() => _instance;

  // Private constructor
  Style._internal();

  UIKitTextStyle xs = UIKitTextStyle.xs();
  UIKitTextStyle sm = UIKitTextStyle.sm();
  UIKitTextStyle lg = UIKitTextStyle.lg();
  UIKitTextStyle base = UIKitTextStyle.base();
  UIKitTextStyle xl = UIKitTextStyle.xl();
}

class UIKitTextStyle {
  final double fontSize;

  UIKitTextStyle.xs() : fontSize = AppSetting.setFontSize(10);
  UIKitTextStyle.sm() : fontSize = AppSetting.setFontSize(12);
  UIKitTextStyle.base() : fontSize = AppSetting.setFontSize(14);
  UIKitTextStyle.lg() : fontSize = AppSetting.setFontSize(16);
  UIKitTextStyle.xl() : fontSize = AppSetting.setFontSize(18);

  TextStyle get light => GoogleFonts.rubik(
        fontSize: fontSize,
        color: MyTheme.color.palette.dark.darkest,
        fontWeight: FontWeight.w300,
      );

  TextStyle get regular => GoogleFonts.rubik(
        fontSize: fontSize,
        color: MyTheme.color.palette.dark.darkest,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium => GoogleFonts.rubik(
        fontSize: fontSize,
        color: MyTheme.color.palette.dark.darkest,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semibold => GoogleFonts.rubik(
        fontSize: fontSize,
        color: MyTheme.color.palette.dark.darkest,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold => GoogleFonts.rubik(
        fontSize: fontSize,
        color: MyTheme.color.palette.dark.darkest,
        fontWeight: FontWeight.w700,
      );
}
