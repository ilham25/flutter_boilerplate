import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/avatar/avatar.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_item.dart';
import 'package:flutter_boilerplate/core/widgets/image/image_caching.dart';
import 'package:flutter_boilerplate/core/widgets/progress/progress_bar.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:flutter_boilerplate/utils/date/date_format_utils.dart';

@RoutePage()
class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FinanceBody();
  }
}

class FinanceBody extends StatelessWidget {
  const FinanceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        leading: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: AppSetting.setWidth(200)),
          child: Row(
            children: [
              UIKitAvatar(radius: 100),
              Space.w(12),
              Flexible(
                fit: .tight,
                child: Column(
                  crossAxisAlignment: .stretch,
                  children: [
                    Text(
                      formatFullSort.format(DateTime.now()),
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                    Space.h(4),
                    Text(
                      "Iruha-sama",
                      style: MyTheme.style.heading.h4,
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          UIKitIconButton.secondary(
            Assets.icons.search,
            iconSize: 20,
            decoration: UIKitIconButtonDecoration(
              iconColor: MyTheme.color.palette.dark.darkest,
            ),
            onTap: () {},
          ),
          Space.w(8),
          UIKitBadge.count(
            count: 20,
            size: 16,
            decoration: UIKitBadgeDecoration(
              color: MyTheme.color.palette.error.dark,
            ),
            child: UIKitIconButton.secondary(
              Assets.icons.notificationOutlined,
              iconSize: 24,
              decoration: UIKitIconButtonDecoration(
                iconColor: MyTheme.color.palette.dark.darkest,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(16),
              vertical: AppSetting.setHeight(16),
            ),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                _TotalBalanceCard(),
                Space.h(8),
                Row(
                  crossAxisAlignment: .start,
                  children: [
                    Flexible(
                      fit: .tight,
                      child: _OverviewCard(
                        title: "Spendings",
                        onTap: () {
                          UIKitToast.info(
                            title: "Spendings",
                            description: "Spendings tapped!",
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: MyTheme.color.white,
                            borderRadius: .circular(8),
                          ),
                          padding: .symmetric(
                            horizontal: AppSetting.setWidth(8),
                            vertical: AppSetting.setHeight(8),
                          ),
                          child: Column(
                            crossAxisAlignment: .stretch,
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: "You spent ",
                                  children: [
                                    TextSpan(
                                      text: "\$1,823.00",
                                      style: MyTheme.style.action.m.copyWith(
                                        color:
                                            MyTheme.color.palette.dark.darkest,
                                      ),
                                    ),
                                    TextSpan(text: "\nthis month"),
                                  ],
                                ),
                                style: MyTheme.style.body.xs.copyWith(
                                  fontWeight: .w400,
                                  color: MyTheme.color.palette.dark.light,
                                ),
                              ),
                              UIKitProgressBar(value: 0.5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Space.w(8),
                    Flexible(
                      fit: .tight,
                      child: _OverviewCard(
                        title: "Subscriptions",
                        onTap: () {
                          UIKitToast.info(
                            title: "Subscriptions",
                            description: "Subscriptions tapped!",
                          );
                        },
                        child: Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: UIKitIconButton(
                                  Assets.icons.google,
                                  decoration: UIKitIconButtonDecoration(
                                    color: MyTheme.color.palette.error.dark,
                                    borderRadius: .circular(60),
                                  ),
                                  iconSize: 12,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: AppSetting.setWidth(32),
                                child: UIKitIconButton(
                                  Assets.icons.apple,
                                  decoration: UIKitIconButtonDecoration(
                                    color: MyTheme.color.palette.dark.darkest,
                                    borderRadius: .circular(60),
                                  ),
                                  iconSize: 12,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: AppSetting.setWidth(64),
                                child: UIKitIconButton(
                                  Assets.icons.facebook,
                                  decoration: UIKitIconButtonDecoration(
                                    color:
                                        MyTheme.color.palette.highlight.darkest,
                                    borderRadius: .circular(60),
                                  ),
                                  iconSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Space.h(8),
                Container(
                  decoration: BoxDecoration(
                    color: MyTheme.color.palette.light.light,
                    borderRadius: .circular(16),
                  ),

                  child: Column(
                    crossAxisAlignment: .stretch,
                    children: [
                      Padding(
                        padding: .symmetric(
                          horizontal: AppSetting.setWidth(8),
                          vertical: AppSetting.setHeight(8),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              fit: .tight,
                              child: Text(
                                "Recent Transactions",
                                style: MyTheme.style.action.m,
                              ),
                            ),
                            Space.w(4),
                            UIKitIconButton.secondary(
                              Assets.icons.filter,
                              iconSize: 14,
                              size: 20,
                              decoration: UIKitIconButtonDecoration(
                                iconColor: MyTheme.color.palette.dark.darkest,
                              ),
                            ),
                            // Assets.icons.filter.image(
                            //   height: AppSetting.setHeight(14),
                            //   width: AppSetting.setWidth(14),
                            //   color: MyTheme.color.palette.dark.darkest,
                            // ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        // padding: .symmetric(vertical: AppSetting.setHeight(8)),
                        // separatorBuilder: (context, index) => Space.h(2),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return UIKitListItem(
                            title: "Uber",
                            description: "Today, 09:40",
                            decoration: UIKitListItemDecoration(
                              titleTextStyle: MyTheme.style.action.m,
                              descriptionTextStyle: MyTheme.style.body.xs
                                  .copyWith(
                                    color: MyTheme.color.palette.dark.light,
                                  ),
                              leftSpacing: 8,
                            ),
                            leftAlignment: .center,
                            onTap: () {
                              //
                            },
                            left: SizedBox(
                              height: AppSetting.setHeight(32),
                              width: AppSetting.setHeight(32),
                              child: ImageCaching(
                                imageUrl:
                                    "https://picsum.photos/200?random=$index",
                                borderRadius: 100,
                              ),
                            ),
                            padding: .symmetric(
                              horizontal: AppSetting.setWidth(8),
                              vertical: AppSetting.setHeight(8),
                            ),
                            right: Column(
                              crossAxisAlignment: .end,
                              children: [
                                Text("\$32.16", style: MyTheme.style.action.m),
                                Space.h(4),
                                Text(
                                  "Debit Card",
                                  style: MyTheme.style.body.xs.copyWith(
                                    color: MyTheme.color.palette.dark.light,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OverviewCard extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget child;

  const _OverviewCard({
    super.key,
    required this.title,
    this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      color: MyTheme.color.palette.light.dark,
      borderRadius: .circular(16),
      child: Ink(
        height: AppSetting.setHeight(110),
        decoration: BoxDecoration(
          color: MyTheme.color.palette.light.light,
          borderRadius: .circular(16),
        ),
        child: InkWell(
          borderRadius: .circular(16),
          onTap: onTap,
          child: Padding(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(8),
              vertical: AppSetting.setHeight(8),
            ),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                Row(
                  children: [
                    Flexible(
                      fit: .tight,
                      child: Text(title, style: MyTheme.style.action.m),
                    ),
                    Space.w(4),
                    Assets.icons.arrowRight.image(
                      height: AppSetting.setHeight(10),
                      width: AppSetting.setWidth(10),
                      color: MyTheme.color.palette.dark.lightest,
                    ),
                  ],
                ),
                Space.h(8),
                Expanded(child: child),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TotalBalanceCard extends StatelessWidget {
  const _TotalBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSetting.setHeight(180),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [MyTheme.color.primary, MyTheme.color.palette.highlight.dark],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: AppSetting.setHeight(16),
            right: AppSetting.setWidth(16),
            child: Assets.icons.placeholder.image(
              height: AppSetting.setHeight(28),
              width: AppSetting.setWidth(28),
              color: MyTheme.color.white.withAlpha(200),
            ),
          ),
          Positioned(
            top: AppSetting.setHeight(20),
            right: AppSetting.setWidth(32),
            child: Assets.icons.placeholder.image(
              height: AppSetting.setHeight(20),
              width: AppSetting.setWidth(20),
              color: MyTheme.color.white.withAlpha(200),
            ),
          ),
          Positioned(
            top: AppSetting.setHeight(16),
            left: AppSetting.setWidth(16),
            child: Text(
              "******",
              style: MyTheme.style.heading.h3.copyWith(
                color: MyTheme.color.white,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: .symmetric(horizontal: AppSetting.setWidth(16)),
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Space.h(50),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .stretch,
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            Text(
                              "Total Balance",
                              style: MyTheme.style.body.m.copyWith(
                                color: MyTheme.color.palette.highlight.lightest,
                              ),
                            ),
                            Text(
                              "\$12,459.00",
                              style: MyTheme.style.heading.h1.copyWith(
                                color: MyTheme.color.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              fit: .tight,
                              child: UIKitButton.secondary(
                                title: "Send",
                                leftIcon: Assets.icons.send,
                                decoration: UIKitButtonDecoration(
                                  textColor: MyTheme.color.white,
                                  borderColor: MyTheme.color.white,
                                ),
                                onTap: () {},
                              ),
                            ),
                            Space.w(8),
                            Flexible(
                              fit: .tight,
                              child: UIKitButton.secondary(
                                title: "Request",
                                leftIcon: Assets.icons.sort,
                                decoration: UIKitButtonDecoration(
                                  textColor: MyTheme.color.white,
                                  borderColor: MyTheme.color.white,
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Space.h(16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
