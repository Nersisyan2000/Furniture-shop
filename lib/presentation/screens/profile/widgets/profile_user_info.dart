import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class ProfileUserInfo extends StatelessWidget {
  const ProfileUserInfo({
    super.key,
    this.imageUrl,
    this.title,
    this.emailAddress,
  });

  final String? imageUrl;
  final String? title;
  final String? emailAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FurnitureCircleAvatar(
          imageUrl: imageUrl,
          isBadge: true,
        ),
        Text(
          title ?? '',
          style: switzer20MediumTextStyle,
        ).paddingOnly(top: 12.h, bottom: 2.h),
        Text(
          emailAddress ?? '',
          style: switzer14RegularTextStyle.copyWith(
            color: FurnitureColors.subTextColor,
          ),
        )
      ],
    );
  }
}
