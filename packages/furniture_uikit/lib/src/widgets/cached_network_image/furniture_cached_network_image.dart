import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FurnitureCachedNetworkImage extends StatelessWidget {
  const FurnitureCachedNetworkImage(
      {super.key, this.imageUrl, this.width, this.height});

  final String? imageUrl;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ??
          "https://e7.pngegg.com/pngimages/178/595/png-clipart-user-profile-computer-icons-login-user-avatars-monochrome-black.png",
      imageBuilder: (context, imageProvider) => Container(
        width: width ?? 48.0,
        height: height ?? 48.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}