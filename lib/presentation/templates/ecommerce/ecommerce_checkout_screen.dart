import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_item.dart';
import 'package:flutter_boilerplate/core/widgets/input/checkbox.dart';
import 'package:flutter_boilerplate/core/widgets/progress/stepper.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/presentation/templates/ecommerce/widgets/payment/payment_method.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class EcommerceCheckoutScreen extends StatelessWidget {
  const EcommerceCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EcommerceCheckoutBody();
  }
}

class EcommerceCheckoutBody extends StatefulWidget {
  const EcommerceCheckoutBody({super.key});

  @override
  State<EcommerceCheckoutBody> createState() => _EcommerceCheckoutBodyState();
}

class _EcommerceCheckoutBodyState extends State<EcommerceCheckoutBody> {
  final List<String> steps = ["Your bag", "Shipping", "Payment", "Review"];
  final int activeStepIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Checkout",
        leading: UIKitButton.tertiary(
          title: "Cancel",
          onTap: () {
            context.router.maybePop();
          },
          padding: EdgeInsets.symmetric(
            horizontal: AppSetting.setWidth(10),
            vertical: AppSetting.setHeight(12),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: .stretch,
                  children: [
                    Padding(
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(8),
                        vertical: AppSetting.setHeight(8),
                      ),
                      child: Row(
                        mainAxisSize: .max,
                        children: List.generate(
                          steps.length,
                          (index) => Flexible(
                            fit: .tight,
                            child: UIKitStepper(
                              title: steps.elementAt(index),
                              number: index + 1,
                              done: index < activeStepIndex,
                              active: index == activeStepIndex,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: .only(
                        top: AppSetting.setHeight(32),
                        left: AppSetting.setWidth(24),
                        right: AppSetting.setWidth(24),
                        bottom: AppSetting.setHeight(24),
                      ),
                      child: Column(
                        crossAxisAlignment: .stretch,
                        children: [
                          Text(
                            "Choose a payment method",
                            style: MyTheme.style.heading.h3,
                          ),
                          Space.h(10),
                          Text(
                            "You won't be charged until you review the order on the next page",
                            style: MyTheme.style.body.s.copyWith(
                              color: MyTheme.color.palette.dark.light,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: .symmetric(
                        vertical: AppSetting.setHeight(16),
                        horizontal: AppSetting.setWidth(16),
                      ),
                      child: Column(
                        crossAxisAlignment: .stretch,
                        children: [
                          PaymentMethod(
                            title: "Credit Card",
                            selected: true,
                            onTap: () {
                              //
                            },
                            child: Column(
                              crossAxisAlignment: .stretch,
                              children: [
                                _CreditCard(
                                  title: "Mastercard",
                                  number: "xxxx xxxx xxxx 1234",
                                  selected: true,
                                  onTap: () {},
                                ),
                                Space.h(8),
                                _CreditCard(
                                  title: "Visa",
                                  number: "xxxx xxxx xxxx 9876",
                                  selected: false,
                                  onTap: () {},
                                ),
                                Space.h(8),
                                UIKitButton.tertiary(
                                  title: "Add new card",
                                  leftIcon: Assets.icons.add,
                                  onTap: () {
                                    //
                                  },
                                ),
                                Space.h(24),
                                Row(
                                  children: [
                                    Space.w(12),
                                    UIKitCheckbox(
                                      value: true,
                                      onChanged: (value) {
                                        //
                                      },
                                    ),
                                    Space.w(12),
                                    Flexible(
                                      fit: .tight,
                                      child: Text(
                                        "My billing address is the same as my shipping address",
                                        style: MyTheme.style.body.s.copyWith(
                                          color:
                                              MyTheme.color.palette.dark.light,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Space.h(16),
                          PaymentMethod(
                            title: "Apple Pay",
                            selected: false,
                            onTap: () {
                              //
                            },
                          ),
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
                title: "Continue",
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

class _CreditCard extends StatelessWidget {
  final String title;
  final String number;
  final bool selected;
  final VoidCallback onTap;

  const _CreditCard({
    required this.title,
    required this.number,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return UIKitListItem(
      title: title,
      description: number,
      decoration: UIKitListItemDecoration(
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
      ),
      onTap: onTap,
      right: selected
          ? Assets.icons.check.image(
              height: AppSetting.setHeight(12),
              width: AppSetting.setHeight(12),
              color: MyTheme.color.primary,
            )
          : SizedBox.shrink(),
    );
  }
}
