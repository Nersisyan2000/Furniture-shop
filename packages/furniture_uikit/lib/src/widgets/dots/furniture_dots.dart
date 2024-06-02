import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureDots extends StatelessWidget {
  const FurnitureDots(
      {super.key, required this.pageLength, required this.currentIndexPage});

  final int pageLength;
  final int currentIndexPage;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: pageLength,
      position: currentIndexPage,
      decorator: const DotsDecorator(
        // should it be taken out or not?
        activeColor: FurnitureColors.primaryColor,
        color: FurnitureColors.dotsInactiveColor,
      ),
    );
  }
}
