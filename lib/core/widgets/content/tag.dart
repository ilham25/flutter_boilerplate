import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitTag extends StatelessWidget {
  final String text;

  final bool focused;

  final AssetGenImage? leftIcon;
  final AssetGenImage? rightIcon;

  final Color? leftIconColor;
  final Color? rightIconColor;
  final Color? backgroundColor;
  final Color? textColor;

  final VoidCallback? onTap;

  const UIKitTag({
    super.key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    this.leftIconColor,
    this.rightIconColor,
    this.backgroundColor,
    this.focused = false,
    this.textColor,
    this.onTap,
  });

  Color get _backgroundColor {
    if (backgroundColor != null) return backgroundColor!;
    if (focused) return MyTheme.color.palette.highlight.darkest;
    return MyTheme.color.palette.highlight.lightest;
  }

  Color get _textColor {
    if (textColor != null) return textColor!;
    if (focused) return MyTheme.color.white;
    return MyTheme.color.palette.highlight.darkest;
  }

  Color get _leftIconColor {
    if (leftIconColor != null) return leftIconColor!;
    return _textColor;
  }

  Color get _rightIconColor {
    if (rightIconColor != null) return rightIconColor!;
    return _textColor;
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      focusable: onTap != null,
      child: Material(
        child: Ink(
          height: AppSetting.setHeight(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: _backgroundColor,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppSetting.setWidth(8),
              ),
              child: Row(
                crossAxisAlignment: .center,
                children: [
                  if (leftIcon != null) ...[
                    leftIcon!.image(
                      height: AppSetting.setHeight(12),
                      width: AppSetting.setWidth(12),
                      color: _leftIconColor,
                    ),
                    Space.w(4),
                  ],
                  Text(
                    text.toUpperCase(),
                    style: MyTheme.style.caption.m.copyWith(color: _textColor),
                    maxLines: 1,
                    overflow: .ellipsis,
                  ),
                  if (rightIcon != null) ...[
                    Space.w(4),
                    rightIcon!.image(
                      height: AppSetting.setHeight(12),
                      width: AppSetting.setWidth(12),
                      color: _rightIconColor,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
