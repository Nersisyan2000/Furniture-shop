import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurniturePackedCard extends StatelessWidget {
  const FurniturePackedCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.price});

  final String imageUrl;
  final String title;
  final String subTitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 226.w,
        height: 104.h,
        child: Row(
          children: [
            FurnitureCachedNetworkImage(
              imageUrl: imageUrl,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 130.w,
                  child: Text(
                    title,
                    style: switzer16SemiboldTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  subTitle,
                  style: switzer13RegularTextStyle.copyWith(
                    color: FurnitureColors.subTextColor,
                  ),
                ),
                Text(
                  '\$$price',
                  style: switzer16MediumTextStyle.copyWith(
                    color: FurnitureColors.priceColor,
                  ),
                ),
              ],
            ).paddingOnly(
              left: 12.w,
            ),
          ],
        ).paddingAll(
          16.w,
        ),
      ),
    );
  }
}
