import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class _Avatar extends StatelessWidget {
  final double size;
  final double radius;
  final double iconSize;

  const _Avatar({
    super.key,
    required this.size,
    required this.radius,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .antiAlias,
      height: AppSetting.setHeight(size),
      width: AppSetting.setHeight(size),
      constraints: BoxConstraints(
        maxHeight: AppSetting.setHeight(size),
        maxWidth: AppSetting.setHeight(size),
      ),
      decoration: BoxDecoration(
        borderRadius: .circular(radius),
        color: MyTheme.color.palette.highlight.lightest,
      ),
      child: Align(
        alignment: .bottomCenter,
        child: Assets.icons.profile.image(
          height: AppSetting.setHeight(iconSize),
          width: AppSetting.setHeight(iconSize),
          color: MyTheme.color.palette.highlight.light,
        ),
      ),
    );
  }
}

class UIKitAvatar extends _Avatar {
  const UIKitAvatar({
    super.key,
    super.size = 40,
    super.radius = 16,
    super.iconSize = 32,
  });

  factory UIKitAvatar.medium() =>
      UIKitAvatar(size: 56, radius: 20, iconSize: 44);

  factory UIKitAvatar.large() =>
      UIKitAvatar(size: 80, radius: 32, iconSize: 64);
}
