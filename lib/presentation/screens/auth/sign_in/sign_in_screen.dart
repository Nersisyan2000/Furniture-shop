import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/auth/sign_in/sign_in_cubit/sign_in_cubit.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<SignInCubit, SignInState>(
          listener: (context, state) {
            if (state is SignInSuccess) {
              context.router.push(const FeedRoute());
            } else if (state is SignInFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FurnitureTextField(
                  label: context.tr(Localization.email),
                  controller: context.read<SignInCubit>().emailController,
                  hintText: context.tr(Localization.enterEmail),
                  errorText: context.select((SignInCubit cubit) =>
                      cubit.state is SignInValidation
                          ? (cubit.state as SignInValidation).emailError
                          : null),
                ),
                FurnitureTextField(
                  label: context.tr(Localization.password),
                  controller: context.read<SignInCubit>().passwordController,
                  hintText: context.tr(Localization.enterYourPassword),
                  isSecure: true,
                  errorText: context.select((SignInCubit cubit) =>
                      cubit.state is SignInValidation
                          ? (cubit.state as SignInValidation).passwordError
                          : null),
                ),
                BlocBuilder<SignInCubit, SignInState>(
                  builder: (context, state) {
                    final isFormValid =
                        state is SignInValidation && state.isFormValid;
                    return FurnitureElevatedButton(
                      onTap: isFormValid
                          ? () {
                              context.read<SignInCubit>().signIn();
                            }
                          : null,
                      title: context.tr(Localization.signIn),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
