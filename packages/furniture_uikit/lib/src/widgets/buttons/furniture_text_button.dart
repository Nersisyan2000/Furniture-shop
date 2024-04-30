import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/assets/fonts.gen.dart';

class FurnitureTextButton extends StatelessWidget {
  const FurnitureTextButton(
      {super.key, this.onTap, required this.title, this.color});

  final VoidCallback? onTap;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(color: color, fontFamily: FontFamily.switzer),
      ),
    );
  }
}
