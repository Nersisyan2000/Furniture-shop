import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

ButtonStyle get furnitureBottomTabItemIconButton => const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
      FurnitureColors.transparent,
    ));

ButtonStyle get furnitureIconButtonBlueMode => const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        FurnitureColors.primaryColor,
      ),
      overlayColor: MaterialStatePropertyAll(Colors.transparent),
    );

ButtonStyle get furnitureIconButtonWhiteMode => const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        FurnitureColors.whiteColor,
      ),
    );

ButtonStyle get furnitureElevatedButtonBlueMode => ElevatedButton.styleFrom(
      backgroundColor: FurnitureColors.primaryColor,
      padding: paddingV16,
      foregroundColor: FurnitureColors.whiteColor,
      shape: radius14,
    );

ButtonStyle get furnitureElevatedButtonWhiteMode => ElevatedButton.styleFrom(
      backgroundColor: FurnitureColors.whiteColor,
      foregroundColor: FurnitureColors.subTextColor,
    );

ButtonStyle get furnitureElevatedIconButtonWhiteMode =>
    ElevatedButton.styleFrom(
      padding: paddingV16,
      backgroundColor: FurnitureColors.whiteColor,
      foregroundColor: FurnitureColors.textColor,
      shape: radius14,
    );

ButtonStyle get furnitureElevatedIconButtonSettingMode =>
    ElevatedButton.styleFrom(
      backgroundColor: FurnitureColors.whiteColor,
      foregroundColor: FurnitureColors.subTextColor,
      padding: paddingAll16,
      alignment: Alignment.centerLeft,
      shape: radius14,
    );

FloatingActionButtonThemeData get furnitureFloatingActionButtonThemeData =>
    const FloatingActionButtonThemeData(
      backgroundColor: FurnitureColors.primaryColor,
    );
