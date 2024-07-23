import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          });
    controller.repeat(reverse: true);
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replace(const OnboardingRoute());
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _splashContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FurnitureAssets.images.projectLogo
            // ignore: deprecated_member_use
            .svg(color: FurnitureColors.whiteColor),
        Text(
          context.tr(Localization.craftyFurniture),
          textAlign: TextAlign.center,
          style: switzer32MediumTextStyle.copyWith(
              color: FurnitureColors.whiteColor),
        ).paddingSymmetric(vertical: 24.h),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FurnitureColors.primaryColor,
      body: _splashContent(context),
    );
  }
}
