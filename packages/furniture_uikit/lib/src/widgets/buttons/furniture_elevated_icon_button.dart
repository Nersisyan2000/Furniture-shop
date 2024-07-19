import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FurnitureElevatedIconButton extends StatelessWidget {
  const FurnitureElevatedIconButton({
    super.key,
    this.icon,
    required this.onTap,
    required this.title,
    this.buttonStyle,
    this.primary = false,
    this.svgIcon,
  });

  final Widget? icon;
  final String title;
  final VoidCallback onTap;
  final ButtonStyle? buttonStyle;
  final bool primary;
  final SvgPicture? svgIcon;

  factory FurnitureElevatedIconButton.whiteMode({
    Widget? icon,
    required String title,
    required VoidCallback onTap,
    EdgeInsets? padding,
    SvgPicture? svgIcon,
  }) {
    return FurnitureElevatedIconButton(
      icon: icon,
      onTap: onTap,
      title: title,
      primary: true,
      buttonStyle: furnitureElevatedIconButtonWhiteMode,
      svgIcon: svgIcon,
    );
  }

  factory FurnitureElevatedIconButton.settingMode({
    Widget? icon,
    required String title,
    required VoidCallback onTap,
    EdgeInsets? padding,
    SvgPicture? svgIcon,
  }) {
    return FurnitureElevatedIconButton(
      icon: icon,
      onTap: onTap,
      title: title,
      primary: true,
      buttonStyle: furnitureElevatedIconButtonSettingMode,
      svgIcon: svgIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: svgIcon ?? icon,
      label: Text(
        title,
        style: switzer16MediumTextStyle,
      ),
      style: primary ? buttonStyle : null,
    );
  }
}
