import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/domain/models/discount/discount_model.dart';
import 'package:furniture_shop/presentation/screens/home/home_screen_provider.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:provider/provider.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  Widget _carouselItem(BuildContext context, DiscountModel item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 234.w,
          height: 130.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                item.discountImg,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${item.discount}% discount',
                style: switzer20SemiboldTextStyle.copyWith(
                  color: FurnitureColors.whiteColor,
                ),
              ),
              Text(
                item.discountInfo,
                style: switzer13RegularTextStyle.copyWith(
                  color: FurnitureColors.whiteColor,
                ),
              ),
              FurnitureElevatedButton(
                title: context.tr(Localization.learnMore),
                onTap: () {},
                textStyle: switzer13RegularTextStyle.copyWith(
                  color: FurnitureColors.whiteColor,
                ),
              )
            ],
          ).paddingAll(16.w),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final discountData = context.watch<HomeProvider>().discountsData;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          context.tr(Localization.specialOffers),
          style: switzer16SemiboldTextStyle,
        ),
        FlutterCarousel(
          options: CarouselOptions(
            padEnds: false,
            height: 145.h,
            showIndicator: true,
            enlargeCenterPage: false,
            initialPage: 0,
            viewportFraction: 0.76,
            slideIndicator: const CircularSlideIndicator(
              currentIndicatorColor: FurnitureColors.primaryColor,
              indicatorBackgroundColor: FurnitureColors.dotsInactiveColor,
              indicatorRadius: 5.0,
            ),
            indicatorMargin: 0,
          ),
          items: discountData.map((item) {
            return Builder(builder: (BuildContext context) {
              return _carouselItem(context, item);
            });
          }).toList(),
        ).paddingOnly(top: 8.h),
      ],
    );
  }
}
