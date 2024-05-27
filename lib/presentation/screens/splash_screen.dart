import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
      // Navigator.pushReplacementNamed(context, onboardingRoute);
      debugPrint('changed');
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FurnitureColors.primaryColor,
      body: Center(
        child: Column(
          children: [
            FurnitureAssets.images.projectLogo.svg(),
            // Text(context.tr(Localization))
          ],
        ),
      ),
    );
  }
}
