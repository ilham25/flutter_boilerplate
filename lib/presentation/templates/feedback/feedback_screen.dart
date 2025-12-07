import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/content/tag.dart';
import 'package:flutter_boilerplate/core/widgets/input/star_rating.dart';
import 'package:flutter_boilerplate/core/widgets/input/text_field.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedbackBody();
  }
}

class FeedbackBody extends StatelessWidget {
  const FeedbackBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "Feedback"),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(24),
                  vertical: AppSetting.setHeight(24),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Your project is finished.",
                      style: MyTheme.style.heading.h2,
                    ),
                    Space.h(10),
                    Text(
                      "How would you rate the prototyping kit?",
                      style: MyTheme.style.body.m.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                    Space.h(20),
                    UIKitStarRating(value: 4, onChanged: (value) {}, max: 5),
                    Space.h(56),
                    Column(
                      crossAxisAlignment: .stretch,
                      children: [
                        Text(
                          "What did you like about it?",
                          style: MyTheme.style.heading.h5,
                        ),
                        Space.h(16),
                        Wrap(
                          // alignment: .spaceEvenly,
                          runAlignment: .start,
                          crossAxisAlignment: .start,
                          direction: .horizontal,
                          spacing: AppSetting.setWidth(8),
                          runSpacing: AppSetting.setHeight(8),
                          children: [
                            UIKitTag(
                              text: "Easy to use",
                              leftIcon: Assets.icons.placeholder,
                            ),
                            UIKitTag(
                              text: "Complete",
                              leftIcon: Assets.icons.placeholder,
                            ),
                            UIKitTag(
                              text: "Helpful",
                              leftIcon: Assets.icons.placeholder,
                              focused: true,
                            ),
                            UIKitTag(
                              text: "Convenient",
                              leftIcon: Assets.icons.placeholder,
                              focused: true,
                            ),
                            UIKitTag(
                              text: "Looks Good",
                              leftIcon: Assets.icons.placeholder,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Space.h(56),
                    Column(
                      crossAxisAlignment: .stretch,
                      children: [
                        Text(
                          "What could be improved?",
                          style: MyTheme.style.heading.h5,
                        ),
                        Space.h(16),
                        Wrap(
                          // alignment: .spaceEvenly,
                          runAlignment: .start,
                          crossAxisAlignment: .start,
                          direction: .horizontal,
                          spacing: AppSetting.setWidth(8),
                          runSpacing: AppSetting.setHeight(8),
                          children: [
                            UIKitTag(
                              text: "could have more components",
                              leftIcon: Assets.icons.placeholder,
                            ),
                            UIKitTag(
                              text: "complex",
                              leftIcon: Assets.icons.placeholder,
                            ),
                            UIKitTag(
                              text: "not interactive",
                              leftIcon: Assets.icons.placeholder,
                            ),
                            UIKitTag(
                              text: "only english",
                              leftIcon: Assets.icons.placeholder,
                              focused: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Space.h(56),
                    Column(
                      crossAxisAlignment: .stretch,
                      children: [
                        Text("Anything else?", style: MyTheme.style.heading.h5),
                        Space.h(16),
                        UIKitTextField.textArea(
                          placeholder: "Tell us everything.",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSetting.setWidth(24),
                vertical: AppSetting.setHeight(24),
              ),
              child: UIKitButton(
                title: "Submit",
                leftIcon: Assets.icons.placeholder,
                onTap: () {
                  UIKitToast.success(
                    title: "Feedback Submitted",
                    description: "Thank you for your feedback.",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
