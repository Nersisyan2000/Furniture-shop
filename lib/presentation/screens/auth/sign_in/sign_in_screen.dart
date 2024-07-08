import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_rich_text.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_titles.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  Widget _fillingFields(BuildContext context) {
    return Column(
      children: [
        FurnitureTextField(
          label: context.tr(Localization.email),
          controller: null,
          hintText: context.tr(
            Localization.enterEmail,
          ),
          onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
        ),
        24.verticalSpace,
        FurnitureTextField(
          label: context.tr(Localization.password),
          controller: null,
          hintText: context.tr(
            Localization.enterYourPassword,
          ),
          isSecure: true,
          onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
        ),
      ],
    );
  }

  Widget _buttonsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FurnitureElevatedButton(
          onTap: () => context.router.push(const FeedRoute()),
          title: context.tr(Localization.signIn),
          textStyle: switzer16SemiboldTextStyle,
          padding: EdgeInsets.symmetric(
            vertical: 8.h,
          ),
        ),
        16.verticalSpace,
        FurnitureElevatedIconButton.whiteMode(
          icon: FurnitureAssets.icons.googleIcon.svg(),
          title: context.tr(Localization.signInWithGoogle),
          onTap: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          // scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              80.verticalSpace,
              AuthTitles(
                title: context.tr(
                  Localization.welcomeBack,
                ),
                subTitle: context.tr(
                  Localization.welcomeBackSubTitle,
                ),
              ),
              _fillingFields(context).paddingOnly(
                top: 16.h,
                bottom: 8.h,
              ),
              Text(
                context.tr(Localization.forgotPassword),
                style: switzer14RegularTextStyle,
                textAlign: TextAlign.right,
              ).paddingSymmetric(
                vertical: 16.h,
              ),
              _buttonsSection(context),
              AuthRichText(
                richDesc: context.tr(
                  Localization.dontHaveAnAccount,
                ),
                richButton: context.tr(
                  Localization.signUpForFree,
                ),
                onTapNavigate: () => {
                  FocusScope.of(context).unfocus(),
                  context.router.push(const SignUpRoute())
                },
              ),
            ],
          ),
        ),
      ).paddingAll(20.0),
    );
  }
}
