import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitMessageInput extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;

  final String? placeholder;
  final VoidCallback? onShowMore;
  final VoidCallback? onSend;

  final bool autofocus;

  const UIKitMessageInput({
    super.key,
    this.controller,
    this.placeholder = "Type a message...",
    this.onShowMore,
    this.onSend,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  State<UIKitMessageInput> createState() => _UIKitMessageInputState();
}

class _UIKitMessageInputState extends State<UIKitMessageInput> {
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

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .center,
      children: [
        UIKitIconButton.secondary(
          size: 32,
          icon: Assets.icons.add,
          radius: 32,
          onTap: widget.onShowMore,
        ),
        Space.w(6),
        Flexible(
          flex: 1,
          fit: .tight,
          child: Container(
            height: AppSetting.setHeight(40),
            decoration: BoxDecoration(
              color: MyTheme.color.palette.light.light,
              borderRadius: BorderRadius.circular(70),
            ),
            padding: EdgeInsets.only(right: AppSetting.setWidth(6)),
            child: Row(
              crossAxisAlignment: .center,
              children: [
                Flexible(
                  flex: 1,
                  fit: .tight,
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    autofocus: widget.autofocus,
                    onTapOutside: (_) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                        left: AppSetting.setWidth(16),
                        right: AppSetting.setWidth(12),
                      ),
                      border: InputBorder.none,
                      hintStyle: _textStyle.copyWith(
                        color: MyTheme.color.palette.dark.lightest,
                      ),
                      hintText: widget.placeholder,
                    ),
                    style: _textStyle,
                    onSubmitted: (value) {
                      widget.onSend?.call();
                    },
                  ),
                ),
                if (text.isNotEmpty) ...[
                  Space.w(6),
                  UIKitIconButton(
                    size: 32,
                    icon: Assets.icons.send,
                    onTap: widget.onSend,
                    radius: 32,
                    iconSize: 12,
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
