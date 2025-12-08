import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/loading/loading_singlebox.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCaching extends StatelessWidget {
  final String imageUrl;
  final double? borderRadius;
  final bool isPreviewable;

  const ImageCaching({
    super.key,
    required this.imageUrl,
    this.borderRadius,
    this.isPreviewable = false,
  });

  bool get _isLocalImage => imageUrl.isNotEmpty && !imageUrl.startsWith('http');

  @override
  Widget build(BuildContext context) {
    if (_isLocalImage) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        child: Image.asset(imageUrl, fit: BoxFit.cover),
      );
    }
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => GestureDetector(
        onTap: !isPreviewable
            ? null
            : () {
                // context.router.push(PreviewImageRoute(urls: [imageUrl]));
              },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            color: MyTheme.color.white,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
      ),
      placeholder: (context, url) =>
          LoadingSingleBox(height: double.infinity, borderRadius: borderRadius),
      errorWidget: (context, url, error) => Container(
        clipBehavior: .antiAlias,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          color: MyTheme.color.palette.highlight.lightest,
        ),
        child: Center(
          child: Assets.icons.image.image(
            width: AppSetting.setWidth(32),
            height: AppSetting.setHeight(32),
            color: MyTheme.color.palette.highlight.light,
          ),
        ),
      ),
    );
  }
}
