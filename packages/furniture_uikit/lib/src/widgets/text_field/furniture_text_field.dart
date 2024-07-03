import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureTextField extends StatefulWidget {
  const FurnitureTextField({
    super.key,
    this.hintText,
    required this.label,
    required this.controller,
    this.onTapOutSide,
    this.onChanged,
    this.onSaved,
    this.onEditingComplete,
    this.isSecure = false,
  });

  final String? hintText;
  final String label;
  final TextEditingController? controller;
  final bool isSecure;
  final Function(PointerDownEvent)? onTapOutSide;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;

  final VoidCallback? onEditingComplete;

  @override
  State<FurnitureTextField> createState() => _FurnitureTextField();
}

class _FurnitureTextField extends State<FurnitureTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
        padding: paddingBottm8,
        child: Text(
          widget.label,
          style: switzer14MediumTextStyle,
        ),
      ),
      TextFormField(
        key: widget.key,
        onTapOutside: widget.onTapOutSide,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingComplete,
        controller: widget.controller,
        obscureText: widget.isSecure,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: switzer14RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor),
        ),
        onSaved: widget.onSaved,
        validator: (txt) {
          if (txt == null) return "This field is mandatory";
          if (txt.isEmpty) return "This field must be filled";
          return null;
        },
      ),
    ]);
  }
}
