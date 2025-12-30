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

  final UIKitButtonDecoration? decoration;

  final AssetGenImage? leftIcon;
  final AssetGenImage? rightIcon;

  const UIKitButton({
    super.key,
    required this.title,
    this.onTap,
    this.width,
    this.enable = true,
    this.isLoading = false,
    this.loadingText = 'Loading...',
    this.leftIcon,
    this.rightIcon,
    this.decoration,
  }) : variant = .primary;

  final ButtonVariant variant;

  factory UIKitButton.secondary({
    required String title,
    VoidCallback? onTap,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    EdgeInsets? padding,
    UIKitButtonDecoration? decoration,
    bool isLoading = false,
    String loadingText = "Loading...",
  }) {
    final ButtonVariant variant = .secondary;
    return UIKitButton(
      title: title,
      onTap: onTap,
      decoration: UIKitButtonDecoration(
        borderColor: getBorderColor(variant: variant),
        textColor: getTextColor(variant: variant),
        color: getBackgroundColor(variant: variant),
        padding: padding,
      ).copyWith(decoration: decoration),
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      isLoading: isLoading,
      loadingText: loadingText,
    );
  }

  factory UIKitButton.tertiary({
    required String title,
    VoidCallback? onTap,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    EdgeInsets? padding,
    bool isLoading = false,
    UIKitButtonDecoration? decoration,

    String loadingText = "Loading...",
  }) {
    final ButtonVariant variant = .tertiary;
    return UIKitButton(
      title: title,
      onTap: onTap,
      decoration: UIKitButtonDecoration(
        borderColor: getBorderColor(variant: variant),
        color: getBackgroundColor(variant: variant),
        textColor: getTextColor(variant: variant),
        padding: padding,
      ).copyWith(decoration: decoration),
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      isLoading: isLoading,
      loadingText: loadingText,
    );
  }

  TextStyle get _textStyle {
    return decoration?.textStyle ?? getButtonTextStyle();
  }

  BorderRadius get _borderRadius {
    return decoration?.borderRadius ?? getButtonRadius();
  }

  EdgeInsets get _padding {
    return decoration?.padding ?? getPadding();
  }

  Color? get _color {
    return decoration?.color ?? getBackgroundColor(variant: variant);
  }

  Color get _textColor {
    return decoration?.textColor ?? getTextColor(variant: variant);
  }

  Color get _borderColor {
    return decoration?.borderColor ?? getBorderColor(variant: variant);
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
          borderRadius: _borderRadius,
          border: Border.all(
            color: isEnabled ? _borderColor : MyTheme.color.disabled,
            width: 1,
          ),
        ),
        child: InkWell(
          onTap: isEnabled ? onTap : null,
          borderRadius: _borderRadius,
          child: Padding(padding: _padding, child: _buildContent()),
        ),
      ),
    );
  }
}

Color getBorderColor({required ButtonVariant variant}) {
  switch (variant) {
    case .primary:
      return MyTheme.color.primary;
    case .secondary:
      return MyTheme.color.primary;
    case .tertiary:
      return Colors.transparent;
  }
}

Color? getBackgroundColor({required ButtonVariant variant}) {
  switch (variant) {
    case .primary:
      return MyTheme.color.primary;
    case .secondary:
      return Colors.transparent;
    case .tertiary:
      return Colors.transparent;
  }
}

Color getIconColor({required ButtonVariant variant}) {
  switch (variant) {
    case .primary:
      return MyTheme.color.white;
    case .secondary:
      return MyTheme.color.primary;
    case .tertiary:
      return MyTheme.color.primary;
  }
}

Color getTextColor({required ButtonVariant variant}) =>
    getIconColor(variant: variant);

double getButtonHeight() {
  double btnSize = 0;

  return AppSetting.setHeight(btnSize);
}

TextStyle getButtonTextStyle() {
  TextStyle btnTextStyle = MyTheme.style.action.m;

  return btnTextStyle;
}

BorderRadius getButtonRadius() {
  double btnRadius = 12;

  return BorderRadius.circular(btnRadius);
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

class UIKitButtonDecoration {
  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  final TextStyle? textStyle;
  final BorderRadius? borderRadius;

  final EdgeInsets? padding;

  const UIKitButtonDecoration({
    this.color,
    this.textColor,
    this.borderColor,
    this.textStyle,
    this.borderRadius,
    this.padding,
  });

  UIKitButtonDecoration copyWith({UIKitButtonDecoration? decoration}) =>
      UIKitButtonDecoration(
        color: decoration?.color ?? color,
        textColor: decoration?.textColor ?? textColor,
        borderColor: decoration?.borderColor ?? borderColor,
        textStyle: decoration?.textStyle ?? textStyle,
        borderRadius: decoration?.borderRadius ?? borderRadius,
        padding: decoration?.padding ?? padding,
      );
}
