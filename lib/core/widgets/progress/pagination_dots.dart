import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitPaginationDots extends StatelessWidget {
  final int dots;
  final int currentIndex;

  const UIKitPaginationDots({
    super.key,
    required this.dots,
    this.currentIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: .horizontal,
      alignment: .center,
      spacing: AppSetting.setWidth(8),
      children: List.generate(
        dots,
        (index) => _Dot(active: index == currentIndex),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final bool active;

  const _Dot({this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSetting.setHeight(8),
      width: AppSetting.setWidth(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active
            ? MyTheme.color.primary
            : MyTheme.color.palette.light.medium,
      ),
    );
  }
}
