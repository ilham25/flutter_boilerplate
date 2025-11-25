import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? color;
  final double size;
  final AssetGenImage icon;
  final double radius;

  const UIKitIconButton({
    super.key,
    this.onTap,
    this.color,
    this.size = 40,
    required this.icon,
    this.radius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Ink(
        height: AppSetting.setHeight(size),
        width: AppSetting.setWidth(size),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: () {
            if (onTap == null) return;
            onTap!();
          },
          child: Center(
            child: icon.image(
              height: AppSetting.setHeight(20),
              width: AppSetting.setWidth(20),
              color: color ?? MyTheme.color.primary,
            ),
          ),
        ),
      ),
    );
  }
}
