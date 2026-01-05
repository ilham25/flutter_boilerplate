import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitListTitle extends StatelessWidget {
  final String title;
  final Widget? action;
  final AssetGenImage? rightIcon;

  final double? iconSize;

  const UIKitListTitle({
    super.key,
    required this.title,
    this.action,
    this.rightIcon,
    this.iconSize,
  }) : assert(
         action == null || rightIcon == null,
         "You can not use either action or rightIcon at the same time",
       );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppSetting.setWidth(MyTheme.defaultPadding),
        right: action != null ? 0 : AppSetting.setWidth(MyTheme.defaultPadding),
        top: AppSetting.setHeight(8),
        bottom: AppSetting.setHeight(8),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            fit: .tight,
            child: Text(title, style: MyTheme.style.heading.h4),
          ),
          if (action != null || rightIcon != null) ...[
            Space.w(16),
            if (action != null) action!,
            if (rightIcon != null)
              rightIcon!.image(
                height: AppSetting.setHeight(iconSize ?? 16),
                width: AppSetting.setHeight(iconSize ?? 16),
                color: MyTheme.color.palette.dark.lightest,
              ),
          ],
        ],
      ),
    );
  }
}
