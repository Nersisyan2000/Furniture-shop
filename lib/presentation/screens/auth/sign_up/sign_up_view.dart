import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/auth/sign_up/sign_up_cubit/sign_up_cubit.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_rich_text.dart';
import 'package:furniture_shop/presentation/screens/auth/widgets/auth_titles.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  Widget _fillingFields(
    BuildContext context,
    SignUpState state,
    SignUpCubit cubit,
  ) {
    return Column(
      children: [
        FurnitureTextField(
          label: context.tr(Localization.fullName),
          controller: cubit.fullNameController,
          hintText: context.tr(
            Localization.enterYourName,
          ),
          onChanged: (value) => cubit.validateForm(),
          onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
          errorText: state is SignUpValidation && state.fullNameError != null
              ? state.fullNameError
              : null,
        ),
        FurnitureTextField(
          label: context.tr(Localization.email),
          controller: cubit.emailController,
          hintText: context.tr(
            Localization.enterEmail,
          ),
          onChanged: (value) => cubit.validateForm(),
          onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
          errorText: state is SignUpValidation && state.emailError != null
              ? state.emailError
              : null,
        ).paddingSymmetric(vertical: 16.h),
        FurnitureTextField(
          label: context.tr(Localization.password),
          controller: cubit.passwordController,
          hintText: context.tr(
            Localization.enterPassword,
          ),
          isSecure: true,
          onChanged: (value) => cubit.validateForm(),
          onTapOutSide: (evt) => FocusScope.of(context).unfocus(),
          errorText: state is SignUpValidation && state.passwordError != null
              ? state.passwordError
              : null,
        ),
      ],
    );
  }

  Widget _buttonsSection(
    BuildContext context,
    SignUpState state,
    SignUpCubit cubit,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FurnitureElevatedButton(
          onTap: state is SignUpValidation && state.isFormValid
              ? () => cubit.signUp()
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
        child:
            BlocConsumer<SignUpCubit, SignUpState>(listener: (context, state) {
          if (state is SignUpSuccess) {
            context.router.push(const FeedRoute());
          } else if (state is SignUpFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        }, builder: (context, state) {
          final cubit = context.read<SignUpCubit>();

          return SingleChildScrollView(
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
                  state,
                  cubit,
                ).paddingSymmetric(vertical: 24.h),
                _buttonsSection(context, state, cubit),
                AuthRichText(
                  richDesc: context.tr(
                    Localization.alreadyHaveAccount,
                  ),
                  richButton: context.tr(
                    Localization.signIn,
                  ),
                  onTapNavigate: () => context.router.replaceAll(
                    [const SignInRoute()],
                  ),
                )
              ],
            ),
          );
        }),
      ).paddingAll(20.0),
    );
  }
}
