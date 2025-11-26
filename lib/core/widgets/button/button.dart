import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  final double? width;

  final bool enable;
  final bool isLoading;
  final String loadingText;

  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  final TextStyle? textStyle;
  final double? radius;

  final EdgeInsets? padding;

  final AssetGenImage? leftIcon;
  final AssetGenImage? rightIcon;

  const UIKitButton({
    super.key,
    required this.title,
    required this.onTap,
    this.width,
    this.enable = true,
    this.isLoading = false,
    this.loadingText = 'Loading...',
    this.color,
    this.textColor,
    this.leftIcon,
    this.rightIcon,
    this.borderColor,
    this.textStyle,
    this.radius,
    this.padding,
  });

  final ButtonVariant variant = .primary;

  factory UIKitButton.secondary({
    required String title,
    required VoidCallback onTap,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    EdgeInsets? padding,
    bool isLoading = false,
    String loadingText = "Loading...",
  }) {
    final ButtonVariant variant = .secondary;
    return UIKitButton(
      title: title,
      onTap: onTap,
      borderColor: getGhostBorderColor(variant: variant),
      color: getGhostBackgroundColor(variant: variant),
      textColor: getGhostTextColor(variant: variant),
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      padding: padding,
      isLoading: isLoading,
      loadingText: loadingText,
    );
  }

  factory UIKitButton.tertiary({
    required String title,
    required VoidCallback onTap,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    EdgeInsets? padding,
    bool isLoading = false,
    String loadingText = "Loading...",
  }) {
    final ButtonVariant variant = .tertiary;
    return UIKitButton(
      title: title,
      onTap: onTap,
      borderColor: getGhostBorderColor(variant: variant),
      color: getGhostBackgroundColor(variant: variant),
      textColor: getGhostTextColor(variant: variant),
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      padding: padding,
      isLoading: isLoading,
      loadingText: loadingText,
    );
  }

  TextStyle get _textStyle {
    return textStyle ?? getButtonTextStyle();
  }

  double get _radius {
    return radius ?? getButtonRadius();
  }

  EdgeInsets get _padding {
    return padding ?? getPadding();
  }

  Color? get _color {
    return color ?? getGhostBackgroundColor(variant: variant);
  }

  Color get _textColor {
    return textColor ?? getGhostTextColor(variant: variant);
  }

  Color get _borderColor {
    return borderColor ?? getGhostBorderColor(variant: variant);
  }

  Widget _buildContent() {
    final isEnabled = enable && !isLoading;

    if (isLoading) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: AppSetting.setWidth(14),
              width: AppSetting.setWidth(14),
              child: CircularProgressIndicator(
                color: MyTheme.color.softGrey,
                strokeWidth: 2,
              ),
            ),
            Space.w(8),
            Text(
              loadingText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _textStyle.copyWith(
                color: isEnabled ? _textColor : MyTheme.color.softGrey,
              ),
            ),
          ],
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leftIcon != null) ...[
          leftIcon!.image(
            height: AppSetting.setHeight(12),
            width: AppSetting.setWidth(12),
            color: isEnabled ? _textColor : MyTheme.color.softGrey,
          ),
          Space.w(8),
        ],
        title.isEmpty
            ? const SizedBox.shrink()
            : Text(
                title,
                style: _textStyle.copyWith(
                  color: isEnabled ? _textColor : MyTheme.color.softGrey,
                ),
              ),
        if (rightIcon != null) ...[
          Space.w(8),
          rightIcon!.image(
            height: AppSetting.setHeight(12),
            width: AppSetting.setWidth(12),
            color: isEnabled ? _textColor : MyTheme.color.softGrey,
          ),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isEnabled = enable && !isLoading;

    return Material(
      type: MaterialType.transparency,
      child: Ink(
        width: width,
        decoration: BoxDecoration(
          color: isEnabled ? _color : MyTheme.color.disabled,
          borderRadius: BorderRadius.circular(_radius),
          border: Border.all(
            color: isEnabled ? _borderColor : MyTheme.color.disabled,
            width: 1,
          ),
        ),
        child: InkWell(
          onTap: isEnabled ? onTap : null,
          borderRadius: BorderRadius.circular(_radius),
          child: Padding(padding: _padding, child: _buildContent()),
        ),
      ),
    );
  }
}

Color getGhostBorderColor({required ButtonVariant variant}) {
  switch (variant) {
    case .primary:
      return MyTheme.color.primary;
    case .secondary:
      return MyTheme.color.primary;
    case .tertiary:
      return Colors.transparent;
  }
}

Color? getGhostBackgroundColor({required ButtonVariant variant}) {
  switch (variant) {
    case .primary:
      return MyTheme.color.primary;
    case .secondary:
      return Colors.transparent;
    case .tertiary:
      return Colors.transparent;
  }
}

Color getGhostIconColor({required ButtonVariant variant}) {
  switch (variant) {
    case .primary:
      return MyTheme.color.white;
    case .secondary:
      return MyTheme.color.primary;
    case .tertiary:
      return MyTheme.color.primary;
  }
}

Color getGhostTextColor({required ButtonVariant variant}) =>
    getGhostIconColor(variant: variant);

double getButtonHeight() {
  double btnSize = 0;

  return AppSetting.setHeight(btnSize);
}

TextStyle getButtonTextStyle() {
  TextStyle btnTextStyle = MyTheme.style.action.m;

  return btnTextStyle;
}

double getButtonRadius() {
  double btnRadius = 12;

  return btnRadius;
}

EdgeInsets getPadding() {
  final double horizontal = 16;
  final double vertical = 12;

  return EdgeInsets.symmetric(
    horizontal: AppSetting.setWidth(horizontal),
    vertical: AppSetting.setHeight(vertical),
  );
}

enum ButtonVariant { primary, secondary, tertiary }
