import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/screens/onboarding/onboarding_screen_provider.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:provider/provider.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final onBoardingData = context.watch<OnBoardingProvider>().onBoardData;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          72.verticalSpace,
          FurnitureCircleAvatar(
            isRounded: 180.h,
            image: onBoardingData[index].img,
          ),
          Text(
            onBoardingData[index].description,
            style: switzer24MediumTextStyle,
            textAlign: TextAlign.center,
          ).paddingSymmetric(horizontal: 24.h, vertical: 48.h),
          FurnitureDots(
              pageLength: onBoardingData.length, currentIndexPage: index),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FurnitureTextButton(
                title: context.tr(Localization.skip),
                onTap: () => context.router.replace(const SignUpRoute()),
                color: FurnitureColors.subTextColor,
              ),
              FurnitureIconButton(
                icon: FurnitureAssets.icons.directionRight.svg(),
                onTap: () {
                  setState(() {
                    if (index < onBoardingData.length - 1) {
                      index++;
                    } else {
                      context.router.replace(const SignUpRoute());
                    }
                  });
                },
              )
            ],
          ).expanded(),
        ],
      )).paddingSymmetric(horizontal: 20.w),
    );
  }
}
