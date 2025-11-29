import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/core/widgets/banner/banner.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/control/action_sheet.dart';
import 'package:flutter_boilerplate/core/widgets/control/content_switcher.dart';
import 'package:flutter_boilerplate/core/widgets/control/filter.dart';
import 'package:flutter_boilerplate/core/widgets/control/tab.dart';
import 'package:flutter_boilerplate/core/widgets/dialog/dialog.dart';
import 'package:flutter_boilerplate/core/widgets/input/checkbox.dart';
import 'package:flutter_boilerplate/core/widgets/input/radio_button.dart';
import 'package:flutter_boilerplate/core/widgets/input/toggle.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Projects",
        actions: [
          UIKitIconButton(
            icon: Assets.icons.search,
            onTap: () {
              context.router.push(const SearchRoute());
            },
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    UIKitToast.init(context);

    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSetting.setWidth(16)),
            child: UIKitContentSwitcher(
              tabs: [
                UIKitContentSwitch(title: "Section 1"),
                UIKitContentSwitch(title: "Section 2"),
                UIKitContentSwitch(title: "Section 3"),
              ],
            ),
          ),
          // Space.h(8),
          Expanded(
            child: UIKitContentSwitcherView(
              children: [
                ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSetting.setWidth(16),
                        vertical: AppSetting.setHeight(16),
                      ),
                      child: Column(
                        children: [
                          UIKitBanner(
                            title: "Title",
                            description:
                                "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do.",
                            image: "https://picsum.photos/200/300",
                            action: "Show More",
                            onAction: () {
                              UIKitToast.info(
                                title: "Title",
                                description:
                                    "Description. Lorem ipsum dolor sit amet.",
                              );
                              UIKitToast.success(
                                title: "Title",
                                description:
                                    "Description. Lorem ipsum dolor sit amet.",
                              );
                              UIKitToast.warning(
                                title: "Title",
                                description:
                                    "Description. Lorem ipsum dolor sit amet.",
                              );
                              UIKitToast.danger(
                                title: "Title",
                                description:
                                    "Description. Lorem ipsum dolor sit amet.",
                              );
                            },
                          ),
                          Space.h(8),
                          UIKitButton(
                            title: "Primary",
                            leftIcon: Assets.icons.add,
                            rightIcon: Assets.icons.success,
                            onTap: () {
                              UIKitDialog.show(
                                title: "Title",
                                description:
                                    "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do.",
                                actions: [
                                  UIKitButton.secondary(
                                    title: "Cancel",
                                    onTap: () {
                                      context.router.maybePop();
                                    },
                                  ),
                                  UIKitButton(
                                    title: "Confirm",
                                    onTap: () {
                                      context.router.maybePop();
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                          Space.h(8),
                          UIKitButton.secondary(
                            title: "Secondary",
                            leftIcon: Assets.icons.close,
                            rightIcon: Assets.icons.arrowRight,
                            onTap: () {
                              UIKitDialog.show(
                                title: "Title",
                                description:
                                    "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do.",
                                actions: [
                                  UIKitButton.secondary(
                                    title: "Action 1",
                                    onTap: () {},
                                  ),
                                  UIKitButton.secondary(
                                    title: "Action 2",
                                    onTap: () {},
                                  ),
                                  UIKitButton(title: "Action 3", onTap: () {}),
                                ],
                              );
                            },
                          ),
                          Space.h(8),
                          UIKitButton.tertiary(
                            title: "Tertiary",
                            leftIcon: Assets.icons.close,
                            rightIcon: Assets.icons.categories,
                            onTap: () {
                              UIKitActionSheet.show<String>(
                                items: [
                                  UIKitItem<String>(
                                    value: "add_project",
                                    title: "Add Project",
                                    icon: Assets.icons.add,
                                  ),
                                  UIKitItem<String>(
                                    value: "edit_project",
                                    title: "Edit Project",
                                    icon: Assets.icons.edit,
                                  ),
                                  UIKitItem<String>(
                                    value: "delete_project",
                                    title: "Delete Project",
                                    icon: Assets.icons.close,
                                  ),
                                ],
                              );
                            },
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitBadge(icon: Assets.icons.check),
                              Space.w(4),
                              UIKitBadge.count(count: 9999),
                              Space.w(4),
                              UIKitBadge(),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitFilter(),
                              Space.w(8),
                              UIKitFilter(count: 2),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitCheckbox(onTap: () {}, selected: true),
                              Space.w(8),
                              UIKitCheckbox(onTap: () {}, selected: false),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitCheckbox.medium(
                                onTap: () {},
                                selected: true,
                              ),
                              Space.w(8),
                              UIKitCheckbox.medium(
                                onTap: () {},
                                selected: false,
                              ),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitCheckbox.large(onTap: () {}, selected: true),
                              Space.w(8),
                              UIKitCheckbox.large(
                                onTap: () {},
                                selected: false,
                              ),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitRadioButton(onTap: () {}, selected: true),
                              Space.w(8),
                              UIKitRadioButton(onTap: () {}, selected: false),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitRadioButton.medium(
                                onTap: () {},
                                selected: true,
                              ),
                              Space.w(8),
                              UIKitRadioButton.medium(
                                onTap: () {},
                                selected: false,
                              ),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitRadioButton.large(
                                onTap: () {},
                                selected: true,
                              ),
                              Space.w(8),
                              UIKitRadioButton.large(
                                onTap: () {},
                                selected: false,
                              ),
                            ],
                          ),
                          Space.h(8),
                          UIKitToggle(value: true, onChanged: (value) {}),
                          UIKitToggle(value: false, onChanged: (value) {}),
                          Space.h(8),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSetting.setWidth(16),
                          ),
                          child: UIKitTabBar(
                            tabs: [
                              UIKitTabItem(title: "Title 1"),
                              UIKitTabItem(title: "Title 2"),
                              UIKitTabItem(title: "Title 3"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(child: Center(child: Text("Section 3"))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
