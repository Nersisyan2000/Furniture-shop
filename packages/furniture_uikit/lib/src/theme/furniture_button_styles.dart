import 'package:flutter/material.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

ButtonStyle get furnitureIconButtonBlueMode => const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        Color(0xFF0C8A7B),
      ),
    );

ButtonStyle get furnitureIconButtonWhiteMode => const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        Color(0xFFFFFFFF),
      ),
    );

ButtonStyle get furnitureElevatedButtonBlueMode => ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF0C8A7B),
      padding: paddingV16,
      foregroundColor: Colors.white,
      shape: radius14,
    );

ButtonStyle get furnitureElevatedButtonWhiteMode => ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      foregroundColor: const Color(0xFF828A89),
    );

ButtonStyle get furnitureElevatedIconButtonWhiteMode =>
    ElevatedButton.styleFrom(
      padding: paddingV16,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      foregroundColor: Colors.black,
      shape: radius14,
    );

ButtonStyle get furnitureElevatedIconButtonSettingMode =>
    ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      foregroundColor: const Color(0xFF828A89),
      padding: paddingAll16,
      alignment: Alignment.centerLeft,
      shape: radius14,
    );