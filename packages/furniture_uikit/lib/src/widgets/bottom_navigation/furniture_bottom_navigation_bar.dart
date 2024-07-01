import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/widgets/bottom_navigation/widgets/furniture_bottom_navigation_bar_item.dart';

class FurnitureBottomNavigation extends StatelessWidget {
  const FurnitureBottomNavigation(
      {super.key, required this.currentIndex, required this.setActiveIndex});

  final int currentIndex;
  final Function(dynamic) setActiveIndex;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: paddingH20,
      height: 90.h,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      surfaceTintColor: FurnitureColors.whiteColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FurnitureBottomNavigationBarItem(
            color: currentIndex == 0
                ? FurnitureColors.primaryColor
                : FurnitureColors.appBarTitleColor,
            itemIcon: FurnitureAssets.icons.home.svg(
              color: currentIndex == 0
                  ? FurnitureColors.primaryColor
                  : FurnitureColors.appBarTitleColor,
            ),
            title: context.tr(Localization.home),
            onTap: () {
              setActiveIndex(0);
            },
          ),
          FurnitureBottomNavigationBarItem(
            color: currentIndex == 1
                ? FurnitureColors.primaryColor
                : FurnitureColors.appBarTitleColor,
            itemIcon: FurnitureAssets.icons.heart.svg(
                color: currentIndex == 1
                    ? FurnitureColors.primaryColor
                    : FurnitureColors.appBarTitleColor),
            title: context.tr(Localization.favourite),
            onTap: () {
              setActiveIndex(1);
            },
          ),
          20.horizontalSpace,
          FurnitureBottomNavigationBarItem(
            color: currentIndex == 2
                ? FurnitureColors.primaryColor
                : FurnitureColors.appBarTitleColor,
            itemIcon: FurnitureAssets.icons.category.svg(
              color: currentIndex == 2
                  ? FurnitureColors.primaryColor
                  : FurnitureColors.appBarTitleColor,
            ),
            title: context.tr(Localization.categories),
            onTap: () {
              setActiveIndex(2);
            },
          ),
          FurnitureBottomNavigationBarItem(
            color: currentIndex == 3
                ? FurnitureColors.primaryColor
                : FurnitureColors.appBarTitleColor,
            itemIcon: FurnitureAssets.icons.user.svg(
              color: currentIndex == 3
                  ? FurnitureColors.primaryColor
                  : FurnitureColors.appBarTitleColor,
            ),
            title: context.tr(Localization.profile),
            onTap: () {
              setActiveIndex(3);
            },
          ),
        ],
      ),
    );
  }
}
