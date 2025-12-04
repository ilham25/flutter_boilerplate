import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitTextField extends StatefulWidget {
  final TextEditingController? controller;

  final String? placeholder;
  final String? errorText;
  final String obscuringText;

  final bool enabled;
  final bool obscureText;
  final bool readOnly;

  final AssetGenImage? leftIcon;
  final AssetGenImage? rightIcon;

  final Color? leftIconColor;
  final Color? rightIconColor;

  final int? minLines;
  final int? maxLines;

  final TextInputType? keyboardType;

  const UIKitTextField({
    super.key,
    this.placeholder,
    this.errorText,
    this.controller,
    this.enabled = true,
    this.leftIcon,
    this.rightIcon,
    this.leftIconColor,
    this.rightIconColor,
    this.obscureText = false,
    this.obscuringText = "*",
    this.minLines,
    this.maxLines,
    this.keyboardType,
    this.readOnly = false,
  });

  factory UIKitTextField.textArea({
    String? placeholder,
    TextEditingController? controller,
    String? errorText,
    bool enabled = true,
    int? minLines,
    int maxLines = 4,
    AssetGenImage? leftIcon,
    AssetGenImage? rightIcon,
    Color? leftIconColor,
    Color? rightIconColor,
    bool readOnly = false,
    TextInputType? keyboardType,
  }) {
    return UIKitTextField(
      placeholder: placeholder,
      controller: controller,
      errorText: errorText,
      enabled: enabled,
      minLines: minLines,
      maxLines: maxLines,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconColor: leftIconColor,
      rightIconColor: rightIconColor,
      readOnly: readOnly,
      keyboardType: keyboardType,
    );
  }

  @override
  State<UIKitTextField> createState() => _UIKitTextFieldState();
}

class _UIKitTextFieldState extends State<UIKitTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool isShowPassword = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  TextStyle get _textStyle => MyTheme.style.body.m;
  Color get _leftIconColor =>
      widget.leftIconColor ?? MyTheme.color.palette.dark.lightest;
  Color get _rightIconColor =>
      widget.rightIconColor ?? MyTheme.color.palette.dark.lightest;

  // Calculate padding based on height
  EdgeInsets get _padding {
    final double vertical = 14;
    final double horizontal = 16;

    double top = vertical;
    double bottom = vertical;
    double left = horizontal;
    double right = horizontal;

    return EdgeInsets.only(
      left: AppSetting.setWidth(left), // Default horizontal padding
      right: AppSetting.setWidth(right), // Default horizontal padding
      top: AppSetting.setHeight(top),
      bottom: AppSetting.setHeight(bottom),
    );
  }

  Widget? get _rightIcon {
    AssetGenImage? icon;
    if (widget.obscureText) {
      icon = isShowPassword
          ? Assets.icons.eyeVisible
          : Assets.icons.eyeInvisible;
    } else {
      icon = widget.rightIcon;
    }

    if (icon == null) {
      return null;
    }

    return GestureDetector(
      onTap: !widget.obscureText
          ? null
          : () {
              setState(() {
                isShowPassword = !isShowPassword;
              });
            },
      child: SizedBox(
        width: AppSetting.setWidth(36),
        child: Container(
          margin: EdgeInsets.only(right: _padding.right),
          child: Row(
            mainAxisAlignment: .end,
            children: [
              icon.image(
                height: AppSetting.setHeight(16),
                width: AppSetting.setWidth(16),
                color: _rightIconColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool get _isPasswordField => widget.obscureText && !isShowPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        TextField(
          controller: _controller,
          focusNode: _focusNode,
          onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          decoration: InputDecoration(
            filled: widget.enabled ? false : true,
            fillColor: MyTheme.color.palette.light.light,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: MyTheme.color.palette.light.darkest,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: MyTheme.color.palette.light.darkest,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: MyTheme.color.primary, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: MyTheme.color.danger, width: 1.5),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: MyTheme.color.palette.light.darkest,
                width: 1,
              ),
            ),
            hintStyle: _textStyle.copyWith(
              color: MyTheme.color.palette.dark.lightest,
            ),
            contentPadding: _padding,
            isDense: true,
            hintText: widget.placeholder,
            errorText: widget.errorText,
            enabled: widget.enabled,
            errorStyle: _textStyle.copyWith(fontSize: 0),
            prefixIcon: widget.leftIcon == null
                ? null
                : SizedBox(
                    width: AppSetting.setWidth(36),
                    child: Container(
                      margin: EdgeInsets.only(left: _padding.left),
                      child: Row(
                        mainAxisAlignment: .start,
                        children: [
                          widget.leftIcon!.image(
                            height: AppSetting.setHeight(16),
                            width: AppSetting.setHeight(16),
                            color: _leftIconColor,
                          ),
                        ],
                      ),
                    ),
                  ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: AppSetting.setHeight(16),
              maxWidth: AppSetting.setWidth(36),
              minHeight: AppSetting.setHeight(16),
              minWidth: AppSetting.setWidth(36),
            ),
            suffixIcon: _rightIcon,
            suffixIconConstraints: BoxConstraints(
              maxHeight: AppSetting.setHeight(16),
              maxWidth: AppSetting.setWidth(36),
              minHeight: AppSetting.setHeight(16),
              minWidth: AppSetting.setWidth(36),
            ),
          ),
          style: _textStyle,
          obscureText: _isPasswordField,
          obscuringCharacter: widget.obscuringText,
          maxLines: _isPasswordField ? 1 : widget.maxLines,
          minLines: widget.minLines,
          keyboardType: widget.keyboardType,
          readOnly: widget.readOnly,
        ),
        if (widget.errorText != null) ...[
          Space.h(4),
          Text(
            widget.errorText!,
            style: MyTheme.style.body.xs.copyWith(color: MyTheme.color.danger),
          ),
        ],
      ],
    );
  }
}
