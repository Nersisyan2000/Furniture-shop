import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_colors.dart';

ElevatedButtonThemeData get elevatedButtonThemeData => ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(FurnitureColors.redColor),
    ));
