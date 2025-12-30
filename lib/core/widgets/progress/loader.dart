import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitLoader extends StatelessWidget {
  final double? value;

  const UIKitLoader({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: MyTheme.color.palette.light.medium,
          strokeWidth: 5,
          strokeCap: .round,
          color: MyTheme.color.primary,
        ),
      ),
      child: SizedBox(
        height: AppSetting.setHeight(32),
        width: AppSetting.setHeight(32),
        child: Center(child: CircularProgressIndicator(value: value)),
      ),
    );
  }
}
