import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/avatar/avatar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_item.dart';
import 'package:flutter_boilerplate/core/widgets/dialog/dialog.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar_item.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsBody();
  }
}

class SettingsBody extends StatelessWidget {
  SettingsBody({super.key});

  final List<UIKitListItem> _tiles = [
    UIKitListItem(
      title: "Saved Messages",
      description: "",
      onTap: () {
        UIKitToast.info(
          title: "Saved Messages",
          description: "Saved Messages Tapped!",
        );
      },
    ),
    UIKitListItem(
      title: "Recent Calls",
      onTap: () {
        UIKitToast.info(
          title: "Recent Calls",
          description: "Recent Calls Tapped!",
        );
      },
    ),
    UIKitListItem(
      title: "Devices",
      onTap: () {
        UIKitToast.info(title: "Devices", description: "Devices Tapped!");
      },
    ),
    UIKitListItem(
      title: "Notifications",
      onTap: () {
        UIKitToast.info(
          title: "Notifications",
          description: "Notifications Tapped!",
        );
      },
    ),
    UIKitListItem(
      title: "Appearance",
      onTap: () {
        UIKitToast.info(title: "Appearance", description: "Appearance Tapped!");
      },
    ),
    UIKitListItem(
      title: "Language",
      onTap: () {
        UIKitToast.info(title: "Language", description: "Language Tapped!");
      },
    ),
    UIKitListItem(
      title: "Privacy & Security",
      onTap: () {
        UIKitToast.info(
          title: "Privacy & Security",
          description: "Privacy & Security Tapped!",
        );
      },
    ),
    UIKitListItem(
      title: "Storage",
      onTap: () {
        UIKitToast.info(title: "Storage", description: "Storage Tapped!");
      },
    ),
    UIKitListItem(
      title: "Log Out",
      onTap: () {
        UIKitDialog.show(
          title: "Log out",
          description:
              "Are you sure you want to log out? You'll need to login again to use the app.",
          actions: [
            UIKitButton.secondary(title: "Cancel", onTap: () {}),
            UIKitButton(
              title: "Log out",
              leftIcon: Assets.icons.placeholder,
              onTap: () {},
            ),
          ],
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "Settings", automaticallyImplyLeading: false),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Padding(
                padding: .symmetric(vertical: AppSetting.setHeight(8)),
                child: Column(
                  crossAxisAlignment: .center,
                  children: [
                    Stack(
                      children: [
                        UIKitAvatar.large(),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: UIKitIconButton(
                            Assets.icons.edit,
                            size: 24,
                            iconSize: 10,
                            decoration: UIKitIconButtonDecoration(
                              borderRadius: .circular(24),
                            ),
                            onTap: () {
                              UIKitToast.info(
                                title: "Edit Profile",
                                description: "Edit Profile Tapped!",
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Space.h(16),
                    Text("Lucas Scott", style: MyTheme.style.heading.h3),
                    Space.h(4),
                    Text(
                      "@lucasscott3",
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, index) => Space.h(0),
                itemCount: _tiles.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(16),
                  vertical: AppSetting.setHeight(24),
                ),
                itemBuilder: (context, index) => _tiles[index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: UIKitTabBar(
        currentIndex: 2,
        onTap: (index) {
          //
        },
        items: [
          UIKitTabBarItem(icon: Assets.icons.chat, title: "Chats"),
          UIKitTabBarItem(icon: Assets.icons.profile, title: "Friends"),
          UIKitTabBarItem(icon: Assets.icons.settings, title: "Settings"),
        ],
      ),
    );
  }
}
