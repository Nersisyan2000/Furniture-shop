import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/widgets/bottom_navigation/widgets/furniture_bottom_navigation_bar_item.dart';

class FunrnitureBottomNavigation extends StatefulWidget {
  const FunrnitureBottomNavigation({super.key});

  @override
  State<FunrnitureBottomNavigation> createState() =>
      _FunrnitureBottomNavigationState();
}

class _FunrnitureBottomNavigationState
    extends State<FunrnitureBottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            color: _selectedIndex == 0
                ? FurnitureColors.primaryColor
                : FurnitureColors.appBarTitleColor,
            itemIcon: FurnitureAssets.icons.home.svg(
              color: _selectedIndex == 0
                  ? FurnitureColors.primaryColor
                  : FurnitureColors.appBarTitleColor,
            ),
            title: context.tr(Localization.home),
            onTap: () {
              _onItemTapped(0);
            },
          ),
          FurnitureBottomNavigationBarItem(
              color: _selectedIndex == 1
                  ? FurnitureColors.primaryColor
                  : FurnitureColors.appBarTitleColor,
              itemIcon: FurnitureAssets.icons.heart.svg(
                  color: _selectedIndex == 1
                      ? FurnitureColors.primaryColor
                      : FurnitureColors.appBarTitleColor),
              title: context.tr(Localization.favourite),
              onTap: () {
                _onItemTapped(1);
              }),
          20.horizontalSpace,
          FurnitureBottomNavigationBarItem(
              color: _selectedIndex == 2
                  ? FurnitureColors.primaryColor
                  : FurnitureColors.appBarTitleColor,
              itemIcon: FurnitureAssets.icons.cart.svg(
                color: _selectedIndex == 2
                    ? FurnitureColors.primaryColor
                    : FurnitureColors.appBarTitleColor,
              ),
              title: context.tr(Localization.shopping),
              onTap: () {
                _onItemTapped(2);
              }),
          FurnitureBottomNavigationBarItem(
              color: _selectedIndex == 3
                  ? FurnitureColors.primaryColor
                  : FurnitureColors.appBarTitleColor,
              itemIcon: FurnitureAssets.icons.user.svg(
                color: _selectedIndex == 3
                    ? FurnitureColors.primaryColor
                    : FurnitureColors.appBarTitleColor,
              ),
              title: context.tr(Localization.profile),
              onTap: () {
                _onItemTapped(3);
              }),
        ],
      ),
    );
  }
}
