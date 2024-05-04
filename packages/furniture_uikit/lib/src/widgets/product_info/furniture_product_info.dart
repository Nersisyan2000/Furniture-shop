import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class FurnitureProductInfo extends StatelessWidget {
  const FurnitureProductInfo({
    super.key,
    required this.icon,
    required this.action,
    this.count,
  });

  final Widget icon;
  final String action;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        4.0.horizontalSpace,
        Text(
          '${count ?? 0} $action',
          style: switzer13RegularTextStyle.copyWith(
            color: FurnitureColors.subTextColor,
          ),
        ),
      ],
    );
  }
}
