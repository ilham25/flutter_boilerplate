import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitStepper extends StatelessWidget {
  final String title;
  final int number;

  final bool done;
  final bool active;

  const UIKitStepper({
    super.key,
    required this.title,
    required this.number,
    this.done = false,
    this.active = false,
  });

  Widget _buildStepContent() {
    if (done) {
      return Assets.icons.check.image(
        height: AppSetting.setHeight(10),
        width: AppSetting.setWidth(10),
        color: MyTheme.color.primary,
      );
    }

    return Text(
      number.toString(),
      style: MyTheme.style.caption.m.copyWith(
        color: active
            ? MyTheme.color.white
            : MyTheme.color.palette.dark.lightest,
      ),
      maxLines: 1,
      overflow: .clip,
      textAlign: .center,
    );
  }

  Widget _buildStep() {
    Color color = MyTheme.color.palette.light.light;

    if (done) {
      color = MyTheme.color.palette.highlight.light;
    }

    if (active) {
      color = MyTheme.color.primary;
    }

    return Container(
      height: AppSetting.setHeight(24),
      width: AppSetting.setWidth(24),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(child: _buildStepContent()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .center,
      children: [
        _buildStep(),
        Space.h(12),
        Text(
          title,
          style: MyTheme.style.heading.h5.copyWith(
            color: active
                ? MyTheme.color.palette.dark.darkest
                : MyTheme.color.palette.dark.lightest,
          ),
          maxLines: 1,
          overflow: .ellipsis,
          textAlign: .center,
        ),
      ],
    );
  }
}
