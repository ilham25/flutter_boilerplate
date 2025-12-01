import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitStarRating extends StatelessWidget {
  final int value;
  final int max;
  final ValueChanged<int> onChanged;

  const UIKitStarRating({
    super.key,
    required this.value,
    this.max = 5,
    required this.onChanged,
  }) : assert(value >= 0 && value <= max, "value must be between 0 and $max");

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(max, (index) {
        final isActive = index < value;

        final AssetGenImage icon = isActive
            ? Assets.icons.starFilled
            : Assets.icons.starOutlined;

        return Row(
          mainAxisSize: .min,
          children: [
            Material(
              type: .transparency,
              child: Ink(
                decoration: BoxDecoration(shape: .circle),
                child: InkWell(
                  onTap: () => onChanged(index + 1),
                  borderRadius: .circular(10),
                  child: Center(
                    child: icon.image(
                      height: AppSetting.setHeight(20),
                      width: AppSetting.setWidth(20),
                      color: isActive
                          ? MyTheme.color.primary
                          : MyTheme.color.palette.light.dark,
                    ),
                  ),
                ),
              ),
            ),
            if (index < max - 1) Space.w(4),
          ],
        );
      }),
    );
  }
}
