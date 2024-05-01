import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

class FurnitureIconButton extends StatelessWidget {
  const FurnitureIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.whiteMode = false,
  });

  final VoidCallback onTap;
  final Widget icon;
  final bool whiteMode;

  factory FurnitureIconButton.whiteMode({
    required Widget icon,
    required VoidCallback onTap,
  }) {
    return FurnitureIconButton(
      onTap: onTap,
      icon: icon,
      whiteMode: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: icon,
      style: whiteMode ? furnitureIconButtonWhiteMode : null,
      padding: paddingAll16,
    );
  }
}
