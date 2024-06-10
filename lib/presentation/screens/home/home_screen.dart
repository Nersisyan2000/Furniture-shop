import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/routes/app_router.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _userInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const FurnitureCachedNetworkImage(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.tr(Localization.welcome),
                  style: switzer13RegularTextStyle.copyWith(
                      color: FurnitureColors.subTextColor),
                ),
                Text(
                  'Besnik Doe',
                  style: switzer16MediumTextStyle,
                ).paddingOnly(top: 8.h),
              ],
            ).paddingSymmetric(horizontal: 12.w),
          ],
        ),
        FurnitureIconButton.whiteMode(
          onTap: () {},
          icon: FurnitureAssets.icons.notificationBellIcon.svg(),
        ),
      ],
    );
  }

  Widget _searchField(BuildContext context) {
    return FurnitureSearchInput(
      searchHintText: context.tr(Localization.searchFurniture),
      onTapOutSide: (event) => {
        FocusScope.of(context).unfocus(),
      },
      onNavigateSearch: () {
        context.router.push(const SearchRoute());
      },
      onNavigateFilter: () {
        context.router.push(const FilterRoute());
      },
    ).paddingSymmetric(vertical: 24.h);
  }

  Widget _carouselItem(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 234.w,
          height: 130.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                FurnitureAssets.images.discountImg.keyName,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '25% discount',
                style: switzer20SemiboldTextStyle.copyWith(
                  color: FurnitureColors.whiteColor,
                ),
              ),
              Text(
                'For a cozy yellow set!',
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

  Widget _carousel(BuildContext context) {
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
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return _carouselItem(context);
              },
            );
          }).toList(),
        ).paddingOnly(top: 8.h),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _userInfo(context),
          _searchField(context),
          _carousel(context),
        ],
      ).paddingOnly(top: 20.h),
    ).paddingSymmetric(horizontal: 20.w));
  }
}
