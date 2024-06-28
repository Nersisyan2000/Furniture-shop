import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/data/local/image_stack_data/image_stack_data.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({super.key});

  Widget _namePriceSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            'Ox Mathis Furniture Modern Style',
            style: switzer24MediumTextStyle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '\$90.99',
          style: switzer24MediumTextStyle.copyWith(
            color: FurnitureColors.priceColor,
          ),
        ),
      ],
    );
  }

  Widget _efficiencySection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FurnitureProductInfo(
                  icon: FurnitureAssets.icons.seenPeopleIcon.svg(),
                  count: 341,
                  action: context.tr(Localization.seen),
                ),
                8.horizontalSpace,
                FurnitureProductInfo(
                  icon: FurnitureAssets.icons.hearthIcon.svg(),
                  count: 294,
                  action: context.tr(Localization.liked),
                ),
              ],
            ),
            const FurnitureReviewsRaiting(),
          ],
        ),
        FurnitureImageStack(
          imageList: imagesStackData,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FurnitureCachedNetworkImage(
          height: 236.h,
          contain: true,
          imageUrl:
              'https://static.vecteezy.com/system/resources/previews/011/794/197/non_2x/brown-leather-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png',
        ),
        _namePriceSection(),
        _efficiencySection(context).paddingSymmetric(vertical: 24.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.tr(
                Localization.description,
              ),
              style: switzer20MediumTextStyle,
            ),
            SizedBox(
              child: Text(
                'The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.',
                style: switzer14RegularTextStyle.copyWith(
                  color: FurnitureColors.subTextColor,
                ),
              ).paddingSymmetric(
                vertical: 8.h,
              ),
            ),
          ],
        )
      ],
    );
  }
}
