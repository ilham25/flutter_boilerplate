import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/input/checkbox.dart';
import 'package:flutter_boilerplate/core/widgets/input/text_field.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpBody();
  }
}

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: AppSetting.setWidth(24),
            vertical: AppSetting.setHeight(24),
          ),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Text("Sign up", style: MyTheme.style.heading.h3),
              Space.h(8),
              Text(
                "Create an account to get started ",
                style: MyTheme.style.body.s.copyWith(
                  color: MyTheme.color.palette.dark.light,
                ),
              ),
              Space.h(24),
              Column(
                children: [
                  UIKitTextField(title: "Name", placeholder: "John Doe"),
                  Space.h(16),
                  UIKitTextField(
                    title: "Email Address",
                    placeholder: "name@email.com",
                    keyboardType: .emailAddress,
                  ),
                  Space.h(16),
                  UIKitTextField(
                    title: "Password",
                    placeholder: "Create a passaword",
                    obscureText: true,
                  ),
                  Space.h(16),
                  UIKitTextField(
                    placeholder: "Confirm password",
                    obscureText: true,
                  ),
                ],
              ),
              Space.h(24),
              Row(
                children: [
                  UIKitCheckbox.medium(onChanged: (value) {}),
                  Space.w(12),
                  Flexible(
                    flex: 1,
                    fit: .tight,
                    child: Text.rich(
                      TextSpan(
                        text: "I've read and agree with the ",
                        children: [
                          TextSpan(
                            text: "Terms & Conditions",
                            style: MyTheme.style.action.m.copyWith(
                              color: MyTheme.color.primary,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                UIKitToast.info(
                                  title: "Terms & Conditions",
                                  description: "Terms & Conditions Tapped!",
                                );
                              },
                          ),
                          TextSpan(text: " and the "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: MyTheme.style.action.m.copyWith(
                              color: MyTheme.color.primary,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                UIKitToast.info(
                                  title: "Privacy Policy",
                                  description: "Privacy Policy Tapped!",
                                );
                              },
                          ),
                        ],
                      ),
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                    ),
                  ),
                ],
              ),
              Space.h(24),
              UIKitButton(
                title: "Sign Up",
                leftIcon: Assets.icons.placeholder,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
