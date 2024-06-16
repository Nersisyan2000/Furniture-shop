import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:furniture_shop/presentation/screens/home/home_screen_provider.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:provider/provider.dart';

class MostInterestedList extends StatelessWidget {
  const MostInterestedList({super.key});

  Widget _mostInterestedItem(productItem) {
    return Card(
      // color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(FurnitureAssets.images.armchairImg.keyName),
          _mostInterestedItemFooterPart(productItem),
        ],
      ).paddingAll(16.w),
    );
  }

  Widget _mostInterestedItemFooterPart(productItem) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _mostInterestedItemInfo(productItem),
        FurnitureIconButton(
          icon: FurnitureAssets.icons.basket.svg(),
          padding: paddingZero,
        ),
      ],
    );
  }

  Widget _mostInterestedItemInfo(productItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productItem.productName,
          softWrap: false,
          style: switzer16SemiboldTextStyle,
        ),
        Text(
          'Hans j. wegner',
          style: switzer13RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor),
        ),
        Text(
          '\$9.99',
          style: switzer16MediumTextStyle.copyWith(
              color: FurnitureColors.priceColor),
        ).paddingOnly(top: 12.h),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final productData = context.watch<HomeProvider>().productsData;
    return SizedBox(
      height: 264.h, // Height of the container that holds the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of items in the list
        itemBuilder: (context, index) {
          return SizedBox(
            width: 232.w, // Width of each card
            child:
                _mostInterestedItem(productData[index]).paddingOnly(right: 8.w),
          );
        },
      ),
    );
  }
}
