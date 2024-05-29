import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          130.verticalSpace,
          FurnitureCircleAvatar(
            isRounded: 180.h,
            image: FurnitureAssets.images.onboardingFirstImg.keyName,
          )
        ],
      )),
    );
  }
}
