import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/input/code_input.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class ConfirmationCodeScreen extends StatelessWidget {
  const ConfirmationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ConfirmationCodeBody();
  }
}

class ConfirmationCodeBody extends StatelessWidget {
  const ConfirmationCodeBody({super.key});

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
                    Space.h(64),
                    Text(
                      "Enter confirmation code",
                      style: MyTheme.style.heading.h3,
                      textAlign: .center,
                      maxLines: 1,
                    ),
                    Space.h(8),
                    Text(
                      "A 4-digit code was sent to\nlucasscott3@email.com",
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                      textAlign: .center,
                    ),
                    Space.h(40),
                    UIKitCodeInput(),
                  ],
                ),
              ),
            ),
            Container(
              padding: .symmetric(
                horizontal: AppSetting.setWidth(24),
                vertical: AppSetting.setHeight(24),
              ),
              child: Column(
                children: [
                  UIKitButton.tertiary(title: "Resend Code", onTap: () {}),
                  Space.h(12),
                  UIKitButton(
                    title: "Continue",
                    leftIcon: Assets.icons.placeholder,
                    onTap: () {},
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
