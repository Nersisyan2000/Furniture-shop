import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/widgets/furniture_total_row.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureCostsSection extends StatelessWidget {
  const FurnitureCostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          24.r,
        ),
        topRight: Radius.circular(
          24.r,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.tr(
                Localization.orderSummary,
              ),
              style: switzer16MediumTextStyle,
            ),
            FurnitureTotalRow(
              title: context.tr(Localization.subtotal), // 'Subtotal'
              value: 926.99,
            ).paddingOnly(
              top: 16.h,
              bottom: 8.h,
            ),
            FurnitureTotalRow(
              title: context.tr(
                Localization.shippingCost,
              ), // 'Shipping Cost'
              value: 26.00,
            ),
            const Opacity(
              opacity: .3,
              child: Divider(
                color: FurnitureColors.subTextColor,
                thickness: 1,
              ),
            ),
            FurnitureTotalRow(
              isTotal: true,
              title: context.tr(
                Localization.totalPayment,
              ),
              value: 956.90,
            ),
            FurnitureElevatedButton(
              title: context.tr(
                Localization.checkOut,
              ), // 'Check Out'
              onTap: () {},
              padding: EdgeInsets.symmetric(
                vertical: 8.h,
              ),
            ).paddingOnly(top: 24.h),
          ],
        ).paddingAll(
          24.0,
        ),
      ),
    );
  }
}
