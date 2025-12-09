import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitSort extends StatelessWidget {
  final bool isEnabled;
  final int? count;

  const UIKitSort({super.key, this.isEnabled = true, this.count});

  double get _radius => 12;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Ink(
        height: AppSetting.setHeight(36),
        decoration: BoxDecoration(
          color: isEnabled ? Colors.transparent : MyTheme.color.disabled,
          borderRadius: .circular(_radius),
          border: .all(
            color: isEnabled
                ? MyTheme.color.palette.light.darkest
                : MyTheme.color.disabled,
            width: 0.5,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          child: Padding(
            padding: .only(
              left: AppSetting.setWidth(12),
              right: AppSetting.setWidth(8),
              top: AppSetting.setHeight(8),
              bottom: AppSetting.setHeight(8),
            ),
            child: Row(
              mainAxisSize: .min,
              crossAxisAlignment: .center,
              children: [
                Assets.icons.sort.image(
                  height: AppSetting.setHeight(12),
                  width: AppSetting.setWidth(12),
                  color: MyTheme.color.palette.dark.lightest,
                ),
                Space.w(8),
                Text("Sort", style: MyTheme.style.body.s),
                Space.w(12),
                count == null
                    ? Assets.icons.arrowDown.image(
                        height: AppSetting.setHeight(10),
                        width: AppSetting.setWidth(10),
                        color: MyTheme.color.palette.light.darkest,
                      )
                    : UIKitBadge.count(count: count!, size: 20),
              ],
            ),
          ),
          onTap: () {
            //
          },
        ),
      ),
    );
  }
}
