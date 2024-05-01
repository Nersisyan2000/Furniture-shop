import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

/// TODO: - change to stateless if there are no any state
class TextFieldStyles extends StatefulWidget {
  const TextFieldStyles({
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
  State<TextFieldStyles> createState() => _TextFieldStylesState();
}

class _TextFieldStylesState extends State<TextFieldStyles> {

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      /// TODO: check label before use
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          widget.label!,
          style: switzer14w5TextStyle,
        ),
      ),
      /// TODO: - onChange, onEditingComplete, - create properties for following and like actions
      TextField(
        controller: widget.controller,
        obscureText: widget.isSecure,
        /// TODO: - separate input decorations file
        decoration:  InputDecoration(

          // filled: true,
          // fillColor: FurnitureColors.whiteColor,
          hintText: widget.hintText,
          hintStyle: switzer14w4TextStyle.copyWith(
              color: FurnitureColors.subTextColor),
          // border: OutlineInputBorder(
          //   borderSide: BorderSide.none,
          //   borderRadius: BorderRadius.circular(10.0),
          // ),
          // contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    ]);
  }
}
