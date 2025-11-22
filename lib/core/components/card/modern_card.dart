import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/components/conditional/conditional_item.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class ModernCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final String iconPath;
  final String? bigIconPath;
  final double fontSize;
  final double paddingVertical;
  final double paddingText;
  final double paddingIcon;

  const ModernCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.iconPath,
    this.bigIconPath,
    this.fontSize = 45,
    this.paddingVertical = 10,
    this.paddingText = 15,
    this.paddingIcon = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSetting.setWidth(50),
          vertical: AppSetting.setHeight(paddingVertical),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    /// Make color light
                    color: Colors.white.withValues(alpha: 0.6),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSetting.setWidth(paddingIcon),
                      vertical: AppSetting.setHeight(paddingIcon),
                    ),
                    child: Image.asset(
                      iconPath,
                      width: AppSetting.setWidth(60),
                      height: AppSetting.setHeight(60),
                      color: color,
                    ),
                  ),
                ),
                Space.h(20),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: AppSetting.setFontSize(fontSize),
                    color: MyTheme.color.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Space.h(paddingText),
                Text(
                  value,
                  style: GoogleFonts.inter(
                    fontSize: AppSetting.setFontSize(fontSize),
                    color: MyTheme.color.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Conditional(
              condition: bigIconPath != null,
              child: Image.asset(
                bigIconPath ?? "",
                width: AppSetting.setWidth(300),
                height: AppSetting.setHeight(300),
              ),
            )
          ],
        ),
      ),
    );
  }
}