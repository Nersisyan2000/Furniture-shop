import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_screen.dart';
import 'package:provider/provider.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_screen_provider.dart';
import 'package:furniture_shop/routes/app_router.dart';

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



  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Form(
        key: provider.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
              Row(children: [
                Checkbox(
                  value: value,
                  onChanged: (bool? newValue) {
                    onChanged(newValue!);
                  },
                ),
                forgotPasswordRichText(),
              ],),
          ],
        ),
      );
    });
  }

  forgotPasswordRichText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Remember For 30 Days",
        //context.tr(Localization.rememberDays),
        style: switzer14RegularTextStyle.copyWith(
          color: FurnitureColors.subTextColor),
        children: <InlineSpan>[
          const WidgetSpan(
              // alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: SizedBox(width: 50)),
          TextSpan(
                    text: "Forgot password",
                    //context.tr(Localization.forgotPassword),
                    recognizer: TapGestureRecognizer()
                      ..onTap =(){
                      debugPrint("submit forgot button");
                      },
                    style: switzer14MediumTextStyle),
        ],
      ),
    );
  }
}
