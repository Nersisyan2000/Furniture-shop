import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_badge_styles.dart';

class FurnitureCircleAvatar extends StatelessWidget {
  const FurnitureCircleAvatar(
      {super.key, this.isBadge, this.image, this.isRounded, this.imageUrl});

  final bool? isBadge;
  final String? image;
  final double? isRounded;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final circleAvatar = imageUrl == null
        ? CircleAvatar(
            radius: isRounded ?? 30.0,
            backgroundImage: image == null ? null : AssetImage(image!),
          )
        : FurnitureCachedNetworkImage(
            imageUrl: imageUrl,
            width: 60.w,
            height: 60.h,
          );

    if (isBadge != null) {
      return badges.Badge(
        position: imageUrl == null ? badgePosition : secondaryBadgePosition,
        badgeStyle: mainBadgeStyle,
        child: circleAvatar,
      );
    }
    return circleAvatar;
  }
}
