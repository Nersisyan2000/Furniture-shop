import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';

class FurnitureElevatedButton extends StatelessWidget {
  const FurnitureElevatedButton({
    super.key,
    required this.title,
    this.onTap,
    this.whiteMode = false,
    this.textStyle,
    this.padding,
  });

  final String title;
  final VoidCallback? onTap;
  final bool whiteMode;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  factory FurnitureElevatedButton.whiteMode(
          {required String title,
          required VoidCallback? onTap,
          EdgeInsets? padding}) =>
      FurnitureElevatedButton(
        title: title,
        onTap: onTap,
        whiteMode: true,
        padding: padding,
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: whiteMode ? furnitureElevatedButtonWhiteMode : null,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Text(title, style: textStyle),
      ),
    );
  }
}
