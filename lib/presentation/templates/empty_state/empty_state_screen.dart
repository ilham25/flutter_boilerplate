import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/control/content_switcher.dart';
import 'package:flutter_boilerplate/core/widgets/image/image_caching.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar_item.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class EmptyStateScreen extends StatelessWidget {
  const EmptyStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyStateBody();
  }
}

class EmptyStateBody extends StatelessWidget {
  const EmptyStateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Projects",
        automaticallyImplyLeading: false,
        actions: [
          UIKitIconButton.secondary(icon: Assets.icons.search, onTap: () {}),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        initialIndex: 2,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Padding(
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(16),
                  vertical: AppSetting.setHeight(12),
                ),
                child: UIKitContentSwitcher(
                  tabs: [
                    UIKitContentSwitch(title: "To do"),
                    UIKitContentSwitch(title: "In progress"),
                    UIKitContentSwitch(title: "Finished"),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: .symmetric(
                      horizontal: AppSetting.setWidth(24),
                      vertical: AppSetting.setHeight(24),
                    ),
                    child: Column(
                      mainAxisSize: .min,
                      crossAxisAlignment: .center,
                      mainAxisAlignment: .center,
                      children: [
                        SizedBox(
                          height: AppSetting.setHeight(100),
                          width: AppSetting.setWidth(100),
                          child: ImageCaching(imageUrl: "", borderRadius: 24),
                        ),
                        Space.h(32),
                        Container(
                          constraints: BoxConstraints(maxWidth: 240),
                          child: Column(
                            mainAxisSize: .min,
                            children: [
                              Text(
                                "Nothing here. For now.",
                                style: MyTheme.style.heading.h2,
                                textAlign: .center,
                              ),
                              Space.h(8),
                              Text(
                                "This is where you’ll find your finished projects.",
                                style: MyTheme.style.body.m.copyWith(
                                  color: MyTheme.color.palette.dark.light,
                                ),
                                textAlign: .center,
                              ),
                            ],
                          ),
                        ),
                        Space.h(32),
                        IntrinsicWidth(
                          child: UIKitButton(
                            title: "Start a project",
                            leftIcon: Assets.icons.placeholder,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: UIKitTabBar(
        currentIndex: 1,
        onTap: (index) {
          //
        },
        items: [
          UIKitTabBarItem(icon: Assets.icons.explore, title: "Explore"),
          UIKitTabBarItem(icon: Assets.icons.edit, title: "Projects"),
          UIKitTabBarItem(icon: Assets.icons.inbox, title: "Inbox"),
          UIKitTabBarItem(icon: Assets.icons.profile, title: "Profile"),
        ],
      ),
    );
  }
}
