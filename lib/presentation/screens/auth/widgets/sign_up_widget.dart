import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_screen_provider.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({
    super.key,
  });

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Form(
        key: provider.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.tr(Localization.createAccount),
              style: switzer32SemiboldTextStyle,
            ),
            Text(
              context.tr(
                Localization.createAccountTogether,
              ),
              style: switzer14RegularTextStyle.copyWith(
                color: FurnitureColors.subTextColor,
              ),
            ),
            FurnitureTextField(
                controller: provider.fullNameController,
                hintText: context.tr(Localization.enterYourName),
                label: context.tr(Localization.fullName),
                isSecure: false,
                onTapOutSide: (event) => {
                      FocusScope.of(context).requestFocus(FocusNode()),
                    }).paddingAll(20.0),
            FurnitureTextField(
                controller: provider.emailController,
                hintText: context.tr(Localization.enterEmail),
                label: context.tr(Localization.email),
                isSecure: false,
                onTapOutSide: (event) => {
                      FocusScope.of(context).requestFocus(FocusNode()),
                    }).paddingAll(20.0),
            FurnitureTextField(
                controller: provider.passwordController,
                hintText: context.tr(Localization.enterPassword),
                label: context.tr(Localization.password),
                isSecure: true,
                onTapOutSide: (event) => {
                      FocusScope.of(context).requestFocus(FocusNode()),
                    }).paddingAll(20.0),
            // 20.verticalSpace,
          ],
        ),
      );
    });
  }
}
