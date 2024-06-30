import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Order Summary",
          style: switzer16MediumTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal",
              style: switzer16RegularTextStyle.copyWith(
                  color: FurnitureColors.subTextColor),
            ).paddingSymmetric(vertical: 8.0),
            Text(
              "\$926.99",
              style: switzer16RegularTextStyle.copyWith(
                  color: FurnitureColors.priceColor),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping Cost",
              style: switzer16RegularTextStyle.copyWith(
                  color: FurnitureColors.subTextColor),
            ),
            Text(
              "\$26.00",
              style: switzer16RegularTextStyle.copyWith(
                  color: FurnitureColors.priceColor),
            ),
          ],
        ),
        Divider(color:FurnitureColors.subTextColor ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total payment",
              style: switzer16MediumTextStyle,
            ),
            Text(
              "\$956.90",
              style: switzer16RegularTextStyle.copyWith(
                  color: FurnitureColors.priceColor),
            ),
          ],
        ),

      ],
    ).paddingAll(24.0);
  }
}
