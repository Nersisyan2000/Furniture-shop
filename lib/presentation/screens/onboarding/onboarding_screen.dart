import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/data/local/onboarding_data/onboarding_data.dart';
import 'package:furniture_shop/routes/app_router.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;

  Widget _onBoardButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FurnitureTextButton(
          title: context.tr(Localization.skip),
          onTap: () => context.router.push(const FeedRoute()),
          color: FurnitureColors.subTextColor,
        ),
        FurnitureIconButton(
          icon: FurnitureAssets.icons.directionRight3.svg(),
          onTap: () {
            setState(() {
              if (index < onboardingData.length - 1) {
                index++;
              } else {
                context.router.push(const FeedRoute());
              }
            });
          },
        )
      ],
    ).expanded();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          72.verticalSpace,
          FurnitureCircleAvatar(
            isRounded: 180.h,
            image: onboardingData[index].img,
          ),
          Text(
            onboardingData[index].description,
            style: switzer24MediumTextStyle,
            textAlign: TextAlign.center,
          ).paddingSymmetric(horizontal: 24.h, vertical: 48.h),
          FurnitureDots(
              pageLength: onboardingData.length, currentIndexPage: index),
          _onBoardButtons(context),
        ],
      )).paddingSymmetric(horizontal: 20.w),
    );
  }
}
