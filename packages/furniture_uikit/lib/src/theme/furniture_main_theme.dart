import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_button_styles.dart';

import 'furniture_text_styles.dart';


ThemeData get lightTheme => ThemeData(
      primaryColor: Colors.amber,
      fontFamily: FontFamily.switzer,
inputDecorationTheme: InputDecorationTheme(
  filled: true,
  fillColor: FurnitureColors.whiteColor,
  // hintText: widget.hintText,
  hintStyle: switzer14w4TextStyle.copyWith(
      color: FurnitureColors.subTextColor),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(10.0),
  ),
  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
),
      iconButtonTheme: IconButtonThemeData(style: furnitureIconButtonBlueMode),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: furnitureElevatedButtonBlueMode),
      colorScheme: const ColorScheme.light(
        primary: Colors.black,
        background: Color(0xFFF9F9F9),
      ),
    );
