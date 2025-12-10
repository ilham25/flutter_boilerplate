import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/tag.dart';
import 'package:flutter_boilerplate/core/widgets/image/image_caching.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class EcommerceProductDetailScreen extends StatelessWidget {
  const EcommerceProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EcommerceProductDetailBody();
  }
}

class EcommerceProductDetailBody extends StatelessWidget {
  const EcommerceProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: AppSetting.setHeight(345),
                    child: ImageCaching(
                      imageUrl: "https://picsum.photos/960/540",
                    ),
                  ),
                  Padding(
                    padding: .symmetric(
                      horizontal: AppSetting.setWidth(24),
                      vertical: AppSetting.setHeight(24),
                    ),
                    child: Column(
                      crossAxisAlignment: .stretch,
                      children: [
                        Row(
                          crossAxisAlignment: .start,
                          children: [
                            Flexible(
                              flex: 1,
                              fit: .tight,
                              child: Column(
                                crossAxisAlignment: .stretch,
                                children: [
                                  Text(
                                    "Amazing T-Shirt",
                                    style: MyTheme.style.heading.h2,
                                  ),
                                  Space.h(8),
                                  Text("€ 12.00", style: MyTheme.style.body.l),
                                ],
                              ),
                            ),
                            Space.w(8),
                            UIKitIconButton.secondary(
                              icon: Assets.icons.heartOutlined,
                              size: 20,
                              iconSize: 20,
                              iconColor: MyTheme.color.palette.dark.darkest,
                            ),
                          ],
                        ),
                        Space.h(24),
                        Text(
                          "The perfect T-shirt for when you want to feel comfortable but still stylish. Amazing for all ocasions. Made of 100% cotton fabric in four colours. Its modern style gives a lighter look to the outfit. Perfect for the warmest days.",
                          style: MyTheme.style.body.s.copyWith(
                            color: MyTheme.color.palette.dark.light,
                          ),
                        ),
                        Space.h(40),
                        Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            Text("Size", style: MyTheme.style.heading.h5),
                            Space.h(8),
                            Wrap(
                              direction: .horizontal,
                              spacing: AppSetting.setWidth(8),
                              children: [
                                UIKitTag(
                                  text: "xs",
                                  leftIcon: Assets.icons.placeholder,
                                  onTap: () {
                                    //
                                  },
                                ),
                                UIKitTag(
                                  text: "s",
                                  leftIcon: Assets.icons.placeholder,
                                  onTap: () {
                                    //
                                  },
                                  focused: true,
                                ),
                                UIKitTag(
                                  text: "m",
                                  leftIcon: Assets.icons.placeholder,
                                  onTap: () {
                                    //
                                  },
                                ),
                                UIKitTag(
                                  text: "l",
                                  leftIcon: Assets.icons.placeholder,
                                  onTap: () {
                                    //
                                  },
                                ),
                                UIKitTag(
                                  text: "xl",
                                  leftIcon: Assets.icons.placeholder,
                                  onTap: () {
                                    //
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Space.h(32),
                        Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            Text("Color", style: MyTheme.style.heading.h5),
                            Space.h(8),
                            Wrap(
                              direction: .horizontal,
                              spacing: AppSetting.setWidth(8),
                              children: [
                                _ColorItem(
                                  color: MyTheme.color.palette.dark.darkest,
                                ),
                                _ColorItem(
                                  color: MyTheme.color.palette.dark.light,
                                ),
                                _ColorItem(
                                  color: MyTheme.color.palette.light.darkest,
                                  selected: true,
                                ),
                                _ColorItem(
                                  color: MyTheme.color.palette.light.medium,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Space.h(200),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: UIKitAppBar(
              backgroundColor: Colors.transparent,
              leading: UIKitIconButton.secondary(
                icon: Assets.icons.close,
                iconColor: MyTheme.color.palette.dark.darkest,
                onTap: () {
                  context.router.maybePop();
                },
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: Container(
                decoration: BoxDecoration(color: MyTheme.color.white),
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(24),
                  vertical: AppSetting.setHeight(24),
                ),
                child: UIKitButton(
                  title: "Add to bag",
                  leftIcon: Assets.icons.add,
                  onTap: () {
                    //
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  final bool selected;
  final Color color;

  const _ColorItem({this.selected = false, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: .none,
      children: [
        IntrinsicWidth(
          child: Container(
            height: AppSetting.setHeight(32),
            width: AppSetting.setHeight(32),
            decoration: BoxDecoration(shape: .circle, color: color),
          ),
        ),
        if (selected)
          Positioned(
            top: -4,
            right: -4,
            child: UIKitBadge(
              size: 16,
              iconSize: 8,
              icon: Assets.icons.check,
              border: Border.all(color: MyTheme.color.white, width: 1),
            ),
          ),
      ],
    );
  }
}
