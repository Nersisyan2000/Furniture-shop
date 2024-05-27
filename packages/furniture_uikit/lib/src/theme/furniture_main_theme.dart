import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';
import 'package:furniture_uikit/src/theme/furniture_input_decorations.dart';

ThemeData get lightTheme => ThemeData(
      fontFamily: FontFamily.switzer,
      inputDecorationTheme: inputDecorationTheme,
      iconButtonTheme: IconButtonThemeData(style: furnitureIconButtonBlueMode),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: furnitureElevatedButtonBlueMode),
      colorScheme: const ColorScheme.light(
        primary: FurnitureColors.textColor,
        background: FurnitureColors.whiteBackground,
      ),
      floatingActionButtonTheme: furnitureFloatingActionButtonThemeData,
    );
