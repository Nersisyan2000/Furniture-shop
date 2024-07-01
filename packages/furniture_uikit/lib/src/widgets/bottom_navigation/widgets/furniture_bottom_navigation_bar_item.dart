import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class FurnitureBottomNavigationBarItem extends StatelessWidget {
  const FurnitureBottomNavigationBarItem(
      {super.key,
      required this.itemIcon,
      required this.title,
      required this.color,
      this.onTap,});

  final Widget itemIcon;
  final String title;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: FurnitureColors.transparent,
      splashColor: FurnitureColors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          itemIcon,
          4.verticalSpace,
          Text(
            title,
            style: switzer12RegularTextStyle.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
