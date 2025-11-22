import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class PrimaryOutlineButton extends StatelessWidget {

  final Color? color;
  final Color textColor;
  final String? title;
  final Function? onClick;
  final double fontSize;
  final bool useBold;
  final bool onlyRadiusBottom;
  final bool useFullWidth;
  final double? verticalPadding;
  final double? horizontalPadding;
  final String? iconPath;
  final double radius;
  final double? iconLeftPadding;
  final double? iconSize;
  final bool enableIconColor;
  final double? width;
  final MainAxisAlignment mainAxisAlignment;
  final double rightIconPadding;

  const PrimaryOutlineButton({
    super.key,
    required this.color,
    this.textColor = Colors.white,
    required this.title,
    required this.onClick,
    this.fontSize = 38,
    this.useBold = false,
    this.onlyRadiusBottom = false,
    this.useFullWidth = true,
    this.verticalPadding,
    this.horizontalPadding,
    this.iconPath,
    this.radius = 15,
    this.iconLeftPadding = 15,
    this.iconSize = 60,
    this.enableIconColor = true,
    this.width,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.rightIconPadding = 130,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: useFullWidth
        ? AppSetting.deviceWidth
        : null,
      decoration: BoxDecoration(
        border: Border.all(
          color: color!,
          width: width ?? 1,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(onlyRadiusBottom ? 0 : radius),
          topRight: Radius.circular(onlyRadiusBottom ? 0 : radius),
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        ),
      ),      
      child: Material(
        type: MaterialType.transparency,
        color: Colors.transparent,
        child: InkWell(
          splashColor: color!.withValues(alpha: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(onlyRadiusBottom ? 0 : radius),
            topRight: Radius.circular(onlyRadiusBottom ? 0 : radius),
            bottomLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
          onTap: () => onClick!(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppSetting.setWidth((verticalPadding ?? 30)),
              horizontal: AppSetting.setHeight(horizontalPadding == null ? 10 : horizontalPadding!),
            ),
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [
                iconPath != null
                  ? Padding(
                      padding: EdgeInsets.only(
                        right: AppSetting.setWidth(iconLeftPadding!),
                        left: AppSetting.setWidth(30),
                      ),
                      child: Image.asset(iconPath!,
                          width: AppSetting.setWidth(iconSize!),
                          height: AppSetting.setHeight(iconSize!),
                          color: enableIconColor ? textColor : null,
                        ),
                    )
                  : SizedBox(width: AppSetting.setWidth(60),),
                Text(
                  title ?? " ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: useBold
                  ? GoogleFonts.inter(
                      color: textColor,
                      fontSize: AppSetting.setFontSize(fontSize),
                      fontWeight: FontWeight.bold,
                    )
                  : MyTheme.style.subtitle.copyWith(
                      color: textColor,
                      fontSize: AppSetting.setFontSize(fontSize),
                      fontWeight: FontWeight.w600,
                    ),
                ),
                SizedBox(
                  width: AppSetting.setWidth(iconPath != null ? rightIconPadding : 60),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
