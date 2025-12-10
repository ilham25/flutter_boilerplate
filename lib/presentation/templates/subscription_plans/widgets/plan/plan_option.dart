import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/badge/badge.dart';
import 'package:flutter_boilerplate/core/widgets/input/radio_button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class PlanOption extends StatelessWidget {
  final String title;
  final bool selected;

  final String price;
  final int discount;

  final VoidCallback onTap;
  final bool recommended;

  final PlanOptionPeriod period;

  const PlanOption({
    super.key,
    required this.selected,
    required this.onTap,
    this.recommended = false,
    required this.period,
    required this.price,
    this.discount = 0,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        clipBehavior: .none,
        children: [
          Ink(
            decoration: BoxDecoration(
              color: selected
                  ? MyTheme.color.palette.highlight.lightest
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              border: .all(
                color: selected
                    ? MyTheme.color.palette.highlight.lightest
                    : MyTheme.color.palette.light.dark,
              ),
            ),
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                  vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                ),
                child: Row(
                  children: [
                    UIKitRadioButton(onTap: onTap, selected: selected),
                    Space.w(12),
                    Flexible(
                      flex: 1,
                      fit: .tight,
                      child: Row(
                        crossAxisAlignment: .center,
                        children: [
                          Flexible(
                            flex: 1,
                            fit: .tight,
                            child: Column(
                              crossAxisAlignment: .stretch,
                              children: [
                                Text(title, style: MyTheme.style.heading.h4),
                                if (discount > 0) ...[
                                  Space.h(4),
                                  Text(
                                    "-$discount% discount",
                                    style: MyTheme.style.body.xs.copyWith(
                                      color: MyTheme.color.primary,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .end,
                            children: [
                              Text(price, style: MyTheme.style.heading.h3),
                              Space.h(2),
                              Text(
                                "every ${period.name}",
                                style: MyTheme.style.body.xs,
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
          ),
          if (recommended)
            Positioned(
              top: -10,
              right: -10,
              child: UIKitBadge(
                icon: Assets.icons.starFilled,
                size: 24,
                iconSize: 10,
              ),
            ),
        ],
      ),
    );
  }
}

enum PlanOptionPeriod { week, month, year }
