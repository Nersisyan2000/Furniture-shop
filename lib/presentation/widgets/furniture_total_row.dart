import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureTotalRow extends StatelessWidget {
  const FurnitureTotalRow({super.key, this.title, this.value, this.isTotal});

  final String? title;
  final double? value;
  final bool? isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style: isTotal == true
              ? switzer16SemiboldTextStyle
              : switzer16RegularTextStyle.copyWith(
                  color: FurnitureColors.subTextColor,
                ),
        ),
        Text(
          '\$$value',
          style: switzer16MediumTextStyle.copyWith(
            color: FurnitureColors.priceColor,
          ),
        ),
      ],
    );
  }
}
