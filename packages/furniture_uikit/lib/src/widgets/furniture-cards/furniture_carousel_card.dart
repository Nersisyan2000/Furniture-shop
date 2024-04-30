import 'package:flutter/material.dart';

import 'package:furniture_uikit/src/assets/assets.gen.dart';

class FurnitureCarouselCard extends StatelessWidget {
  const FurnitureCarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FurnitureAssets.images.carouselBackgroundImg.svg(),
    );
  }
}
