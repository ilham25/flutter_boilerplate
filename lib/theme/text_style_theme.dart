import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

// Text Theme
class Style {

  // Singleton instance
  static final Style _instance = Style._internal();

  // Factory constructor returns the same instance
  factory Style() => _instance;

  // Private constructor
  Style._internal();

  TextStyle title = GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(36),
    color: MyTheme.color.black,
    fontWeight: FontWeight.w600,
  );

  TextStyle semiTitle = GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(36),
    color: MyTheme.color.black,
    fontWeight: FontWeight.w300,
  );

  TextStyle subtitle = GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(32),
    color: MyTheme.color.black,
  );

  TextStyle subtitleLight = GoogleFonts.inter(
    fontSize: AppSetting.setFontSize(32),
    color: MyTheme.color.black,
    fontWeight: FontWeight.w100,
  );

}