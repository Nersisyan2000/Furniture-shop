import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            FurnitureCircleAvatar(
              image: FurnitureAssets.images.logedUser.keyName,
              isRounded: 32.w,
            ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _userInfo(context),
          _searchField(context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.tr(Localization.specialOffers),
                style: switzer16SemiboldTextStyle,
              ),
              Container(
                width: 264.w,
                height: 130.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage(FurnitureAssets.images.discountImg.keyName),
                  ),
                ),
                child: Column(
                  children: [
                    const Text('25% discount'),
                    const Text('For a cozy yellow set!'),
                    FurnitureElevatedButton(
                      title: context.tr(Localization.learnMore),
                      onTap: () {},
                      textStyle: switzer13RegularTextStyle.copyWith(
                          color: FurnitureColors.whiteColor),
                    )
                  ],
                ).paddingAll(16.w),
              ),
            ],
          )
        ],
      ).paddingOnly(top: 20.h),
    ).paddingSymmetric(horizontal: 20.w));
  }
}
