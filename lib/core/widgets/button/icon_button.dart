import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';

class UIKitIconButton extends StatelessWidget {
  final AssetGenImage icon;
  final VoidCallback? onTap;

  final double size;
  final double? iconSize;

  final UIKitIconButtonDecoration? decoration;

  final ButtonVariant variant = .primary;

  const UIKitIconButton(
    this.icon, {
    super.key,
    this.onTap,
    this.decoration,
    this.size = 40,
    this.iconSize,
  });

  factory UIKitIconButton.secondary(
    AssetGenImage icon, {
    VoidCallback? onTap,
    double size = 40,
    double? iconSize,
    UIKitIconButtonDecoration? decoration,
  }) => UIKitIconButton(
    icon,
    onTap: onTap,
    size: size,
    iconSize: iconSize,
    decoration: UIKitIconButtonDecoration(
      iconColor: getIconColor(variant: .secondary),
      color: getBackgroundColor(variant: .secondary),
      borderRadius: .circular(40),
    ).copyWith(decoration: decoration),
  );

  factory UIKitIconButton.tertiary(
    AssetGenImage icon, {
    VoidCallback? onTap,
    double size = 40,
    double? iconSize,
    UIKitIconButtonDecoration? decoration,
  }) => UIKitIconButton(
    icon,
    onTap: onTap,
    size: size,
    iconSize: iconSize,
    decoration: UIKitIconButtonDecoration(
      iconColor: getIconColor(variant: .tertiary),
      color: getBackgroundColor(variant: .tertiary),
      borderRadius: .circular(40),
    ).copyWith(decoration: decoration),
  );

  Color? get _color {
    return decoration?.color ?? getBackgroundColor(variant: variant);
  }

  Color get _iconColor {
    return decoration?.iconColor ?? getIconColor(variant: variant);
  }

  BorderRadius get _borderRadius {
    return decoration?.borderRadius ?? .circular(40);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      color: _color,
      child: Ink(
        height: AppSetting.setHeight(size),
        width: AppSetting.setHeight(size),
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        child: InkWell(
          borderRadius: _borderRadius,
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

class UIKitIconButtonDecoration {
  final Color? color;
  final Color? iconColor;
  final BorderRadius? borderRadius;

  const UIKitIconButtonDecoration({
    this.color,
    this.iconColor,
    this.borderRadius,
  });

  UIKitIconButtonDecoration copyWith({UIKitIconButtonDecoration? decoration}) =>
      UIKitIconButtonDecoration(
        color: decoration?.color ?? color,
        iconColor: decoration?.iconColor ?? iconColor,
        borderRadius: decoration?.borderRadius ?? borderRadius,
      );
}
