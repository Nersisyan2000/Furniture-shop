import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';

ThemeData get lightTheme => ThemeData(
    primaryColor: Colors.amber,
    iconButtonTheme: IconButtonThemeData(style: furnitureIconButtonBlueMode),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: furnitureElevatedButtonBlueMode),
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      background: Color(0xFFF9F9F9),
    ));
