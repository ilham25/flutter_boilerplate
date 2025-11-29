import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/indicator/short_line_indicator.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitTabBar extends StatelessWidget {
  final List<Widget> tabs;
  final TabController? controller;

  const UIKitTabBar({super.key, required this.tabs, this.controller});

  double get _radius => 16;
  double get _indicatorRadius => 12;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        tabBarTheme: TabBarThemeData(
          indicatorSize: TabBarIndicatorSize.label,
          dividerColor: Colors.transparent,
          indicator: ShortLineIndicator(
            width: AppSetting.setWidth(24),
            thickness: AppSetting.setHeight(4),
            color: MyTheme.color.primary,
            radius: 20,
          ),
          labelPadding: .symmetric(
            horizontal: AppSetting.setWidth(16),
            vertical: AppSetting.setHeight(8),
          ),
          labelColor: MyTheme.color.palette.dark.darkest,
          unselectedLabelColor: MyTheme.color.palette.dark.light,
          splashBorderRadius: BorderRadius.circular(_indicatorRadius),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        clipBehavior: .antiAlias,
        child: Container(
          height: AppSetting.setHeight(44),
          padding: .symmetric(
            horizontal: AppSetting.setWidth(4),
            vertical: AppSetting.setHeight(4),
          ),
          child: TabBar(controller: controller, tabs: tabs),
        ),
      ),
    );
  }
}

class UIKitTabItem extends StatelessWidget {
  final String title;

  const UIKitTabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            Flexible(
              flex: 1,
              fit: .tight,
              child: Text(
                title,
                style: MyTheme.style.heading.h5,
                maxLines: 1,
                overflow: .ellipsis,
                textAlign: .center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UIKitTabView extends TabBarView {
  const UIKitTabView({
    super.key,
    required super.children,
    super.clipBehavior,
    super.controller,
    super.dragStartBehavior,
    super.physics,
    super.viewportFraction,
  });
}
