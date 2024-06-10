import 'package:auto_route/auto_route.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            72.verticalSpace,
            FurnitureCircleAvatar(
              isRounded: 180.h,
              image: onboardingData[index].img,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.0),
              child: Text(
                onboardingData[index].description,
                style: switzer24MediumTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            FurnitureDots(
                pageLength: onboardingData.length, currentIndexPage: index),
            Expanded(
                child: Row(
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
            ))
          ],
        )),
      ),
    );
  }
}
