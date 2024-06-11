import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class OtherElements extends StatefulWidget {
  const OtherElements({super.key});

  @override
  State<OtherElements> createState() => _OtherElementsState();
}

class _OtherElementsState extends State<OtherElements> {
  ValueChanged<int> onChange = (int value) => {
        debugPrint('$value'),
      };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        FurnitureChangeCountElement(
          count: 10,
          minCount: 0,
          maxCount: 20,
          onChange: onChange,
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
              action: context.tr(Localization.seen),
            ),
            FurnitureProductInfo(
              icon: FurnitureAssets.icons.hearthIcon.svg(),
              count: 294,
              action: context.tr(Localization.liked),
            )
          ],
        ),
        30.verticalSpace,
        const Row(
          children: [
            Expanded(
                child: ReviewsRaiting(
              raiting: 4.6,
              reviewCount: 367,
            )),
            Expanded(
                child: ReviewsProgress(
              percentValue: [100, 320, 35, 78, 10],
            )),
          ],
        ),
        20.verticalSpace,
        const FurnitureChipElement(title: 'hello'),
        20.verticalSpace,
      ],
    );
  }
}
