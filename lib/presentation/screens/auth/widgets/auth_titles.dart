import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class AuthTitles extends StatelessWidget {
  const AuthTitles({super.key, this.title, this.subTitle});

  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: switzer32SemiboldTextStyle,
        ),
        8.verticalSpace,
        Text(
          subTitle ?? '', // Welcome Back! Please Enter Your Details.
          style: switzer14RegularTextStyle.copyWith(
            color: FurnitureColors.subTextColor,
          ),
        )
      ],
    );
  }
}
