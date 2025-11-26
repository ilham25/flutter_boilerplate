import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitBadge extends StatelessWidget {
  final AssetGenImage? icon;
  final int? count;

  const UIKitBadge({super.key, this.icon, this.count})
    : assert(
        icon == null || count == null,
        "icon and count cannot exist at the same time",
      );

  factory UIKitBadge.count({required int count}) {
    return UIKitBadge(count: count);
  }

  Widget _buildChild() {
    if (icon == null && count == null) {
      return SizedBox.shrink();
    }

    if (icon != null) {
      return Center(
        child: icon!.image(
          height: AppSetting.setHeight(8),
          width: AppSetting.setWidth(8),
          color: MyTheme.color.white,
        ),
      );
    }

    return Center(
      child: Text(
        count!.toString(),
        style: MyTheme.style.caption.m.copyWith(color: MyTheme.color.white),
        maxLines: 1,
        overflow: .clip,
        textAlign: .center,
      ),
    );
  }

  double get height {
    if (count != null) return AppSetting.setHeight(24);
    return AppSetting.setHeight(16);
  }

  double get width {
    if (count != null) return AppSetting.setHeight(24);
    return AppSetting.setHeight(16);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: .circular(20),
        color: MyTheme.color.primary,
      ),

      child: Center(child: _buildChild()),
    );
  }
}
