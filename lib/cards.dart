import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [FurnitureCarouselCard()],
        ),
      )),
    );
  }
}
