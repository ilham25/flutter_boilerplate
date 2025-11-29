import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class _RadioButton extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  final double iconSize;
  final double size;

  const _RadioButton({
    super.key,
    required this.selected,
    required this.onTap,
    required this.iconSize,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      child: Ink(
        height: AppSetting.setHeight(size),
        width: AppSetting.setHeight(size),
        decoration: BoxDecoration(
          borderRadius: .circular(size),
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
          borderRadius: .circular(size),
          child: Center(
            child: Container(
              height: AppSetting.setHeight(iconSize),
              width: AppSetting.setHeight(iconSize),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? MyTheme.color.white : Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UIKitRadioButton extends _RadioButton {
  const UIKitRadioButton({
    super.key,
    required super.onTap,
    required super.selected,
    super.iconSize = 6,
    super.size = 16,
  });

  factory UIKitRadioButton.medium({
    required VoidCallback onTap,
    required bool selected,
  }) {
    return UIKitRadioButton(
      onTap: onTap,
      selected: selected,
      iconSize: 10,
      size: 24,
    );
  }

  factory UIKitRadioButton.large({
    required VoidCallback onTap,
    required bool selected,
  }) {
    return UIKitRadioButton(
      onTap: onTap,
      selected: selected,
      iconSize: 12,
      size: 32,
    );
  }
}
