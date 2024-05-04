import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.controller,
    this.isSecure = false,
  });

  final String? hintText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final TextEditingController controller;
  final bool isSecure;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isSecure,
      decoration: InputDecoration(
        filled: true,
        fillColor: FurnitureColors.whiteColor,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        suffixIcon: widget.suffixIcon,
        hintStyle:
            switzer14w4TextStyle.copyWith(color: FurnitureColors.subTextColor),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}

//
