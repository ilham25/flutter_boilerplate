import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitContentSwitcher extends StatelessWidget {
  final List<Widget> tabs;
  final TabController? controller;

  const UIKitContentSwitcher({super.key, required this.tabs, this.controller});

  double get _radius => 16;
  double get _indicatorRadius => 12;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        tabBarTheme: TabBarThemeData(
          indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: Colors.transparent,
          indicator: BoxDecoration(
            color: MyTheme.color.palette.light.lightest,
            borderRadius: BorderRadius.circular(_indicatorRadius),
          ),
          labelColor: MyTheme.color.palette.dark.darkest,
          unselectedLabelColor: MyTheme.color.palette.dark.light,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        clipBehavior: .antiAlias,
        child: Container(
          clipBehavior: .antiAlias,
          height: AppSetting.setHeight(40),
          padding: .symmetric(
            horizontal: AppSetting.setWidth(4),
            vertical: AppSetting.setHeight(4),
          ),
          decoration: BoxDecoration(
            color: MyTheme.color.palette.light.light,
            borderRadius: BorderRadius.circular(_radius),
          ),
          child: TabBar(controller: controller, tabs: tabs),
        ),
      ),
    );
  }
}

class UIKitContentSwitch extends StatelessWidget {
  final String title;

  const UIKitContentSwitch({super.key, required this.title});

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

class UIKitContentSwitcherView extends TabBarView {
  const UIKitContentSwitcherView({
    super.key,
    required super.children,
    super.clipBehavior,
    super.controller,
    super.dragStartBehavior,
    super.physics,
    super.viewportFraction,
  });
}
