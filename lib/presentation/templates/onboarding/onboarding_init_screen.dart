import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/progress/pagination_dots.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class OnboardingInitScreen extends StatelessWidget {
  const OnboardingInitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingInitBody();
  }
}

class OnboardingInitBody extends StatelessWidget {
  const OnboardingInitBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: MyTheme.color.palette.highlight.lightest,
                ),
                child: Center(
                  child: Assets.icons.image.image(
                    height: AppSetting.setHeight(32),
                    width: AppSetting.setWidth(32),
                    color: MyTheme.color.palette.highlight.light,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: MyTheme.color.white),
              padding: .symmetric(
                horizontal: AppSetting.setWidth(24),
                vertical: AppSetting.setHeight(24),
              ),
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Row(
                    children: [UIKitPaginationDots(dots: 3, currentIndex: 0)],
                  ),
                  Space.h(24),
                  Text(
                    "Create a prototype in just a few minutes",
                    style: MyTheme.style.heading.h1,
                  ),
                  Space.h(24),
                  Text(
                    "Enjoy these pre-made components and worry only about creating the best product ever.",
                    style: MyTheme.style.body.s.copyWith(
                      color: MyTheme.color.palette.dark.light,
                    ),
                  ),
                  Space.h(48),
                  UIKitButton(
                    title: "Next",
                    leftIcon: Assets.icons.placeholder,
                    onTap: () {
                      context.router.push(const OnboardingPersonalizeRoute());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
