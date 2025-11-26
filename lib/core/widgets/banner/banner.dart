import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/image/image_caching.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitBanner extends StatelessWidget {
  final String title;
  final String description;
  final String? image;

  final String? action;
  final VoidCallback? onAction;

  const UIKitBanner({
    super.key,
    required this.title,
    required this.description,
    this.image,
    this.action,
    this.onAction,
  }) : assert(
         (action == null && onAction == null) ||
             (action != null && onAction != null),
         "action and onAction must be both null or both non-null",
       );

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: .antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: MyTheme.color.palette.highlight.lightest,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: .stretch,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                padding: .only(
                  bottom: AppSetting.setHeight(20),
                  top: AppSetting.setHeight(20),
                  left: AppSetting.setWidth(20),
                  right: AppSetting.setWidth(16),
                ),
                child: Column(
                  mainAxisSize: .min,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      title,
                      style: MyTheme.style.heading.h4,
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                    Space.h(4),
                    Text(
                      description,
                      style: MyTheme.style.body.s.copyWith(
                        color: MyTheme.color.palette.dark.medium,
                      ),
                      maxLines: 3,
                      overflow: .ellipsis,
                    ),

                    if (action != null) ...[
                      Space.h(16),
                      Row(
                        children: [
                          UIKitButton(title: action!, onTap: onAction),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
            if (image != null)
              SizedBox(
                width: AppSetting.setWidth(100),
                child: ImageCaching(imageUrl: image!),
              ),
          ],
        ),
      ),
    );
  }
}
