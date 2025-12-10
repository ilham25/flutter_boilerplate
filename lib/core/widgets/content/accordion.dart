import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitAccordion extends StatefulWidget {
  final String title;
  final String? textContent;
  final Widget? content;

  final bool defaultOpen;
  final int count;

  final UIKitAccordionVariant variant;

  const UIKitAccordion({
    super.key,
    this.defaultOpen = false,
    this.textContent,
    required this.title,
    this.content,
    this.count = 0,
    this.variant = .base,
  }) : assert(
         textContent == null || content == null,
         "You can not use either textContent or content at the same time",
       );

  factory UIKitAccordion.count({
    required String title,
    int count = 0,
    bool defaultOpen = false,
    String? textContent,
    Widget? content,
  }) => UIKitAccordion(
    title: title,
    count: count,
    defaultOpen: defaultOpen,
    content: content,
    textContent: textContent,
    variant: .count,
  );

  @override
  State<UIKitAccordion> createState() => _UIKitAccordionState();
}

class _UIKitAccordionState extends State<UIKitAccordion> {
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    isOpen = widget.defaultOpen;
  }

  Widget _buildRight() {
    final AssetGenImage arrowIcon = isOpen
        ? Assets.icons.arrowUp
        : Assets.icons.arrowDown;

    final Widget baseWidget = arrowIcon.image(
      height: AppSetting.setHeight(12),
      width: AppSetting.setWidth(12),
      color: MyTheme.color.palette.dark.lightest,
    );

    if (widget.variant == .base) {
      return baseWidget;
    }

    if (widget.variant == .count) {
      if (widget.count == 0) return baseWidget;
      return UIKitBadge.count(count: widget.count);
    }

    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      child: Ink(
        child: InkWell(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSetting.setWidth(16),
              vertical: AppSetting.setHeight(16),
            ),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: .tight,
                      child: Text(
                        widget.title,
                        style: MyTheme.style.body.m,
                        maxLines: 1,
                        overflow: .ellipsis,
                      ),
                    ),
                    Space.w(8),
                    _buildRight(),
                  ],
                ),
                if (isOpen &&
                    (widget.content != null || widget.textContent != null)) ...[
                  Space.h(12),
                  if (widget.content != null) widget.content!,
                  if (widget.textContent != null)
                    Text(
                      widget.textContent!,
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum UIKitAccordionVariant { base, count }
