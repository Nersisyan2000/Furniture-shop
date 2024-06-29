import "package:awesome_extensions/awesome_extensions.dart";
import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import 'package:auto_route/auto_route.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_localization/furniture_localization.dart';
import "package:furniture_shop/presentation/screens/auth/widgets/login_widget.dart";
import "package:furniture_shop/presentation/screens/auth/widgets/sign_up_widget.dart";
import "package:furniture_uikit/furniture_uikit.dart";
import "package:provider/provider.dart";

import "../../../routes/app_router.dart";
import "auth_screen_provider.dart";

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool activeSignUp = false;
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  activeSignUp
                      ? context.tr(Localization.createAccount)
                      : context.tr(Localization.welcomeBack),
                  style: switzer32SemiboldTextStyle,
                ),
                Text(
                  activeSignUp
                      ? context.tr(Localization.welcomeBackSubTitle)
                      : context.tr(Localization.createAccountTogether),
                  style: switzer16RegularTextStyle.copyWith(
                      color: FurnitureColors.subTextColor),
                ),
              ],
            ),
            activeSignUp
                ? const SignUpWidget()
                : LoginWidget(
                    value: _isSelected,
                    onChanged: onChangedCheckbox,
                  ),
            Consumer<AuthProvider>(
              builder: (context, provider, _) {
                return FurnitureElevatedButton(
                  onTap: () {
                    if (provider.formKey.currentState != null) {
                      if (provider.formKey.currentState!.validate()) {
                        debugPrint("validated");
                        context.router.push(const FeedRoute());
                      } else {
                        debugPrint("not validated");
                        provider.formKey.currentState!.validate();
                      }
                    }
                  },
                  title: context.tr(Localization.signIn),
                ).paddingAll(20.0);
              },
            ),
            FurnitureElevatedIconButton.whiteMode(
              onTap: () {},
              title: context.tr(Localization.signInWithGoogle),
              icon: FurnitureAssets.icons.googleIcon.svg(),
            ).paddingAll(20.0),
            // 20.verticalSpace,
            buildSignUpLoginRichText(),
          ],
        )),
      ),
    );
  }

  buildSignUpLoginRichText() {
    final title = activeSignUp
        ? context.tr(Localization.alreadyHaveAccount)
        : context.tr(Localization.dontHaveAnAccount);
    final action = activeSignUp
        ? context.tr(Localization.signIn)
        : context.tr(Localization.signUpForFree);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: title,
        style: switzer14RegularTextStyle.copyWith(
            color: FurnitureColors.subTextColor),
        children: <TextSpan>[
          TextSpan(
              text: action,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  onTapSignUpLogin(!activeSignUp);
                },
              style: switzer14MediumTextStyle),
        ],
      ),
    );
  }

  onTapSignUpLogin(bool signUp) {
    setState(() {
      activeSignUp = signUp;
      debugPrint("$activeSignUp");
    });
  }
  onChangedCheckbox(bool newValue) {
    setState(() {
      _isSelected = newValue;
    });
  }
}
