import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/content/tag.dart';
import 'package:flutter_boilerplate/core/widgets/image/image_caching.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitCard extends StatelessWidget {
  final UIKitCardVariant variant;

  final String title;
  final String subtitle;
  final String description;
  final String? image;

  final double? width;
  final double? height;

  final UIKitTag? tag;
  final UIKitButton? action;
  final AssetGenImage? icon;
  final Widget? left;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? descriptionStyle;

  final VoidCallback? onTap;

  const UIKitCard({
    super.key,
    this.variant = .vertical,
    required this.title,
    required this.subtitle,
    this.description = "",
    this.image,
    this.tag,
    this.action,
    this.icon,
    this.left,
    this.onTap,
    this.titleStyle,
    this.subtitleStyle,
    this.descriptionStyle,
    this.width,
    this.height,
  }) : assert(
         image == null || icon == null || left == null,
         'You can not use either image, icon or left widget at the same time',
       ),
       assert(
         onTap == null || action == null,
         "You can not use either onTap or action at the same time",
       );

  factory UIKitCard.horizontal({
    required String title,
    required String subtitle,
    String? image,
    UIKitButton? action,
    AssetGenImage? icon,
    Widget? left,
    VoidCallback? onTap,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextStyle? descriptionStyle,
    double? width,
    double? height,
  }) => UIKitCard(
    variant: .horizontal,
    title: title,
    subtitle: subtitle,
    image: image,
    action: action,
    icon: icon,
    left: left,
    onTap: onTap,
    titleStyle: titleStyle,
    subtitleStyle: subtitleStyle,
    descriptionStyle: descriptionStyle,
    height: height,
    width: width,
  );

  @override
  Widget build(BuildContext context) {
    if (variant == .vertical) {
      return _VerticalCard(
        title: title,
        subtitle: subtitle,
        description: description,
        image: image,
        tag: tag,
        action: action,
        icon: icon,
        left: left,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
        descriptionStyle: descriptionStyle,
        width: width,
        height: height,
        onTap: onTap,
      );
    }

    return _HorizontalCard(
      title: title,
      subtitle: subtitle,
      image: image,
      action: action,
      icon: icon,
      left: left,
      onTap: onTap,
      titleStyle: titleStyle,
      subtitleStyle: subtitleStyle,
      width: width,
      height: height,
    );
  }
}

