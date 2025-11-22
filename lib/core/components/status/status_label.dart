import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class StatusLabel extends StatelessWidget {
  final String text;
  const StatusLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xffFFEFD2),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSetting.setWidth(20),
          vertical: AppSetting.setHeight(10),
        ),
        child: Text(
          text,
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(25),
            color: MyTheme.color.brown,
          ),
        ),
      ),
    );
  }
}