import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';

@RoutePage()
class EcommerceCheckoutScreen extends StatelessWidget {
  const EcommerceCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EcommerceCheckoutBody();
  }
}

class EcommerceCheckoutBody extends StatelessWidget {
  const EcommerceCheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Checkout",
        leading: UIKitButton.tertiary(
          title: "Cancel",
          onTap: () {},
          padding: EdgeInsets.symmetric(
            horizontal: AppSetting.setWidth(10),
            vertical: AppSetting.setHeight(12),
          ),
        ),
      ),
    );
  }
}
