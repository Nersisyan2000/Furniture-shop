import 'package:flutter/material.dart';

class FurnitureCarouselCard extends StatelessWidget {
  const FurnitureCarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/discount_card.jpg',
          width: 264.0,
          height: 130.0,
          fit: BoxFit.fill,
        ),
        const Text('25% discount'),
        const Text('For a cozy yellow set!'),
        const Text('Learn More'),
      ],
    );
  }
}
