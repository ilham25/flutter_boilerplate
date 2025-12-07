import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';

class UIKitIconButton extends StatelessWidget {
  final AssetGenImage icon;
  final VoidCallback? onTap;

  final Color? color;
  final Color? iconColor;

  final double size;
  final double radius;
  final double? iconSize;

  final ButtonVariant variant = .primary;

  const UIKitIconButton({
    super.key,
    this.onTap,
    this.color,
    this.size = 40,
    required this.icon,
    this.radius = 8,
    this.iconColor,
    this.iconSize,
  });

  factory UIKitIconButton.secondary({
    VoidCallback? onTap,
    required AssetGenImage icon,
    double size = 40,
    double radius = 8,
  }) => UIKitIconButton(
    onTap: onTap,
    size: size,
    icon: icon,
    radius: radius,
    iconColor: getIconColor(variant: .secondary),
    color: getBackgroundColor(variant: .secondary),
  );

  factory UIKitIconButton.tertiary({
    VoidCallback? onTap,
    required AssetGenImage icon,
    double size = 40,
    double radius = 8,
  }) => UIKitIconButton(
    onTap: onTap,
    size: size,
    icon: icon,
    radius: radius,
    iconColor: getIconColor(variant: .tertiary),
    color: getBackgroundColor(variant: .tertiary),
  );

  Color? get _color {
    return color ?? getBackgroundColor(variant: variant);
  }

  Color get _iconColor {
    return iconColor ?? getIconColor(variant: variant);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      color: _color,
      child: Ink(
        height: AppSetting.setHeight(size),
        width: AppSetting.setHeight(size),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: _color,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: () {
            if (onTap == null) return;
            onTap!();
          },
          child: Center(
            child: icon.image(
              height: AppSetting.setHeight(iconSize ?? (size / 2)),
              width: AppSetting.setHeight(iconSize ?? (size / 2)),
              color: _iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
