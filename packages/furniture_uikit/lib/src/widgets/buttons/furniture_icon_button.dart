import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

class FurnitureIconButton extends StatelessWidget {
  const FurnitureIconButton({
    super.key,
    required this.icon,
    this.onTap,
    this.whiteMode = false,
    this.mode,
    this.width,
    this.height,
  });

  final VoidCallback? onTap;
  final Widget icon;
  final bool whiteMode;
  final bool? mode;
  final double? width;
  final double? height;

  factory FurnitureIconButton.whiteMode({
    required Widget icon,
     VoidCallback? onTap,
    double? width,
    double? height,
    bool? mode,
    // bool? desable,
  }) {
    return FurnitureIconButton(
      onTap: onTap,
      icon: icon,
      whiteMode: true,
      mode: mode,
      width: width,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (mode != null) {
      return SizedBox(
        height: 22.0,
        width: 22.0,
        child: IconButton(
          onPressed: onTap,
          icon: icon,
          style: whiteMode ? furnitureIconButtonWhiteMode : null,
          padding: EdgeInsets.zero,
        ),
      );
    }
    return IconButton(
      onPressed: onTap,
      icon: icon,
      style: whiteMode ? furnitureIconButtonWhiteMode : null,
      padding: paddingAll16,
    );
  }
}
