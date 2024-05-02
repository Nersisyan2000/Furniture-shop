import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class OtherElements extends StatelessWidget {
  const OtherElements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        const FurnitureChangeCountElement(
          count: 10,
        ),
        20.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FurnitureCircleAvatar(
              isBadge: true,
              image: FurnitureAssets.images.onboardingCircleImg.keyName,
            ),
            FurnitureCircleAvatar(
              image: FurnitureAssets.images.onboardingCircleImg.keyName,
            ),
          ],
        ),
        20.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FurnitureProductInfo(
              icon: FurnitureAssets.icons.seenPeopleIcon.svg(),
              count: 341,
              action: 'Seen',
            ),
            FurnitureProductInfo(
              icon: FurnitureAssets.icons.hearthIcon.svg(),
              count: 294,
              action: 'Like',
            )
          ],
        ),
        20.verticalSpace,
      ],
    );
  }
}
