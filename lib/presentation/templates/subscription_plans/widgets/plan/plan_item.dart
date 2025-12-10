import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class PlanItem extends StatelessWidget {
  final String title;

  const PlanItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.icons.starFilled.image(
          height: AppSetting.setHeight(10),
          width: AppSetting.setHeight(10),
        ),
        Space.w(12),
        Flexible(
          flex: 1,
          fit: .tight,
          child: Text(
            title,
            style: MyTheme.style.body.s.copyWith(
              color: MyTheme.color.palette.dark.light,
            ),
            maxLines: 1,
            overflow: .ellipsis,
          ),
        ),
      ],
    );
  }
}
