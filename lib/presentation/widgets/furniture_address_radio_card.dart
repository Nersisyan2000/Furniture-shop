import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureAddressRadioCard extends StatelessWidget {
  const FurnitureAddressRadioCard({
    super.key,
    this.selectedValue,
    this.onChanged,
    this.title,
    this.value,
    this.phoneNumber,
    this.roadNumber,
  });

  final int? selectedValue;
  final Function(int?)? onChanged;
  final String? title;
  final int? value;
  final String? phoneNumber;
  final String? roadNumber;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.r),
      ),
      tileColor: FurnitureColors.whiteColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? '',
            style: switzer16MediumTextStyle,
          ),
          Text(
            phoneNumber ?? '',
            style: switzer13RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor,
            ),
          ),
          Text(
            roadNumber ?? '',
            style: switzer13RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor,
            ),
          )
        ],
      ).paddingSymmetric(vertical: 16.h),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio<int>(
          value: value ?? 1,
          groupValue: selectedValue,
          onChanged: onChanged,
          activeColor: FurnitureColors.primaryColor,
        ),
      ),
      trailing: FurnitureAssets.icons.edit.svg(),
    );
  }
}
