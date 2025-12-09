import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitSearchBar extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;

  final String? placeholder;
  final String? errorText;

  final bool enabled;
  final bool obscureText;
  final bool readOnly;
  final bool autofocus;

  final TextInputType? keyboardType;

  final VoidCallback? onTap;
  final VoidCallback? onClear;
  final ValueChanged<String>? onSubmitted;

  const UIKitSearchBar({
    super.key,
    this.placeholder,
    this.errorText,
    this.controller,
    this.enabled = true,
    this.obscureText = false,
    this.keyboardType,
    this.readOnly = false,
    this.onTap,
    this.focusNode,
    this.autofocus = false,
    this.onClear,
    this.onSubmitted,
  });

  @override
  State<UIKitSearchBar> createState() => _UIKitSearchBarState();
}

class _UIKitSearchBarState extends State<UIKitSearchBar> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  String text = "";

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();

    text = _controller.text;
    _controller.addListener(() {
      setState(() {
        text = _controller.text;
      });
    });
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

  Widget? get _rightIcon {
    if (widget.onClear == null || text.isEmpty) return null;

    return SizedBox(
      width: AppSetting.setWidth(44),
      child: Container(
        margin: EdgeInsets.only(right: _padding.right),
        child: Row(
          mainAxisAlignment: .end,
          children: [
            UIKitIconButton.secondary(
              icon: Assets.icons.close,
              onTap: widget.onClear,
              iconSize: 12,
              size: 16,
              iconColor: MyTheme.color.palette.dark.light,
            ),
          ],
        ),
      ),
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
          onTap: widget.onTap,
          autofocus: widget.autofocus,
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
            suffixIcon: _rightIcon,
            suffixIconConstraints: BoxConstraints(
              maxHeight: AppSetting.setHeight(16),
              maxWidth: AppSetting.setWidth(44),
              minHeight: AppSetting.setHeight(16),
              minWidth: AppSetting.setWidth(44),
            ),
          ),
          style: _textStyle,
          keyboardType: widget.keyboardType,
          readOnly: widget.readOnly,
          onSubmitted: widget.onSubmitted,
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
