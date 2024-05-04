import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class TextFieldStyles extends StatelessWidget {
  const TextFieldStyles({
    super.key,
    this.hintText,
    required this.label,
    required this.controller,
    this.isSecure = false,
  });

  final String? hintText;
  final String label;
  final TextEditingController controller;
  final bool isSecure;

  /// TODO: - for each textfield create and define onChange, onEditComplete
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
        padding: paddingBottm8,
        child: Text(
          label,
          style: switzer14MediumTextStyle,
        ),
      ),
      TextField(
        // onTapOutside: ,  /// this
        // onChanged: , /// this
        // onEditingComplete: , /// this
        controller: controller,
        obscureText: isSecure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: switzer14RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor),
        ),
      ),
    ]);
  }
}
