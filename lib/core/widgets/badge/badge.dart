import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitBadge extends StatelessWidget {
  final AssetGenImage? icon;
  final int? count;
  final double? size;
  final double? iconSize;

  final Widget? child;

  final UIKitBadgeDecoration? decoration;

  const UIKitBadge({
    super.key,
    this.icon,
    this.count,
    this.size,
    this.iconSize,
    this.child,
    this.decoration,
  }) : assert(
         icon == null || count == null,
         "icon and count cannot exist at the same time",
       );

  factory UIKitBadge.count({
    required int count,
    UIKitBadgeDecoration? decoration,
    double? size,
    Widget? child,
  }) {
    return UIKitBadge(
      count: count,
      size: size,
      decoration: decoration,
      child: child,
    );
  }

  double get _iconSize => AppSetting.setHeight(iconSize ?? 8);

  Widget _buildChild() {
    if (icon == null && count == null) {
      return SizedBox.shrink();
    }

    if (icon != null) {
      return Center(
        child: icon!.image(
          height: _iconSize,
          width: _iconSize,
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
    if (size != null) return AppSetting.setHeight(size!);
    if (count != null) return AppSetting.setHeight(24);
    return AppSetting.setHeight(16);
  }

  double get width {
    if (size != null) return AppSetting.setHeight(size!);
    if (count != null) return AppSetting.setHeight(24);
    return AppSetting.setHeight(16);
  }

  @override
  Widget build(BuildContext context) {
    final badge = Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: .circular(20),
        color: decoration?.color ?? MyTheme.color.primary,
        border: decoration?.border,
      ),

      child: Center(child: _buildChild()),
    );
    if (child == null) return badge;

    return Stack(
      children: [
        child!,
        Positioned(
          bottom: AppSetting.setHeight(2),
          right: AppSetting.setWidth(2),
          child: IgnorePointer(child: badge),
        ),
      ],
    );
  }
}

class UIKitBadgeDecoration {
  final Color? color;
  final BoxBorder? border;

  const UIKitBadgeDecoration({this.color, this.border});
}
