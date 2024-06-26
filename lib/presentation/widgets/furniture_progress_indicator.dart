import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureProgressIndicator extends StatelessWidget {
  final double strokeWidth;
  final Color color;

  const FurnitureProgressIndicator({
    super.key,
    this.strokeWidth = 4.0,
    this.color = FurnitureColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
