import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class _Checkbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  final double iconSize;
  final double size;
  final double radius;

  const _Checkbox({
    super.key,
    this.value = false,
    this.onChanged,
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
          color: value ? MyTheme.color.primary : Colors.white,
          border: Border.all(
            color: value
                ? MyTheme.color.primary
                : MyTheme.color.palette.light.darkest,
            width: 1.5,
          ),
        ),
        child: InkWell(
          onTap: onChanged != null
              ? () {
                  onChanged!(!value);
                }
              : null,
          borderRadius: .circular(radius),
          child: Center(
            child: Assets.icons.check.image(
              height: AppSetting.setHeight(iconSize),
              width: AppSetting.setHeight(iconSize),
              color: value ? MyTheme.color.white : Colors.transparent,
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
    super.onChanged,
    super.value,
    super.iconSize = 10,
    super.size = 16,
    super.radius = 4,
  });

  factory UIKitCheckbox.medium({
    ValueChanged<bool>? onChanged,
    bool value = false,
  }) {
    return UIKitCheckbox(
      onChanged: onChanged,
      value: value,
      iconSize: 12,
      size: 24,
      radius: 6,
    );
  }

  factory UIKitCheckbox.large({
    ValueChanged<bool>? onChanged,
    bool value = false,
  }) {
    return UIKitCheckbox(
      onChanged: onChanged,
      value: value,
      iconSize: 16,
      size: 32,
      radius: 8,
    );
  }
}
