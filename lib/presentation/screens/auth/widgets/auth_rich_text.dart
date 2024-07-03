import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class AuthRichText extends StatelessWidget {
  const AuthRichText(
      {super.key, this.richDesc, this.richButton, this.onTapNavigate});

  final String? richDesc;
  final String? richButton;
  final VoidCallback? onTapNavigate;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: richDesc,
            style: switzer14RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor,
            ),
          ),
          TextSpan(
            text: richButton, // 'Sign Up for free.'
            style: switzer14RegularTextStyle,
            recognizer: TapGestureRecognizer()..onTap = onTapNavigate,
          ),
        ],
      ),
    ).paddingSymmetric(vertical: 24.h);
  }
}
