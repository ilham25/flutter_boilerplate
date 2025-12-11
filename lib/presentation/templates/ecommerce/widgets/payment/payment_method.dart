import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/input/radio_button.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class PaymentMethod extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;
  final Widget? child;

  const PaymentMethod({
    super.key,
    required this.title,
    required this.onTap,
    this.selected = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: .all(color: MyTheme.color.palette.light.dark, width: 0.5),
      ),
      padding: .symmetric(
        vertical: AppSetting.setHeight(16),
        horizontal: AppSetting.setWidth(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              UIKitRadioButton(onTap: onTap, selected: selected),
              Space.w(8),
              Flexible(
                fit: .tight,
                child: Text(
                  title,
                  style: MyTheme.style.heading.h5.copyWith(
                    color: MyTheme.color.palette.dark.light,
                  ),
                  maxLines: 1,
                  overflow: .ellipsis,
                ),
              ),
            ],
          ),
          if (selected && child != null) ...[Space.h(24), child!],
        ],
      ),
    );
  }
}
