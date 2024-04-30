import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';

class FurnitureElevatedIconButton extends StatelessWidget {
  const FurnitureElevatedIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
    this.buttonStyle,
    this.color,
    this.primary = false,
  });

  final Widget icon;
  final String title;
  final VoidCallback onTap;
  final ButtonStyle? buttonStyle;
  final Color? color;
  final bool primary;

  factory FurnitureElevatedIconButton.whiteMode(
      {required Widget icon,
      required String title,
      required VoidCallback onTap}) {
    return FurnitureElevatedIconButton(
      icon: icon,
      onTap: onTap,
      title: title,
      primary: true,
      buttonStyle: furnitureElevatedIconButtonWhiteMode,
    );
  }

  factory FurnitureElevatedIconButton.settingMode(
      {required Widget icon,
      required String title,
      required VoidCallback onTap}) {
    return FurnitureElevatedIconButton(
      icon: icon,
      onTap: onTap,
      title: title,
      primary: true,
      buttonStyle: furnitureElevatedIconButtonSettingMode,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: icon,
      label: Text(
        title,
        style: TextStyle(color: color),
      ),
      style: primary ? buttonStyle : null,
    );
  }
}
