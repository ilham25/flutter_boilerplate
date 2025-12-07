import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/core/widgets/banner/banner.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/accordion.dart';
import 'package:flutter_boilerplate/core/widgets/content/card.dart';
import 'package:flutter_boilerplate/core/widgets/content/divider.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_item.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_title.dart';
import 'package:flutter_boilerplate/core/widgets/content/tag.dart';
import 'package:flutter_boilerplate/core/widgets/control/action_sheet.dart';
import 'package:flutter_boilerplate/core/widgets/control/content_switcher.dart';
import 'package:flutter_boilerplate/core/widgets/input/dropdown.dart';
import 'package:flutter_boilerplate/core/widgets/control/filter.dart';
import 'package:flutter_boilerplate/core/widgets/control/tab.dart';
import 'package:flutter_boilerplate/core/widgets/dialog/dialog.dart';
import 'package:flutter_boilerplate/core/widgets/input/checkbox.dart';
import 'package:flutter_boilerplate/core/widgets/input/number_input.dart';
import 'package:flutter_boilerplate/core/widgets/input/radio_button.dart';
import 'package:flutter_boilerplate/core/widgets/input/search_bar.dart';
import 'package:flutter_boilerplate/core/widgets/input/slider.dart';
import 'package:flutter_boilerplate/core/widgets/input/star_rating.dart';
import 'package:flutter_boilerplate/core/widgets/input/text_field.dart';
import 'package:flutter_boilerplate/core/widgets/input/toggle.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar_item.dart';
import 'package:flutter_boilerplate/core/widgets/progress/stepper.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

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
      bottomNavigationBar: UIKitTabBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          debugPrint("index: $index");
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          UIKitTabBarItem(icon: Assets.icons.chat, title: "Chats"),
          UIKitTabBarItem(icon: Assets.icons.profile, title: "Friends"),
          UIKitTabBarItem(icon: Assets.icons.search, title: "Feeds"),
          UIKitTabBarItem(icon: Assets.icons.explore, title: "Status"),
          UIKitTabBarItem(icon: Assets.icons.settings, title: "Settings"),
        ],
      ),
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
                              UIKitCheckbox(onChanged: (value) {}, value: true),
                              Space.w(8),
                              UIKitCheckbox(
                                onChanged: (value) {},
                                value: false,
                              ),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitCheckbox.medium(
                                onChanged: (value) {},
                                value: true,
                              ),
                              Space.w(8),
                              UIKitCheckbox.medium(
                                onChanged: (value) {},
                                value: false,
                              ),
                            ],
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitCheckbox.large(
                                onChanged: (value) {},
                                value: true,
                              ),
                              Space.w(8),
                              UIKitCheckbox.large(
                                onChanged: (value) {},
                                value: false,
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
                          Space.h(8),
                          UIKitToggle(value: false, onChanged: (value) {}),
                          Space.h(8),
                          UIKitStarRating(
                            value: 3,
                            max: 5,
                            onChanged: (value) {},
                          ),
                          Space.h(8),
                          UIKitSlider(value: 0, onChanged: (value) {}),
                          Space.h(8),
                          UIKitSlider.withValue(
                            value: 0.25,
                            onChanged: (value) {},
                          ),
                          Space.h(8),
                          UIKitSlider.withTitle(
                            value: 0.5,
                            title: "Title",
                            onChanged: (value) {},
                          ),
                          Space.h(8),

                          UIKitNumberInput.counter(
                            value: 123,
                            onChanged: (value) {},
                          ),
                          Space.h(8),
                          UIKitNumberInput(
                            title: "Title",
                            value: 123,
                            onChanged: (value) {},
                          ),
                          Space.h(8),
                          UIKitNumberInput(
                            title: "Title",
                            value: 123,
                            min: 123,
                            onChanged: (value) {},
                          ),
                          Space.h(8),
                          UIKitNumberInput(
                            title: "Title",
                            errorText: "This is error",
                            value: 123,
                            max: 123,
                            onChanged: (value) {},
                          ),
                          Space.h(8),
                          UIKitNumberInput(
                            title: "Title",
                            value: 0,
                            onChanged: (value) {},
                            enabled: false,
                          ),
                          Space.h(8),
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                fit: .tight,
                                child: UIKitTextField(
                                  placeholder: "Placeholder",
                                ),
                              ),
                              Space.w(8),
                              Flexible(
                                flex: 1,
                                fit: .tight,
                                child: Container(
                                  color: MyTheme.color.danger,
                                  height: AppSetting.setHeight(48),
                                ),
                              ),
                            ],
                          ),
                          Space.h(8),
                          UIKitTextField(
                            leftIcon: Assets.icons.camera,
                            placeholder: "Placeholder",
                          ),
                          Space.h(8),
                          UIKitTextField(
                            leftIcon: Assets.icons.camera,
                            placeholder: "Readonly",
                            readOnly: true,
                          ),
                          Space.h(8),
                          UIKitDropdown(
                            onChanged: (value) {},
                            itemLabel: (value) => value,
                            items: ["Option 1", "Option 2", "Option 3"],
                            hintText: "Placeholder",
                            value: "Option 1",
                            leftIcon: Assets.icons.camera,
                          ),
                          Space.h(8),

                          UIKitTextField(
                            placeholder: "Ini password",
                            obscureText: true,
                          ),
                          Space.h(8),
                          UIKitTextField(
                            errorText: "Ini error",
                            rightIcon: Assets.icons.add,
                          ),
                          Space.h(8),
                          UIKitTextField.textArea(rightIcon: Assets.icons.edit),
                          Space.h(8),
                          UIKitTextField(enabled: false, placeholder: "Text"),

                          Space.h(8),
                          UIKitSearchBar(placeholder: "Placeholder"),
                          Space.h(8),
                          Row(
                            children: [
                              UIKitTag(text: "Tag"),
                              Space.w(8),
                              UIKitTag(
                                text: "Tag",
                                onTap: () {
                                  //
                                },
                              ),
                              Space.w(8),
                              UIKitTag(
                                text: "Tag",
                                focused: true,
                                rightIcon: Assets.icons.add,
                              ),
                            ],
                          ),
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
                          child: UIKitTab(
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
                Container(
                  child: ListView(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                      vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                    ),
                    children: [
                      Row(
                        children: [
                          UIKitCard(
                            image: "https://placehold.co/600x400/png",
                            title: "Title",
                            subtitle: "Subtitle",
                            description:
                                "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                            action: UIKitButton.secondary(
                              title: "Action",
                              onTap: () {},
                            ),
                            tag: UIKitTag(
                              text: "Scenery",
                              leftIcon: Assets.icons.image,
                              focused: true,
                            ),
                          ),
                        ],
                      ),
                      Space.h(8),
                      Row(
                        children: [
                          UIKitCard(
                            title: "Title",
                            subtitle: "Subtitle",
                            description:
                                "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                            action: UIKitButton.secondary(
                              title: "Action",
                              onTap: () {},
                            ),
                            icon: Assets.icons.inbox,
                          ),
                        ],
                      ),
                      Space.h(8),
                      UIKitListTitle(
                        title: "Title",
                        action: UIKitButton.tertiary(
                          title: "Edit",
                          onTap: () {},
                        ),
                      ),
                      UIKitListTitle(
                        title: "Title",
                        rightIcon: Assets.icons.search,
                      ),
                      Space.h(8),
                      UIKitCard.horizontal(
                        image: "https://placehold.co/600x400/png",
                        title: "Title",
                        subtitle: "Subtitle",
                        action: UIKitButton.secondary(
                          title: "Action",
                          onTap: () {},
                        ),
                      ),
                      Space.h(8),
                      UIKitCard.horizontal(
                        image: "https://placehold.co/600x400/png",
                        title: "Title",
                        subtitle: "Subtitle",
                        onTap: () {
                          //
                        },
                      ),
                      Space.h(8),
                      UIKitCard.horizontal(
                        title: "Title",
                        subtitle: "Subtitle",
                        action: UIKitButton.secondary(
                          title: "Action",
                          onTap: () {},
                        ),
                        icon: Assets.icons.camera,
                      ),
                      Space.h(8),
                      UIKitCard.horizontal(
                        title: "Title",
                        subtitle: "Subtitle",
                        onTap: () {
                          //
                        },
                        icon: Assets.icons.camera,
                      ),
                      Space.h(8),
                      UIKitCard.horizontal(
                        title: "Title",
                        subtitle: "Subtitle",
                        onTap: () {
                          //
                        },
                        // icon: Assets.icons.camera,
                      ),
                      Space.h(8),
                      UIKitListItem(
                        title: "Title",
                        description:
                            "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                        leftIcon: Assets.icons.camera,
                        onTap: () {
                          //
                        },
                      ),
                      Space.h(8),
                      UIKitListItem.toggle(
                        title: "Title",
                        description:
                            "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                        leftIcon: Assets.icons.camera,
                        onChanged: (value) {},
                        value: true,
                      ),
                      Space.h(8),
                      UIKitListItem.checkbox(
                        title: "Title",
                        description:
                            "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                        onChanged: (value) {},
                        value: true,
                      ),
                      Space.h(8),
                      UIKitListItem.count(
                        title: "Title",
                        description:
                            "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                        onTap: () {
                          //
                        },
                        count: 13,
                      ),
                      Space.h(8),
                      UIKitAccordion(
                        title: "Title",
                        textContent: "Content. Lorem ipsum dolor sit amet",
                      ),
                      Space.h(8),
                      UIKitDivider(),
                      Space.h(8),
                      UIKitAccordion(
                        title: "Title dua hehe",
                        content: Column(
                          children: [
                            UIKitCard.horizontal(
                              image: "https://placehold.co/600x400/png",
                              title: "Title",
                              subtitle: "Subtitle",
                              action: UIKitButton.secondary(
                                title: "Action",
                                onTap: () {},
                              ),
                            ),
                            Space.h(8),
                            UIKitCard.horizontal(
                              image: "https://placehold.co/600x400/png",
                              title: "Title",
                              subtitle: "Subtitle",
                              onTap: () {
                                //
                              },
                            ),
                            Space.h(8),
                            UIKitCard.horizontal(
                              title: "Title",
                              subtitle: "Subtitle",
                              action: UIKitButton.secondary(
                                title: "Action",
                                onTap: () {},
                              ),
                              icon: Assets.icons.camera,
                            ),
                          ],
                        ),
                      ),
                      Space.h(8),
                      Row(
                        children: [
                          UIKitStepper(title: "Step", number: 1),
                          Space.w(16),
                          UIKitStepper(title: "Step", number: 2, active: true),
                          Space.w(16),
                          UIKitStepper(title: "Step", number: 3, done: true),
                        ],
                      ),
                      Space.h(8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
