import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class PrimaryButton extends StatelessWidget {
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
  final bool? enableShadow;
  final Color? iconPathColor;
  final double iconPathSize;
  final String? fontFamily;
  final bool enable;
  final bool enableCenter;

  const PrimaryButton({
    super.key,
    required this.color,
    required this.title,
    required this.onClick,
    this.textColor = Colors.white,
    this.fontSize = 35,
    this.useBold = true,
    this.onlyRadiusBottom = false,
    this.useFullWidth = true,
    this.verticalPadding,
    this.horizontalPadding,
    this.iconPath,
    this.radius = 15,
    this.enableShadow = true,
    this.iconPathColor,
    this.iconPathSize = 40,
    this.fontFamily,
    this.enable = true,
    this.enableCenter = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: useFullWidth ? AppSetting.deviceWidth : null,
      decoration: BoxDecoration(
        color: enable ? color : MyTheme.color.disabled,
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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(onlyRadiusBottom ? 0 : radius),
            topRight: Radius.circular(onlyRadiusBottom ? 0 : radius),
            bottomLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
          onTap: () => enable ? onClick!() : {},
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppSetting.setWidth((verticalPadding ?? (AppSetting.isTablet(context) ? 30 : 35))),
              horizontal: AppSetting.setHeight(
                horizontalPadding == null ? 5 : horizontalPadding!,
              ),
            ),
            child: enableCenter
              ? Center(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: _contentWidget(context),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSetting.setWidth(30),
                  ),
                  child: _contentWidget(context),
                ),
          ),
        ),
      ),
    );
  }

  Widget _contentWidget(BuildContext context) {
    return Row(
      children: [
        iconPath != null
            ? Padding(
                padding: EdgeInsets.only(
                  right: title!.isEmpty ? 0 : AppSetting.setWidth(30),
                ),
                child: Image.asset(
                  iconPath!,
                  width: AppSetting.setWidth(iconPathSize),
                  height: AppSetting.setHeight(iconPathSize),
                  color: iconPathColor,
                ),
              )
            : const SizedBox(),
        title!.isNotEmpty
            ? Text(
          title ?? " ",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: useBold
              ? MyTheme.style.title.copyWith(
            color: enable ? textColor : MyTheme.color.softGrey,
            fontSize: AppSetting.setFontSize(fontSize) - (AppSetting.isTablet(context) ? 4 : 0),
            fontFamily: fontFamily,
          )
              : MyTheme.style.subtitle.copyWith(
            color: enable ? textColor : MyTheme.color.softGrey,
            fontSize: AppSetting.setFontSize(fontSize) - (AppSetting.isTablet(context) ? 4 : 0),
            fontFamily: fontFamily,
          ),
        )
            : const SizedBox(),
      ],
    );
  }
}