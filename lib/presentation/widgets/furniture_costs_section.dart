import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/presentation/widgets/furniture_total_row.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureCostsSection extends StatelessWidget {
  const FurnitureCostsSection({
    super.key,
    this.title,
    this.firstSubTitle,
    this.firstSubTitleValue,
    this.secondSubTitle,
    this.secondSubTitleValue,
    this.totalTitle,
    this.totalValue,
    this.buttonText,
    this.onTap,
  });

  final String? title;
  final String? firstSubTitle;
  final double? firstSubTitleValue;
  final String? secondSubTitle;
  final double? secondSubTitleValue;
  final String? totalTitle;
  final double? totalValue;
  final String? buttonText;
  final VoidCallback? onTap;

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
              title ?? '',
              style: switzer16MediumTextStyle,
            ),
            FurnitureTotalRow(
              title: firstSubTitle,
              value: firstSubTitleValue,
            ).paddingOnly(
              top: 16.h,
              bottom: 8.h,
            ),
            FurnitureTotalRow(
              title: secondSubTitle,
              value: secondSubTitleValue,
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
              title: totalTitle,
              value: totalValue,
            ),
            FurnitureElevatedButton(
              title: buttonText ?? '', // 'Check Out'
              onTap: onTap,
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
