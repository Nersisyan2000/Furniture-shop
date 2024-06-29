import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class FurnitureElevatedIconButton extends StatelessWidget {
  const FurnitureElevatedIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
    this.buttonStyle,
    this.primary = false,
    this.padding,
  });

  final Widget icon;
  final String title;
  final VoidCallback onTap;
  final ButtonStyle? buttonStyle;
  final bool primary;
  final EdgeInsets? padding;

  factory FurnitureElevatedIconButton.whiteMode({
    required Widget icon,
    required String title,
    required VoidCallback onTap,
    EdgeInsets? padding,
  }) {
    return FurnitureElevatedIconButton(
      icon: icon,
      onTap: onTap,
      title: title,
      padding: padding,
      primary: true,
      buttonStyle: furnitureElevatedIconButtonWhiteMode,
    );
  }

  factory FurnitureElevatedIconButton.settingMode({
    required Widget icon,
    required String title,
    required VoidCallback onTap,
    EdgeInsets? padding,
  }) {
    return FurnitureElevatedIconButton(
      icon: icon,
      onTap: onTap,
      title: title,
      padding: padding,
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
        style: switzer16MediumTextStyle,
      ),
      style: primary ? buttonStyle : null,
    );
  }
}
