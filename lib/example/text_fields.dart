import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFieldStyles(
            controller: TextEditingController(),
            hintText: "Enter Your Name",
            label: "Full Name",
            isSecure: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFieldStyles(
            controller: TextEditingController(),
            hintText: "Enter your email",
            label: "Email",
            isSecure: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFieldStyles(
            controller: TextEditingController(),
            hintText: "Enter your password",
            label: "Password",
            isSecure: true,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: FurnitureSearchInput(
            searchHintText: 'Search Furniture',
          ),
        ),
      ],
    );
  }
}
