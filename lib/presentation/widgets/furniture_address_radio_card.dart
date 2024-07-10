import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureAddressRadioCard extends StatelessWidget {
  const FurnitureAddressRadioCard({
    super.key,
    this.selectedValue,
    this.onChanged,
    this.title,
  });

  final int? selectedValue;
  final Function(int?)? onChanged;
  final String? title;

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
            'Home Address',
            style: switzer16MediumTextStyle,
          ),
          Text(
            '(269) 444-6853',
            style: switzer13RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor,
            ),
          ),
          Text(
            'Road Number 5649 Akali',
            style: switzer13RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor,
            ),
          )
        ],
      ).paddingSymmetric(vertical: 16.h),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio<int>(
          value: 1,
          groupValue: selectedValue,
          onChanged: onChanged,
          activeColor: FurnitureColors.primaryColor,
        ),
      ),
      trailing: FurnitureAssets.icons.edit.svg(),
    );
  }
}
