import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_screen_provider.dart';

import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final ValueChanged<bool> onChanged;

  Widget _rememberAndForgotSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
            Text(
              context.tr(Localization.rememberDays),
              style: switzer14RegularTextStyle.copyWith(
                color: FurnitureColors.subTextColor,
              ),
            ),
          ],
        ),
        Text(
          context.tr(
            Localization.forgotPassword,
          ),
          style: switzer14RegularTextStyle,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Form(
        key: provider.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.tr(Localization.welcomeBack),
              style: switzer32SemiboldTextStyle,
            ),
            Text(
              context.tr(
                Localization.welcomeBackSubTitle,
              ),
              style: switzer14RegularTextStyle.copyWith(
                color: FurnitureColors.subTextColor,
              ),
            ),
            FurnitureTextField(
              controller: provider.emailController,
              hintText: context.tr(Localization.enterEmail),
              label: context.tr(Localization.email),
              isSecure: false,
              onTapOutSide: (event) => {
                FocusScope.of(context).requestFocus(FocusNode()),
              },
            ),
            FurnitureTextField(
              controller: provider.passwordController,
              hintText: context.tr(Localization.enterPassword),
              label: context.tr(Localization.password),
              isSecure: true,
              onTapOutSide: (event) => {
                FocusScope.of(context).requestFocus(FocusNode()),
              },
            ),
            // 20.verticalSpace,
            _rememberAndForgotSection(context),
          ],
        ),
      );
    });
  }
}
