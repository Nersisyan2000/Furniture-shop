import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';


class TextFiledStyles extends StatefulWidget {
  const TextFiledStyles({
    super.key,
    this.hintText,
    this.label,
    required this.controller,
    this.isSecure = false,
  });

  final String? hintText;
  final String? label;
  final TextEditingController controller;
  final bool isSecure;

  @override
  State<TextFiledStyles> createState() => _TextFiledStylesState();
}

class _TextFiledStylesState extends State<TextFiledStyles> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          widget.label!,
          style: switzer14w5TextStyle,
        ),
      ),
      TextField(
        controller: widget.controller,
        obscureText: widget.isSecure,
        decoration: InputDecoration(
          filled: true,
          fillColor: FurnitureColors.whiteColor,
          hintText: widget.hintText,
          hintStyle: switzer14w4TextStyle.copyWith(
              color: FurnitureColors.subTextColor),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    ]);
  }
}
