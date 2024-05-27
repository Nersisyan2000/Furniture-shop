import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

class ChipElement extends StatelessWidget {
  const ChipElement({super.key, this.backgroundColor, this.color});

  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: radius10Circular,
        color: Colors.white,
      ),
      child: Padding(
        padding: paddingH12V8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              backgroundColor: FurnitureColors.primaryColor,
              radius: 8.0,
            ),
            Padding(
              padding: paddingH8,
              child: const Text('Partex'),
            ),
            const Icon(
              Icons.check,
              size: 16.0,
            )
          ],
        ),
      ),
    );
  }
}
