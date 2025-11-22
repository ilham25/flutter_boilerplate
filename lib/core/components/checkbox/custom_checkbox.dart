import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class CustomCheckbox extends StatelessWidget {
  final bool selected;
  final String title;
  final VoidCallback onClick;
  final double fontSize;
  final Color? textColor;
  const CustomCheckbox({
    super.key,
    required this.selected,
    required this.title,
    required this.onClick,
    this.fontSize = 35,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(),
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: selected ? MyTheme.color.primary : Colors.white,
              border: Border.all(
                color: selected ? MyTheme.color.primary : MyTheme.color.grey,
                width: 1,
              ),
            ),
            child: InkWell(
              onTap: () => onClick(),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Icon(
                  Icons.check,
                  color: selected ? MyTheme.color.white : Colors.transparent,
                  size: 15,
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppSetting.setWidth(25),
          ),
          Text(
            title,
            style: MyTheme.style.subtitle.copyWith(
              color: textColor ?? MyTheme.color.black,
              fontSize: AppSetting.setFontSize(fontSize),
            ),
          )
        ],
      ),
    );
  }
}