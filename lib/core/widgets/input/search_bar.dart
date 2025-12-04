import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitSearchBar extends StatefulWidget {
  final TextEditingController? controller;

  final String? placeholder;
  final String? errorText;

  final bool enabled;
  final bool obscureText;
  final bool readOnly;

  final TextInputType? keyboardType;

  const UIKitSearchBar({
    super.key,
    this.placeholder,
    this.errorText,
    this.controller,
    this.enabled = true,
    this.obscureText = false,
    this.keyboardType,
    this.readOnly = false,
  });

  @override
  State<UIKitSearchBar> createState() => _UIKitSearchBarState();
}

class _UIKitSearchBarState extends State<UIKitSearchBar> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

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

  // Calculate padding based on height
  EdgeInsets get _padding {
    final double vertical = 12;
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
            filled: true,
            fillColor: MyTheme.color.palette.light.light,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                color: MyTheme.color.palette.light.light,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                color: MyTheme.color.palette.light.light,
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                color: MyTheme.color.palette.light.light,
                width: 1,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                color: MyTheme.color.palette.light.light,
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
            prefixIcon: SizedBox(
              width: AppSetting.setWidth(44),
              child: Container(
                margin: EdgeInsets.only(left: _padding.left),
                child: Row(
                  mainAxisAlignment: .start,
                  children: [
                    Assets.icons.search.image(
                      height: AppSetting.setHeight(16),
                      width: AppSetting.setHeight(16),
                      color: MyTheme.color.palette.dark.darkest,
                    ),
                  ],
                ),
              ),
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: AppSetting.setHeight(16),
              maxWidth: AppSetting.setWidth(44),
              minHeight: AppSetting.setHeight(16),
              minWidth: AppSetting.setWidth(44),
            ),
          ),
          style: _textStyle,
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
