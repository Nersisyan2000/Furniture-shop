import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:furniture_uikit/src/theme/furniture_badge_styles.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

class FurnitureCircleAvatar extends StatelessWidget {
  const FurnitureCircleAvatar({super.key, this.isBadge, required this.image});

  final bool? isBadge;
  final String image;

  @override
  Widget build(BuildContext context) {
    if (isBadge != null) {
      return badges.Badge(
        position: badgePosition,
        badgeStyle: mainBadgeStyle,
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage(image),
        ),
      );
    }
    return CircleAvatar(
      radius: 30.0,
      backgroundImage: AssetImage(image),
    );
  }
}
