import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_item.dart';
import 'package:flutter_boilerplate/core/widgets/progress/progress_bar.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class OnboardingPersonalizeScreen extends StatelessWidget {
  const OnboardingPersonalizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPersonalizeBody();
  }
}

class OnboardingPersonalizeBody extends StatefulWidget {
  const OnboardingPersonalizeBody({super.key});

  @override
  State<OnboardingPersonalizeBody> createState() =>
      _OnboardingPersonalizeBodyState();
}

class _OnboardingPersonalizeBodyState extends State<OnboardingPersonalizeBody> {
  final List<String> interests = [
    "User Interface",
    "User Experience",
    "User Research",
    "UX Writing",
    "User Testing",
    "Service Design",
    "Strategy",
    "Design Systems",
  ];

  final List<String> selectedInterests = [
    "User Interface",
    "User Research",
    "Strategy",
    "Design Systems",
  ];

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
                  crossAxisAlignment: .stretch,
                  children: [
                    UIKitProgressBar(value: .5),
                    Space.h(40),
                    Text(
                      "Personalise your experience",
                      style: MyTheme.style.heading.h1,
                    ),
                    Space.h(16),
                    Text(
                      "Choose your interests.",
                      style: MyTheme.style.body.m.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                    Space.h(40),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => Space.h(8),
                      itemCount: interests.length,
                      itemBuilder: (context, index) {
                        final item = interests.elementAt(index);
                        final selected = selectedInterests.contains(item);
                        return UIKitListItem(
                          title: item,
                          backgroundColor: selected
                              ? MyTheme.color.palette.highlight.lightest
                              : Colors.transparent,
                          borderRadius: .circular(12),
                          border: .all(
                            color: selected
                                ? MyTheme.color.palette.highlight.lightest
                                : MyTheme.color.palette.light.dark,
                            width: 0.5,
                          ),
                          onTap: () {
                            setState(() {
                              if (selected) {
                                selectedInterests.remove(item);
                              } else {
                                selectedInterests.add(item);
                              }
                            });
                          },
                          right: selected
                              ? Assets.icons.check.image(
                                  height: AppSetting.setHeight(12),
                                  width: AppSetting.setHeight(12),
                                  color: MyTheme.color.primary,
                                )
                              : SizedBox.shrink(),
                        );
                      },
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
                title: "Next",
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
