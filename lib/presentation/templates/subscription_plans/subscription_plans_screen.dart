import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/presentation/templates/subscription_plans/widgets/plan/plan_item.dart';
import 'package:flutter_boilerplate/presentation/templates/subscription_plans/widgets/plan/plan_option.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class SubscriptionPlansScreen extends StatelessWidget {
  const SubscriptionPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubscriptionPlansBody();
  }
}

class SubscriptionPlansBody extends StatelessWidget {
  const SubscriptionPlansBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(24),
                  vertical: AppSetting.setHeight(24),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: .only(
                        left: AppSetting.setWidth(8),
                        right: AppSetting.setWidth(8),
                        top: AppSetting.setHeight(24),
                        bottom: AppSetting.setHeight(24),
                      ),
                      child: Column(
                        crossAxisAlignment: .stretch,
                        children: [
                          Text(
                            "Choose your subscription plan",
                            style: MyTheme.style.heading.h1,
                          ),
                          Space.h(16),
                          Text(
                            "And get a 7-day free trial",
                            style: MyTheme.style.body.m.copyWith(
                              color: MyTheme.color.palette.dark.light,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Space.h(24),
                    Column(
                      children: [
                        PlanOption(
                          selected: true,
                          onTap: () {},
                          discount: 66,
                          period: .year,
                          price: "€ 94.80",
                          title: "Yearly",
                          recommended: true,
                        ),
                        Space.h(12),
                        PlanOption(
                          title: "Monthy",
                          selected: false,
                          onTap: () {},
                          discount: 53,
                          period: .month,
                          price: "€ 10.90",
                        ),
                        Space.h(12),
                        PlanOption(
                          title: "Weekly",
                          selected: false,
                          onTap: () {},
                          period: .week,
                          price: "€ 5.90",
                        ),
                      ],
                    ),
                    Space.h(32),
                    Container(
                      decoration: BoxDecoration(
                        color: MyTheme.color.palette.light.light,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(24),
                        vertical: AppSetting.setHeight(24),
                      ),
                      child: Column(
                        crossAxisAlignment: .stretch,
                        children: [
                          Text("You'll get:", style: MyTheme.style.heading.h3),
                          Space.h(16),
                          PlanItem(title: "Unlimited access"),
                          Space.h(16),
                          PlanItem(title: "200GB storage"),
                          Space.h(16),
                          PlanItem(title: "Sync all your devices"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: .symmetric(
                horizontal: AppSetting.setWidth(24),
                vertical: AppSetting.setHeight(24),
              ),
              child: UIKitButton(
                title: "Subscribe",
                leftIcon: Assets.icons.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
