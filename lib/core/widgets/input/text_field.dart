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

  final AssetGenImage? leadingIcon;
  final AssetGenImage? trailingIcon;

  final Color? leadingIconColor;
  final Color? trailingIconColor;

  final int? minLines;
  final int? maxLines;

  final TextInputType? keyboardType;

  const UIKitTextField({
    super.key,
    this.placeholder,
    this.errorText,
    this.controller,
    this.enabled = true,
    this.leadingIcon,
    this.trailingIcon,
    this.leadingIconColor,
    this.trailingIconColor,
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
    AssetGenImage? leadingIcon,
    AssetGenImage? trailingIcon,
    Color? leadingIconColor,
    Color? trailingIconColor,
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
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      leadingIconColor: leadingIconColor,
      trailingIconColor: trailingIconColor,
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
  Color get _leadingIconColor =>
      widget.leadingIconColor ?? MyTheme.color.palette.dark.lightest;
  Color get _trailingIconColor =>
      widget.trailingIconColor ?? MyTheme.color.palette.dark.lightest;

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

  Widget? get _trailingIcon {
    AssetGenImage? icon;
    if (widget.obscureText) {
      icon = isShowPassword
          ? Assets.icons.eyeVisible
          : Assets.icons.eyeInvisible;
    } else {
      icon = widget.trailingIcon;
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
        width: AppSetting.setWidth(40),

        child: Container(
          margin: EdgeInsets.only(right: _padding.right),
          child: icon.image(
            height: AppSetting.setHeight(20),
            width: AppSetting.setWidth(20),
            color: _trailingIconColor,
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
            prefixIcon: widget.leadingIcon == null
                ? null
                : SizedBox(
                    width: AppSetting.setWidth(40),
                    child: Container(
                      margin: EdgeInsets.only(left: _padding.left),
                      child: Center(
                        child: widget.leadingIcon!.image(
                          height: AppSetting.setHeight(16),
                          width: AppSetting.setHeight(16),
                          color: _leadingIconColor,
                        ),
                      ),
                    ),
                  ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: AppSetting.setHeight(16),
              maxWidth: AppSetting.setWidth(40),
              minHeight: AppSetting.setHeight(16),
              minWidth: AppSetting.setWidth(40),
            ),
            suffixIcon: _trailingIcon,
            suffixIconConstraints: BoxConstraints(
              maxHeight: AppSetting.setHeight(16),
              maxWidth: AppSetting.setWidth(40),
              minHeight: AppSetting.setHeight(16),
              minWidth: AppSetting.setWidth(40),
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
