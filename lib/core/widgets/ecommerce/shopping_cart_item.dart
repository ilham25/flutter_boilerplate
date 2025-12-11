import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/image/image_caching.dart';
import 'package:flutter_boilerplate/core/widgets/input/number_input.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitShoppingCartItem extends StatelessWidget {
  final String title;
  final String details;
  final String price;
  final int quantity;
  final String image;

  final double? height;

  final ValueChanged<int> onQuantityChanged;

  const UIKitShoppingCartItem({
    super.key,
    this.height,
    required this.title,
    required this.details,
    required this.price,
    required this.quantity,
    required this.onQuantityChanged,
    required this.image,
  });

  double get _height => AppSetting.setHeight(height ?? 100);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: Row(
        children: [
          SizedBox(
            width: AppSetting.setWidth(90),
            child: ImageCaching(imageUrl: image, borderRadius: 16),
          ),
          Flexible(
            flex: 1,
            fit: .tight,
            child: Container(
              padding: .symmetric(
                horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
              ),
              child: Column(
                crossAxisAlignment: .stretch,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    title,
                    style: MyTheme.style.heading.h5,
                    maxLines: 1,
                    overflow: .ellipsis,
                  ),
                  Space.h(4),
                  Text(
                    details,
                    style: MyTheme.style.body.s.copyWith(
                      color: MyTheme.color.palette.dark.light,
                    ),
                    maxLines: 2,
                    overflow: .ellipsis,
                  ),
                  Space.h(10),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: .tight,
                        child: UIKitNumberInput.counter(
                          value: quantity,
                          onChanged: onQuantityChanged,
                        ),
                      ),
                      Space.w(8),
                      Text(price, style: MyTheme.style.heading.h4),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
