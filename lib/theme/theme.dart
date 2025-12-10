import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boilerplate/config/app_config.dart';

import 'color_theme.dart';
import 'text_style_theme.dart';

TextStyle defaultTextStyle(BuildContext context) {
  return GoogleFonts.montserrat();
}

const double defaultPadding = MyTheme.defaultPadding;

class MyTheme {
  static ThemeData theme = AppTheme.lightTheme;

  // Padding
  static const double defaultPadding = 16;

  // Colors
  static PColor color = PColor();

  // Text Style
  static Style style = Style();
}
