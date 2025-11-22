import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class Required extends StatelessWidget {
  final Widget child;
  const Required({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        child,
        Space.w(10),
        Text(
          "*",
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(40),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}