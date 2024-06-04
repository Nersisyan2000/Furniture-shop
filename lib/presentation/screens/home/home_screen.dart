import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _userInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            FurnitureCircleAvatar(
              image: FurnitureAssets.images.logedUser.keyName,
              isRounded: 32.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.tr(Localization.welcome),
                  style: switzer13RegularTextStyle.copyWith(
                      color: FurnitureColors.subTextColor),
                ),
                Text(
                  'Besnik Doe',
                  style: switzer16MediumTextStyle,
                ).paddingOnly(top: 8.h),
              ],
            ).paddingSymmetric(horizontal: 12.w),
          ],
        ),
        FurnitureIconButton.whiteMode(
          onTap: () {},
          icon: FurnitureAssets.icons.notificationBellIcon.svg(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _userInfo(context),
          ],
        ).paddingOnly(top: 20.h),
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
