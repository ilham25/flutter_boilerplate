import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/divider.dart';
import 'package:flutter_boilerplate/core/widgets/input/text_field.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: AppSetting.setHeight(312),
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(24),
                  vertical: AppSetting.setHeight(40),
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  children: [
                    Text("Welcome!", style: MyTheme.style.heading.h1),
                    Space.h(24),
                    Column(
                      crossAxisAlignment: .stretch,
                      children: [
                        UIKitTextField(placeholder: "Email Address"),
                        Space.h(16),
                        UIKitTextField(
                          placeholder: "Password",
                          obscureText: true,
                        ),
                        Space.h(16),
                        GestureDetector(
                          onTap: () {
                            UIKitToast.warning(
                              title: "Forgot Password?",
                              description: "Please contact admin.",
                            );
                          },
                          child: Text(
                            "Forgot password?",
                            style: MyTheme.style.action.m.copyWith(
                              color: MyTheme.color.primary,
                            ),
                          ),
                        ),
                        Space.h(24),
                        UIKitButton(
                          title: "Login",
                          onTap: () {},
                          leftIcon: Assets.icons.placeholder,
                        ),
                        Space.h(16),
                        GestureDetector(
                          onTap: () {
                            context.router.push(const SignUpRoute());
                          },
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "Not a member? "),
                                TextSpan(
                                  text: "Register now",
                                  style: MyTheme.style.action.m.copyWith(
                                    color: MyTheme.color.primary,
                                  ),
                                ),
                              ],
                            ),
                            style: MyTheme.style.body.s.copyWith(
                              color: MyTheme.color.palette.dark.light,
                            ),
                            textAlign: .center,
                          ),
                        ),
                      ],
                    ),
                    Space.h(24),
                    UIKitDivider(),
                    Space.h(24),
                    Text(
                      "Or continue with",
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.light,
                      ),
                      textAlign: .center,
                    ),
                    Space.h(16),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        UIKitIconButton(
                          Assets.icons.google,
                          decoration: UIKitIconButtonDecoration(
                            color: MyTheme.color.palette.error.dark,
                            borderRadius: .circular(60),
                          ),
                          iconSize: 12,
                        ),
                        Space.w(12),
                        UIKitIconButton(
                          Assets.icons.apple,
                          decoration: UIKitIconButtonDecoration(
                            color: MyTheme.color.palette.dark.darkest,
                            borderRadius: .circular(60),
                          ),
                          iconSize: 12,
                        ),
                        Space.w(12),
                        UIKitIconButton(
                          Assets.icons.facebook,
                          decoration: UIKitIconButtonDecoration(
                            color: MyTheme.color.palette.highlight.darkest,
                            borderRadius: .circular(60),
                          ),
                          iconSize: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
