import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class FurnitureProductInfo extends StatelessWidget {
  /// TODO: add , after non positioned last properties

  const FurnitureProductInfo(
      {super.key, required this.icon, this.count, required this.action});

  final Widget icon;
  final int? count;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        4.0.horizontalSpace,
        Text(
          /// TODO: check your code styles please, check and fix all highlighted yellow lines
          '${count ?? 0} ${action}',
          style: switzer13RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor),
        ),
      ],
    );
  }
}
