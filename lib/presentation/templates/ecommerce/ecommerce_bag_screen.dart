import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/content/divider.dart';
import 'package:flutter_boilerplate/core/widgets/ecommerce/shopping_cart_item.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class EcommerceBagScreen extends StatelessWidget {
  const EcommerceBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EcommerceBagBody();
  }
}

class EcommerceBagBody extends StatelessWidget {
  const EcommerceBagBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: "Your bag"),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(Duration(seconds: 1));
                },
                child: ListView.separated(
                  padding: .symmetric(
                    horizontal: AppSetting.setWidth(24),
                    vertical: AppSetting.setHeight(24),
                  ),
                  separatorBuilder: (context, index) => Container(
                    margin: .symmetric(vertical: AppSetting.setHeight(12)),
                    child: UIKitDivider(),
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return UIKitShoppingCartItem(
                      title: "Product ${index + 1}",
                      details: "Product ${index + 1} detail",
                      price: "€ ${((index + 1) * 10).toStringAsFixed(2)}",
                      quantity: index + 1,
                      onQuantityChanged: (value) {
                        //
                      },
                      image: "",
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: .only(
                top: AppSetting.setHeight(12),
                bottom: AppSetting.setHeight(24),
                left: AppSetting.setWidth(24),
                right: AppSetting.setWidth(24),
              ),
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Padding(
                    padding: .symmetric(
                      horizontal: AppSetting.setWidth(8),
                      vertical: AppSetting.setHeight(12),
                    ),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: MyTheme.style.body.m.copyWith(
                            color: MyTheme.color.palette.dark.light,
                          ),
                        ),
                        Flexible(
                          fit: .tight,
                          child: Text(
                            "€ 83.00",
                            style: MyTheme.style.heading.h3,
                            textAlign: .end,
                            maxLines: 1,
                            overflow: .ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Space.h(16),
                  UIKitButton(
                    title: "Checkout",
                    leftIcon: Assets.icons.placeholder,
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
    );
  }
}
