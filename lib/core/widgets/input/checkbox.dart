import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class _Checkbox extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  final double iconSize;
  final double size;
  final double radius;

  const _Checkbox({
    super.key,
    required this.selected,
    required this.onTap,
    required this.iconSize,
    required this.size,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      child: Ink(
        height: AppSetting.setHeight(size),
        width: AppSetting.setHeight(size),
        decoration: BoxDecoration(
          borderRadius: .circular(radius),
          color: selected ? MyTheme.color.primary : Colors.white,
          border: Border.all(
            color: selected
                ? MyTheme.color.primary
                : MyTheme.color.palette.light.darkest,
            width: 1.5,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: .circular(radius),
          child: Center(
            child: Assets.icons.check.image(
              height: AppSetting.setHeight(iconSize),
              width: AppSetting.setHeight(iconSize),
              color: selected ? MyTheme.color.white : Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

class UIKitCheckbox extends _Checkbox {
  const UIKitCheckbox({
    super.key,
    required super.onTap,
    required super.selected,
    super.iconSize = 10,
    super.size = 16,
    super.radius = 4,
  });

  factory UIKitCheckbox.medium({
    required VoidCallback onTap,
    required bool selected,
  }) {
    return UIKitCheckbox(
      onTap: onTap,
      selected: selected,
      iconSize: 12,
      size: 24,
      radius: 6,
    );
  }

  factory UIKitCheckbox.large({
    required VoidCallback onTap,
    required bool selected,
  }) {
    return UIKitCheckbox(
      onTap: onTap,
      selected: selected,
      iconSize: 16,
      size: 32,
      radius: 8,
    );
  }
}
