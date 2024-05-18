import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class ChipElement extends StatelessWidget {
  const ChipElement({super.key, this.backgroundColor, this.color});

  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: FurnitureColors.primaryColor,
              radius: 8.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Text('Partex'),
            ),
            Icon(
              Icons.check,
              size: 16.0,
            )
          ],
        ),
      ),
    );
  }
}
