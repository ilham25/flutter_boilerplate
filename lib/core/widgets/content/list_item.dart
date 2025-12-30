import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/core/widgets/input/checkbox.dart';
import 'package:flutter_boilerplate/core/widgets/input/toggle.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitListItem extends StatelessWidget {
  final String title;
  final String description;

  final ValueChanged<bool>? onChanged;
  final bool value;
  final int count;

  final VoidCallback? onTap;

  final Widget? left;
  final Widget? right;
  final AssetGenImage? leftIcon;
  final AssetGenImage? rightIcon;

  final UIKitListItemVariant? variant;

  final UIKitListItemDecoration? decoration;

  final EdgeInsets? padding;

  final CrossAxisAlignment leftAlignment;

  const UIKitListItem({
    super.key,
    required this.title,
    this.description = "",
    this.onChanged,
    this.left,
    this.leftIcon,
    this.rightIcon,
    this.onTap,
    this.right,
    this.variant,
    this.value = false,
    this.count = 0,
    this.decoration,
    this.padding,
    this.leftAlignment = CrossAxisAlignment.start,
  });

  factory UIKitListItem.toggle({
    required String title,
    required String description,
    required ValueChanged<bool> onChanged,
    required bool value,
    Widget? left,
    Widget? right,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    UIKitListItemDecoration? decoration,
    CrossAxisAlignment leftAlignment = CrossAxisAlignment.start,
  }) => UIKitListItem(
    variant: .toggle,
    title: title,
    description: description,
    left: left,
    leftIcon: leftIcon,
    rightIcon: rightIcon,
    right: right,
    value: value,
    onChanged: onChanged,
    decoration: decoration,
    leftAlignment: leftAlignment,
  );

  factory UIKitListItem.checkbox({
    required String title,
    required String description,
    required ValueChanged<bool> onChanged,
    required bool value,
    Widget? left,
    Widget? right,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    UIKitListItemDecoration? decoration,
    EdgeInsets? padding,
    CrossAxisAlignment leftAlignment = CrossAxisAlignment.start,
  }) => UIKitListItem(
    variant: .checkbox,
    title: title,
    description: description,
    left: left,
    leftIcon: leftIcon,
    rightIcon: rightIcon,
    right: right,
    value: value,
    onChanged: onChanged,
    decoration: decoration,
    padding: padding,
    leftAlignment: leftAlignment,
  );

  factory UIKitListItem.count({
    required String title,
    required String description,
    required int count,
    VoidCallback? onTap,
    Widget? left,
    Widget? right,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    UIKitListItemDecoration? decoration,
    EdgeInsets? padding,
    CrossAxisAlignment leftAlignment = CrossAxisAlignment.start,
  }) => UIKitListItem(
    variant: .count,
    title: title,
    description: description,
    left: left,
    leftIcon: leftIcon,
    rightIcon: rightIcon,
    right: right,
    count: count,
    onTap: onTap,
    decoration: decoration,
    padding: padding,
    leftAlignment: leftAlignment,
  );

  Color get _leftIconColor =>
      decoration?.leftIconColor ?? MyTheme.color.primary;
  Color get _rightIconColor =>
      decoration?.rightIconColor ?? MyTheme.color.palette.dark.lightest;

  bool get _isShowRightWidget =>
      right != null || rightIcon != null || onTap != null || onChanged != null;

  TextStyle get _titleTextStyle =>
      decoration?.titleTextStyle ?? MyTheme.style.body.m;
  TextStyle get _descriptionTextStyle =>
      decoration?.descriptionTextStyle ?? MyTheme.style.body.s;

  EdgeInsets get _padding =>
      padding ??
      EdgeInsets.symmetric(
        horizontal: AppSetting.setWidth(16),
        vertical: AppSetting.setHeight(16),
      );

  Widget _buildLeft() {
    if (left != null) return left!;

    if (leftIcon != null) {
      return leftIcon!.image(
        height: AppSetting.setHeight(20),
        width: AppSetting.setWidth(20),
        color: _leftIconColor,
      );
    }

    return SizedBox.shrink();
  }

  Widget _buildRight() {
    if (variant == .toggle) {
      return UIKitToggle(value: value, onChanged: onChanged);
    }

    if (variant == .checkbox) {
      return UIKitCheckbox.medium(onChanged: onChanged, value: value);
    }

    if (variant == .count) {
      if (count == 0) return SizedBox.shrink();
      return UIKitBadge.count(count: count);
    }

    if (right != null) return right!;

    if (rightIcon == null && onTap != null) {
      return Assets.icons.arrowRight.image(
        height: AppSetting.setHeight(12),
        width: AppSetting.setWidth(12),
        color: MyTheme.color.palette.dark.lightest,
      );
    }

    if (rightIcon != null) {
      return rightIcon!.image(
        height: AppSetting.setHeight(20),
        width: AppSetting.setWidth(20),
        color: _rightIconColor,
      );
    }

    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      borderRadius: decoration?.borderRadius,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: decoration?.borderRadius,
          color: decoration?.backgroundColor,
          border: decoration?.border,
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: decoration?.borderRadius,
          child: Padding(
            padding: _padding,
            child: Row(
              crossAxisAlignment: leftAlignment,
              children: [
                if (leftIcon != null || left != null)
                  Row(
                    children: [
                      _buildLeft(),
                      Space.w(decoration?.leftSpacing ?? 16),
                    ],
                  ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: .tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              title,
                              style: _titleTextStyle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (description.isNotEmpty) ...[
                              Space.h(4),
                              Text(
                                description,
                                style: _descriptionTextStyle.copyWith(
                                  color: MyTheme.color.palette.dark.light,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ],
                        ),
                      ),
                      if (_isShowRightWidget)
                        Row(
                          children: [
                            Space.w(decoration?.rightSpacing ?? 16),
                            _buildRight(),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum UIKitListItemVariant { toggle, checkbox, count }

class UIKitListItemDecoration {
  final TextStyle? titleTextStyle;
  final TextStyle? descriptionTextStyle;
  final BorderRadius borderRadius;
  final BoxBorder? border;
  final Color? leftIconColor;
  final Color? rightIconColor;
  final Color? backgroundColor;

  final double? leftSpacing;
  final double? rightSpacing;

  const UIKitListItemDecoration({
    this.titleTextStyle,
    this.descriptionTextStyle,
    this.borderRadius = BorderRadius.zero,
    this.border,
    this.leftIconColor,
    this.rightIconColor,
    this.backgroundColor,
    this.leftSpacing,
    this.rightSpacing,
  });

  UIKitListItemDecoration copyWith({UIKitListItemDecoration? decoration}) =>
      UIKitListItemDecoration(
        titleTextStyle: decoration?.titleTextStyle ?? titleTextStyle,
        descriptionTextStyle:
            decoration?.descriptionTextStyle ?? descriptionTextStyle,
        borderRadius: decoration?.borderRadius ?? borderRadius,
        border: decoration?.border ?? border,
        leftIconColor: decoration?.leftIconColor ?? leftIconColor,
        rightIconColor: decoration?.rightIconColor ?? rightIconColor,
        backgroundColor: decoration?.backgroundColor ?? backgroundColor,
        leftSpacing: decoration?.leftSpacing ?? leftSpacing,
        rightSpacing: decoration?.rightSpacing ?? rightSpacing,
      );
}
