import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      filled: true,
      fillColor: FurnitureColors.whiteColor,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: radius10Circular,
      ),
      contentPadding: paddingH16,
    );

InputDecoration get searchInputDecoration => InputDecoration(
      hintStyle: switzer14RegularTextStyle.copyWith(
          color: FurnitureColors.subTextColor),
      contentPadding: EdgeInsets.zero,
    );
