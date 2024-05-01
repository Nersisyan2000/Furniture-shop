import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FurnitureColors.buttonShapeColor,
      body: SafeArea(
          child: Column(
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
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: SearchField(
          //     controller: TextEditingController(),
          //     prefixIcon: FurnitureAssets.icons.googleIcon.svg(),
          //     hintText: "Enter your password",
          //     isSecure: true,
          //     suffixIcon: FurnitureAssets.icons.googleIcon.svg(),
          //   ),
          // ),
        ],
      )),
    );
  }
}