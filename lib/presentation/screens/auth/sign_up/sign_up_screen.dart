import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_rich_text.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_titles.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  Widget _fillingFields(BuildContext context) {
    return Column(
      children: [
        FurnitureTextField(
          label: context.tr(Localization.fullName),
          controller: null,
          hintText: context.tr(
            Localization.enterYourName,
          ),
          onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
        ),
        FurnitureTextField(
          label: context.tr(Localization.email),
          controller: null,
          hintText: context.tr(
            Localization.enterEmail,
          ),
          onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
        ).paddingSymmetric(vertical: 16.h),
        FurnitureTextField(
          label: context.tr(Localization.password),
          controller: null,
          hintText: context.tr(
            Localization.enterPassword,
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
          onTap: () {},
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: FurnitureAppBar(
          leading: FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.arrowBack.svg(),
            onTap: () => context.router.maybePop(),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AuthTitles(
                title: context.tr(
                  Localization.createAccount,
                ),
                subTitle: context.tr(
                  Localization.createAccountTogether,
                ),
              ),
              _fillingFields(
                context,
              ).paddingSymmetric(vertical: 24.h),
              _buttonsSection(context),
              AuthRichText(
                richDesc: context.tr(
                  Localization.alreadyHaveAccount,
                ),
                richButton: context.tr(
                  Localization.signIn,
                ),
                onTapNavigate: () => context.router.push(
                  const SignInRoute(),
                ),
              )
            ],
          ),
        ),
      ).paddingAll(20.0),
    );
  }
}
