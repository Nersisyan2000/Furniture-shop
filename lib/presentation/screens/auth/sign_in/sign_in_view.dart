import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/auth/sign_in/sign_in_cubit/sign_in_cubit.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_rich_text.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_titles.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  Widget _fillingFields(
      BuildContext context, SignInState state, SignInCubit cubit) {
    return FocusScope(
      node: FocusScopeNode(),
      child: Column(
        children: [
          FurnitureTextField(
            label: context.tr(Localization.email),
            controller: cubit.emailController,
            hintText: context.tr(
              Localization.enterEmail,
            ),
            onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
            onChanged: (value) => cubit.validateForm(),
            errorText: state is SignInValidation && state.emailError != null
                ? state.emailError
                : null,
          ),
          24.verticalSpace,
          FurnitureTextField(
            label: context.tr(Localization.password),
            controller: cubit.passwordController,
            hintText: context.tr(
              Localization.enterYourPassword,
            ),
            isSecure: true,
            onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
            onChanged: (value) => cubit.validateForm(),
            errorText: state is SignInValidation && state.passwordError != null
                ? state.passwordError
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buttonsSection(
    BuildContext context,
    SignInState state,
    SignInCubit cubit,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FurnitureElevatedButton(
          onTap: state is SignInValidation && state.isFormValid
              ? () => cubit.signIn()
              : null,
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
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            BlocConsumer<SignInCubit, SignInState>(listener: (context, state) {
          if (state is SignInSuccess) {
            context.router.replaceAll([const FeedRoute()]);
          } else if (state is SignInFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.error,
                  textAlign: TextAlign.center,
                ),
                backgroundColor: FurnitureColors.red,
              ),
            );
          }
        }, builder: (context, state) {
          final cubit = context.read<SignInCubit>();

          return SingleChildScrollView(
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
                _fillingFields(context, state, cubit).paddingOnly(
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
                _buttonsSection(context, state, cubit),
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
          );
        }),
      ).paddingAll(20.0),
    );
  }
}
