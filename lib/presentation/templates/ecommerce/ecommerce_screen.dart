import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/card.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_title.dart';
import 'package:flutter_boilerplate/core/widgets/image/image_caching.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar_item.dart';
import 'package:flutter_boilerplate/core/widgets/progress/pagination_dots.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class EcommerceScreen extends StatelessWidget {
  const EcommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EcommerceBody();
  }
}

class EcommerceBody extends StatelessWidget {
  EcommerceBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        leading: UIKitIconButton.secondary(
          Assets.icons.search,
          decoration: UIKitIconButtonDecoration(
            iconColor: MyTheme.color.palette.dark.darkest,
          ),
          onTap: () {
            //
          },
        ),
        actions: [
          UIKitIconButton.secondary(
            Assets.icons.heartOutlined,
            decoration: UIKitIconButtonDecoration(
              iconColor: MyTheme.color.palette.dark.darkest,
            ),
            onTap: () {
              //
            },
          ),
          UIKitBadge.count(
            count: 9,
            size: 18,
            child: UIKitIconButton.secondary(
              Assets.icons.shoppingBagOutlined,
              decoration: UIKitIconButtonDecoration(
                iconColor: MyTheme.color.palette.dark.darkest,
              ),
              onTap: () {
                context.router.push(const EcommerceBagRoute());
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: AppSetting.setHeight(214),
              child: Stack(
                children: [
                  PageView(
                    controller: _controller,
                    children: images
                        .map((image) => ImageCaching(imageUrl: ""))
                        .toList(),
                  ),
                  Positioned(
                    bottom: AppSetting.setHeight(16),
                    right: 0,
                    left: 0,
                    child: UIKitPaginationDots(
                      dots: images.length,
                      controller: _controller,
                      onDotTap: (index) {
                        _controller.jumpToPage(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: .symmetric(vertical: AppSetting.setHeight(24)),
              child: Column(
                children: [
                  UIKitListTitle(
                    title: "Perfect for you",
                    action: UIKitButton.tertiary(
                      title: "See more",
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(16),
                        vertical: AppSetting.setHeight(8),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: AppSetting.setHeight(192),
                    child: ListView.separated(
                      padding: .symmetric(horizontal: AppSetting.setWidth(16)),
                      shrinkWrap: true,
                      scrollDirection: .horizontal,
                      separatorBuilder: (context, index) => Space.w(12),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return UIKitCard(
                          title: "Product ${index + 1}",
                          subtitle: "€ ${(index + 1) * 10}.00",
                          image: "",
                          titleStyle: MyTheme.style.body.s,
                          subtitleStyle: MyTheme.style.heading.h4.copyWith(),
                          onTap: () {
                            context.router.push(
                              const EcommerceProductDetailRoute(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Space.h(40),
                  Padding(
                    padding: .symmetric(vertical: AppSetting.setHeight(24)),
                    child: Column(
                      children: [
                        UIKitListTitle(
                          title: "For this summer",
                          action: UIKitButton.tertiary(
                            title: "See more",
                            padding: .symmetric(
                              horizontal: AppSetting.setWidth(16),
                              vertical: AppSetting.setHeight(8),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppSetting.setHeight(192),
                    child: ListView.separated(
                      padding: .symmetric(horizontal: AppSetting.setWidth(16)),
                      shrinkWrap: true,
                      scrollDirection: .horizontal,
                      separatorBuilder: (context, index) => Space.w(12),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return UIKitCard(
                          title: "Product ${index + 1}",
                          subtitle: "€ ${(index + 1) * 10}.00",
                          image: "",
                          onTap: () {
                            context.router.push(
                              const EcommerceProductDetailRoute(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: UIKitTabBar(
        // currentIndex: selectedIndex,
        onTap: (index) {
          // debugPrint("index: $index");
          // setState(() {
          //   selectedIndex = index;
          // });
        },
        items: [
          UIKitTabBarItem(icon: Assets.icons.explore, title: "Explore"),
          UIKitTabBarItem(icon: Assets.icons.categories, title: "Categories"),
          UIKitTabBarItem(icon: Assets.icons.store, title: "Stores"),
          UIKitTabBarItem(icon: Assets.icons.profile, title: "Profile"),
        ],
      ),
    );
  }
}

final List<String> images = [
  "https://picsum.photos/540/960?random=1",
  "https://picsum.photos/540/960?random=2",
  "https://picsum.photos/540/960?random=3",
  "https://picsum.photos/540/960?random=4",
  "https://picsum.photos/540/960?random=5",
];
