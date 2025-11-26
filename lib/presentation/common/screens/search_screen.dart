import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBody();
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "Search"),
      body: SafeArea(
        child: ListView(
          children: [
            UIKitAppBar(
              title: "Page Title",
              actions: [
                UIKitButton.tertiary(
                  title: "Edit",
                  onTap: () {},
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSetting.setWidth(10),
                    vertical: AppSetting.setHeight(12),
                  ),
                ),
              ],
            ),
            Space.h(8),
            UIKitAppBar(
              title: "Page Title",
              leading: UIKitButton.tertiary(
                title: "Cancel",
                onTap: () {},
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(10),
                  vertical: AppSetting.setHeight(12),
                ),
              ),
              actions: [
                UIKitButton.tertiary(
                  title: "Edit",
                  onTap: () {},
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSetting.setWidth(10),
                    vertical: AppSetting.setHeight(12),
                  ),
                ),
              ],
            ),
            Space.h(8),
            UIKitAppBar(
              title: "Page Title",
              leading: UIKitButton.tertiary(
                title: "Cancel",
                onTap: () {},
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(10),
                  vertical: AppSetting.setHeight(12),
                ),
              ),
              actions: [
                UIKitIconButton(icon: Assets.icons.heartOutlined, onTap: () {}),
              ],
            ),
            Space.h(8),
            UIKitAppBar(
              title: "Page Title",
              leading: UIKitButton.tertiary(
                title: "Cancel",
                onTap: () {},
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(10),
                  vertical: AppSetting.setHeight(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
