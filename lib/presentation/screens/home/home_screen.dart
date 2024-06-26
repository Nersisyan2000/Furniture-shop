import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/carousel/carousel_page.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/most_interested/most_interested_list.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/products/products.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _userInfo(context),
            _searchField(context),
            const CarouselPage(),
            const ProductsTemplates(),
            const MostInterestedList(),
          ],
        ).paddingOnly(top: 20.h),
      ),
    ).paddingSymmetric(horizontal: 20.w));
  }
}
