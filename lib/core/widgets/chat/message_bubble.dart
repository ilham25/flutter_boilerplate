import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitMessageBubble extends StatelessWidget {
  final String name;
  final String message;

  final bool tip;

  final UIKitMessageBubbleVariant variant;

  const UIKitMessageBubble({
    super.key,
    this.name = "",
    required this.message,
    this.tip = false,
    this.variant = .sent,
  });

  factory UIKitMessageBubble.received({
    required String message,
    bool tip = false,
  }) => UIKitMessageBubble(message: message, tip: tip, variant: .received);

  Color get _backgroundColor {
    switch (variant) {
      case .sent:
        return MyTheme.color.primary;
      case .received:
        return MyTheme.color.palette.light.light;
    }
  }

  BorderRadiusGeometry get _borderRadius {
    final double radius = 20;

    switch (variant) {
      case .sent:
        return BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
          bottomRight: tip ? Radius.zero : Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
        );
      case .received:
        return BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
          bottomLeft: tip ? Radius.zero : Radius.circular(radius),
        );
    }
  }

  Color get _messageColor {
    switch (variant) {
      case .sent:
        return MyTheme.color.white;
      case .received:
        return MyTheme.color.palette.dark.darkest;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSetting.setWidth(16),
        vertical: AppSetting.setHeight(12),
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: _borderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (name.isNotEmpty) ...[
            Text(
              name,
              style: MyTheme.style.heading.h5.copyWith(
                color: MyTheme.color.palette.highlight.light,
              ),
              maxLines: 1,
              overflow: .ellipsis,
            ),
            Space.h(4),
          ],
          Text(
            message,
            style: MyTheme.style.body.m.copyWith(color: _messageColor),
          ),
        ],
      ),
    );
  }
}

enum UIKitMessageBubbleVariant { sent, received }
