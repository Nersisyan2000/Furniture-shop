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

    ///TODO: - write CircleAvatar part to single properties out or in side build method
    ///
    if (isBadge != null) {
      return badges.Badge(
        position: badgePosition,
        badgeStyle: mainBadgeStyle,
        child: CircleAvatar( /// this
          radius: 30.0,
          backgroundImage: AssetImage(image),
        ),
      );
    }
    return CircleAvatar( /// this
      radius: 30.0,
      backgroundImage: AssetImage(image),
    );
  }
}
