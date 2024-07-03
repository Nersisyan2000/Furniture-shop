import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import 'package:auto_route/auto_route.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_localization/furniture_localization.dart';
import "package:furniture_shop/presentation/screens/auth/auth_screen_provider.dart";
import "package:furniture_shop/presentation/screens/auth/widgets/login_widget.dart";
import "package:furniture_shop/presentation/screens/auth/widgets/sign_up_widget.dart";
import "package:furniture_shop/presentation/widgets/furniture_app_bar.dart";
import "package:furniture_shop/routes/app_router.dart";
import "package:furniture_uikit/furniture_uikit.dart";
import "package:provider/provider.dart";

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool activeSignUp = false;
  bool _isSelected = false;

  PreferredSize _authAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        80.h,
      ),
      child: FurnitureAppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () => context.router.maybePop(),
        ),
      ),
    );
  }

  RichText _authFooterRich(BuildContext context) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _authAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                );
              },
            ),
            FurnitureElevatedIconButton.whiteMode(
              onTap: () {},
              title: context.tr(Localization.signInWithGoogle),
              icon: FurnitureAssets.icons.googleIcon.svg(),
            ),
            // 20.verticalSpace,
            _authFooterRich(context),
          ],
        )),
      ),
    );
  }

  void onTapSignUpLogin(bool signUp) {
    setState(() {
      activeSignUp = signUp;
      debugPrint("$activeSignUp");
    });
  }

  void onChangedCheckbox(bool newValue) {
    setState(() {
      _isSelected = newValue;
    });
  }
}
