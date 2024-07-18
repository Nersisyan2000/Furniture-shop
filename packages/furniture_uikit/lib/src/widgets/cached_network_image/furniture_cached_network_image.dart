import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureCachedNetworkImage extends StatelessWidget {
  const FurnitureCachedNetworkImage(
      {super.key, this.imageUrl, this.width, this.height, this.contain});

  final String? imageUrl;
  final double? width;
  final double? height;
  final bool? contain;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ??
          "https://icones.pro/wp-content/uploads/2021/02/icone-utilisateur.png",
      imageBuilder: (context, imageProvider) => Container(
        width: width ?? 48.w,
        height: height ?? 48.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: contain == true ? BoxFit.contain : BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
