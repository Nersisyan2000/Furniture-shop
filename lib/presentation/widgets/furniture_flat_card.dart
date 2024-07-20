import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureFlatCard extends StatelessWidget {
  const FurnitureFlatCard({
    super.key,
    this.imageUrl,
    this.title,
    this.subTitle,
    this.price,
    this.isCenter,
    this.isChangeCountElement,
    this.arrowRightIcon,
  });

  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final double? price;
  final bool? isCenter;
  final bool? isChangeCountElement;
  final bool? arrowRightIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FurnitureColors.whiteColor,
        borderRadius: BorderRadius.circular(14),
      ),
      height: 104.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FurnitureCachedNetworkImage(
                imageUrl: imageUrl,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: isCenter == true
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      title ?? '',
                      style: switzer16SemiboldTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    subTitle ?? '',
                    style: switzer13RegularTextStyle.copyWith(
                      color: FurnitureColors.subTextColor,
                    ),
                  ),
                  if (price != null)
                    Text(
                      '\$$price',
                      style: switzer16MediumTextStyle.copyWith(
                        color: FurnitureColors.priceColor,
                      ),
                    ),
                ],
              ).paddingOnly(left: 12.w),
            ],
          ),
          if (isChangeCountElement != null)
            FurnitureChangeCountElement(
              count: 1,
              minCount: 1,
              maxCount: 15,
              onChange: (val) => debugPrint('$val'),
            ),
          if (arrowRightIcon == true)
            const Icon(
              Icons.arrow_forward_ios,
              color: FurnitureColors.subTextColor,
            ),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 12.h),
    );
  }
}
