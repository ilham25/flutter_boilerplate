import 'package:flutter_boilerplate/core/components/loading/loading_singlebox.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCaching extends StatelessWidget {
  final String imageUrl;
  const ImageCaching({super.key, required this.imageUrl,});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyTheme.color.white,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => const LoadingSingleBox(
        height: double.infinity,
      ),
      errorWidget: (context, url, error) => Assets.images.logoFull.image(
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

CachedNetworkImageProvider baseImageDecorationComponent({
  required String url,
}) =>
  CachedNetworkImageProvider(
    url.isNotEmpty ? url : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxeAS3OYy1yQBs03eiKx1FBjuEVW-Hcy28AVvbyAOzSmrV5-kHMBQakzM8hKMsc7NN0Qo&usqp=CAU",
  );


