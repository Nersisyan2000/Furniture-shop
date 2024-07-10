import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureHighCard extends StatelessWidget {
  const FurnitureHighCard({
    super.key,
    this.cardData,
    this.index,
    this.toggleFavourite,
  });

  final ProductModel? cardData;
  final int? index;
  final VoidCallback? toggleFavourite;

  Widget _imageSection(BuildContext context) {
    return Container(
      width: 156.w,
      height: 160.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: FurnitureColors.whiteColor,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          FurnitureCachedNetworkImage(
            width: 140.w,
            height: 135.h,
            imageUrl: cardData?.productImg,
          ),
          Positioned(
            top: 12.h,
            right: 12.w,
            child: InkWell(
              onTap: toggleFavourite,
              child: cardData?.isFavourite == true
                  ? FurnitureAssets.icons.heart.svg(
                      colorFilter: const ColorFilter.mode(
                      FurnitureColors.primaryColor,
                      BlendMode.srcIn,
                    ))
                  : FurnitureAssets.icons.heart.svg(),
            ),
          ),

          // product.isFavourite == true ? Icons.favorite : Icons.favorite_border,
          //               color: product.isFavourite == true ? Colors.red : null,
        ],
      ),
    ).expanded();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _imageSection(context),
        SizedBox(
          width: 140.w,
          child: Text(
            cardData?.productName ?? '',
            style: switzer16MediumTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ).paddingOnly(top: 6.h),
        Text(
          '\$${cardData?.productPrice}',
          style: switzer16MediumTextStyle.copyWith(
            color: FurnitureColors.priceColor,
          ),
        ),
      ],
    );
  }
}
