import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class LoadingSingleBox extends StatelessWidget {
  final double height;
  final Color? color;
  final double? borderRadius;

  const LoadingSingleBox({
    super.key,
    this.height = 150,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSetting.deviceWidth,
      height: AppSetting.setHeight(height),
      decoration: BoxDecoration(
        color: color ?? MyTheme.color.palette.highlight.lightest,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
    );
  }
}

class LoadingSingleBoxCircular extends StatelessWidget {
  final double height;

  const LoadingSingleBoxCircular({super.key, this.height = 150});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        width: AppSetting.deviceWidth,
        height: AppSetting.setHeight(height),
        decoration: BoxDecoration(
          color: MyTheme.color.grey.withValues(alpha: 0.3),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
