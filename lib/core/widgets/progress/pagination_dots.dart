import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitPaginationDots extends StatefulWidget {
  final int dots;
  final int currentIndex;

  final PageController? controller;
  final Function(int index)? onDotTap;

  const UIKitPaginationDots({
    super.key,
    required this.dots,
    this.currentIndex = 0,
    this.controller,
    this.onDotTap,
  });

  @override
  State<UIKitPaginationDots> createState() => _UIKitPaginationDotsState();
}

class _UIKitPaginationDotsState extends State<UIKitPaginationDots> {
  int currentIndex = 0;

  void onInit() {
    widget.controller?.addListener(onPageChanged);
  }

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
    onInit();
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller?.removeListener(onPageChanged);
  }

  void onPageChanged() {
    if (widget.controller == null) return;
    setState(() {
      currentIndex = widget.controller!.page!.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: .horizontal,
      alignment: .center,
      spacing: AppSetting.setWidth(8),
      children: List.generate(
        widget.dots,
        (index) => _Dot(
          active: index == currentIndex,
          onTap: widget.onDotTap != null ? () => widget.onDotTap!(index) : null,
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final bool active;
  final VoidCallback? onTap;

  const _Dot({this.active = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppSetting.setHeight(8),
        width: AppSetting.setWidth(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: active
              ? MyTheme.color.primary
              : MyTheme.color.palette.light.medium,
        ),
      ),
    );
  }
}
