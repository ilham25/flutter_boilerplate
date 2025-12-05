import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitAccordion extends StatefulWidget {
  final String title;
  final String? textContent;
  final Widget? content;

  final bool defaultOpen;

  const UIKitAccordion({
    super.key,
    this.defaultOpen = false,
    this.textContent,
    required this.title,
    this.content,
  }) : assert(
         textContent == null || content == null,
         "You can not use either textContent or content at the same time",
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

  @override
  Widget build(BuildContext context) {
    final AssetGenImage arrowIcon = isOpen
        ? Assets.icons.arrowUp
        : Assets.icons.arrowDown;

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
                    arrowIcon.image(
                      height: AppSetting.setHeight(12),
                      width: AppSetting.setWidth(12),
                      color: MyTheme.color.palette.dark.lightest,
                    ),
                  ],
                ),
                if (isOpen) ...[
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