class _VerticalCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String? image;

  final double? width;
  final double? height;

  final UIKitTag? tag;
  final UIKitButton? action;
  final AssetGenImage? icon;
  final Widget? left;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? descriptionStyle;

  final VoidCallback? onTap;

  const _VerticalCard({
    required this.title,
    required this.subtitle,
    required this.description,
    this.image,
    this.tag,
    this.action,
    this.icon,
    this.left,
    this.titleStyle,
    this.subtitleStyle,
    this.descriptionStyle,
    this.width,
    this.height,
    this.onTap,
  });

  TextStyle get _titleStyle => titleStyle ?? MyTheme.style.heading.h4;
  TextStyle get _subtitleStyle =>
      subtitleStyle ??
      MyTheme.style.body.s.copyWith(color: MyTheme.color.palette.dark.light);
  TextStyle get _descriptionStyle => descriptionStyle ?? MyTheme.style.body.s;

  double? get _width => width ?? AppSetting.setWidth(200);
  double? get _height => height;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      clipBehavior: .antiAlias,
      borderRadius: .circular(16),

      child: Ink(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          borderRadius: .circular(16),
          color: MyTheme.color.palette.light.light,
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: .circular(16),
          child: Stack(
            children: [
              Column(
                mainAxisSize: .min,
                mainAxisAlignment: .start,
                children: [
                  if (image != null)
                    SizedBox(
                      height: AppSetting.setHeight(120),
                      child: ImageCaching(imageUrl: image!),
                    ),
                  Container(
                    padding: .symmetric(
                      horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                      vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                    ),
                    child: Column(
                      crossAxisAlignment: .stretch,
                      children: [
                        if (icon != null || left != null) ...[
                          if (icon != null)
                            Container(
                              height: AppSetting.setHeight(40),
                              width: AppSetting.setWidth(40),
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: MyTheme.color.palette.light.medium,
                              ),
                              child: Center(
                                child: icon!.image(
                                  height: AppSetting.setHeight(20),
                                  width: AppSetting.setWidth(20),
                                  color: MyTheme.color.primary,
                                ),
                              ),
                            ),
                          if (left != null) left!,
                          Space.h(32),
                        ],
                        Text(
                          title,
                          style: _titleStyle,
                          maxLines: 1,
                          overflow: .ellipsis,
                        ),
                        Space.h(4),
                        Text(
                          subtitle,
                          style: _subtitleStyle,
                          maxLines: 1,
                          overflow: .ellipsis,
                        ),
                        if (description.isNotEmpty) ...[
                          Space.h(16),
                          Text(
                            description,
                            style: _descriptionStyle,
                            maxLines: 4,
                            overflow: .ellipsis,
                          ),
                        ],
                        if (action != null) ...[Space.h(16), action!],
                      ],
                    ),
                  ),
                ],
              ),
              if (tag != null)
                Positioned(
                  top: AppSetting.setHeight(10),
                  right: AppSetting.setWidth(10),
                  child: tag!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HorizontalCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? image;

  final double? width;
  final double? height;

  final UIKitButton? action;
  final AssetGenImage? icon;
  final Widget? left;
  final VoidCallback? onTap;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  const _HorizontalCard({
    required this.title,
    required this.subtitle,
    this.image,
    this.action,
    this.icon,
    this.left,
    this.onTap,
    this.titleStyle,
    this.subtitleStyle,
    this.width,
    this.height,
  });

  TextStyle get _titleStyle => titleStyle ?? MyTheme.style.heading.h4;
  TextStyle get _subtitleStyle =>
      subtitleStyle ??
      MyTheme.style.body.s.copyWith(color: MyTheme.color.palette.dark.light);

  double? get _width => width;
  double? get _height => height ?? AppSetting.setHeight(72);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyTheme.color.palette.light.light,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: .antiAlias,
      child: Ink(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          borderRadius: .circular(16),
          color: MyTheme.color.palette.light.light,
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Row(
            crossAxisAlignment: .center,
            children: [
              if (image != null)
                SizedBox(
                  width: AppSetting.setWidth(80),
                  child: ImageCaching(imageUrl: image!),
                ),
              if (icon != null || left != null) ...[
                if (icon != null)
                  Container(
                    height: AppSetting.setHeight(40),
                    width: AppSetting.setWidth(40),
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: MyTheme.color.palette.light.medium,
                    ),
                    margin: EdgeInsets.only(left: AppSetting.setWidth(16)),
                    child: Center(
                      child: icon!.image(
                        height: AppSetting.setHeight(20),
                        width: AppSetting.setWidth(20),
                        color: MyTheme.color.primary,
                      ),
                    ),
                  ),
                if (left != null) left!,
              ],
              Flexible(
                flex: 1,
                fit: .tight,
                child: Container(
                  padding: .symmetric(
                    horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                  ),
                  child: Row(
                    crossAxisAlignment: .center,
                    children: [
                      Flexible(
                        flex: 1,
                        fit: .tight,
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              title,
                              style: _titleStyle,
                              maxLines: 1,
                              overflow: .ellipsis,
                            ),
                            Space.h(4),
                            Text(
                              subtitle,
                              style: _subtitleStyle,
                              maxLines: 1,
                              overflow: .ellipsis,
                            ),
                          ],
                        ),
                      ),
                      if (action != null || onTap != null) ...[
                        Space.w(16),
                        if (action != null) action!,
                        if (onTap != null)
                          Assets.icons.arrowRight.image(
                            height: AppSetting.setHeight(12),
                            width: AppSetting.setWidth(12),
                            color: MyTheme.color.palette.dark.lightest,
                          ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum UIKitCardVariant { horizontal, vertical }
