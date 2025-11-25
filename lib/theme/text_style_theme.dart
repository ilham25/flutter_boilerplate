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

  HeadingTextStyle heading = HeadingTextStyle();
  BodyTextStyle body = BodyTextStyle();
  ActionTextStyle action = ActionTextStyle();
  CaptionTextStyle caption = CaptionTextStyle();
}

class HeadingTextStyle {
  TextStyle get h1 => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(24),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w800,
  );

  TextStyle get h2 => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(18),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w800,
  );

  TextStyle get h3 => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(16),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w800,
  );

  TextStyle get h4 => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(14),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w700,
  );

  TextStyle get h5 => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(12),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w700,
  );

  TextStyle get h6 => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(10),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w700,
  );
}

class BodyTextStyle {
  TextStyle get xl => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(18),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w400,
  );

  TextStyle get l => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(16),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w400,
  );

  TextStyle get m => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(14),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w400,
  );

  TextStyle get s => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(12),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w400,
  );

  TextStyle get xs => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(10),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w500,
  );
}

class ActionTextStyle {
  TextStyle get l => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(14),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w600,
  );

  TextStyle get m => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(12),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w600,
  );

  TextStyle get s => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(10),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w600,
  );
}

class CaptionTextStyle {
  TextStyle get m => GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(10),
    color: MyTheme.color.palette.dark.darkest,
    fontWeight: FontWeight.w600,
  );
}
