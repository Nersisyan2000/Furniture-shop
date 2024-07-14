import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureBottomSheetContent extends StatelessWidget {
  const FurnitureBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          FurnitureAssets.images.success.keyName,
          height: 84.h,
        ),
        Text(
          context.tr(Localization.thankForOrder),
          textAlign: TextAlign.center,
          style: switzer24MediumTextStyle,
        ).paddingSymmetric(horizontal: 48.w),
        Text(
          context.tr(
            Localization.takeOrderDescription,
          ),
          textAlign: TextAlign.center,
          style: switzer14RegularTextStyle.copyWith(
            color: FurnitureColors.subTextColor,
          ),
        ).paddingSymmetric(horizontal: 8.w),
        // Text(
        //   context.tr(Localization.backHome),
        //   style: switzer16MediumTextStyle,
        // ),
        FurnitureElevatedButton.whiteMode(
          title: context.tr(Localization.backHome),
          padding: EdgeInsets.symmetric(vertical: 8.h),
          onTap: () {},
        ).paddingOnly(top: 8.h),
        FurnitureElevatedButton(
          title: context.tr(Localization.trackYourOrder),
          padding: EdgeInsets.symmetric(vertical: 8.h),
          onTap: () {},
        ),
        // Text(
        //   context.tr(Localization.orderSomething),
        //   textAlign: TextAlign.center,
        //   style: switzer14RegularTextStyle,
        // ),
        FurnitureTextButton(
          title: context.tr(Localization.orderSomething),
          onTap: () {},
        ),
      ],
    ).paddingSymmetric(vertical: 24.h, horizontal: 24.w);
  }
}
