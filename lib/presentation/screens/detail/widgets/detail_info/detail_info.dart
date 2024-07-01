import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/data/local/image_stack_data/image_stack_data.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({super.key, required this.detailItemData});

  final ProductModel detailItemData;

  Widget _namePriceSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            detailItemData.productName ?? '',
            style: switzer24MediumTextStyle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '\$${detailItemData.productPrice}',
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
                  count: detailItemData.productSeenCount,
                  action: context.tr(Localization.seen),
                ),
                8.horizontalSpace,
                FurnitureProductInfo(
                  icon: FurnitureAssets.icons.hearthIcon.svg(),
                  count: detailItemData.productLiked,
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

  Widget _descriptionSection(BuildContext context) {
    return Column(
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
            detailItemData.productDescription ?? '',
            style: switzer14RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor,
            ),
          ).paddingSymmetric(
            vertical: 8.h,
          ),
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
          height: 226.h,
          contain: true,
          imageUrl: detailItemData.productImg,
        ),
        _namePriceSection(),
        _efficiencySection(context).paddingSymmetric(vertical: 24.h),
        _descriptionSection(context),
      ],
    );
  }
}
