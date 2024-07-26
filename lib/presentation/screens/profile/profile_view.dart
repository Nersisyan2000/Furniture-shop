import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/domain/enums/profile_values.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_cubit/auth_cubit.dart';
import 'package:furniture_shop/presentation/screens/profile/widgets/profile_user_info.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/utils/extensions/profile_extensions.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  PreferredSize _profileAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.h),
      child: FurnitureAppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () => context.router.maybePop(),
        ),
        title: Text(
          context.tr(Localization.profile),
          style: switzer20MediumTextStyle,
        ),
        actions: [
          FurnitureTextButton(
            title: context.tr(
              Localization.logOut,
            ),
            color: FurnitureColors.red,
            onTap: () => context.read<AuthCubit>().logout(),
          )
        ],
      ),
    );
  }

  Widget _optionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: ProfileValues.values.asMap().entries.map(
        (entry) {
          ProfileValues method = entry.value;
          return FurnitureElevatedIconButton.settingMode(
            svgIcon: method.icon,
            onTap: () {},
            title: method.name,
          ).paddingOnly(bottom: 16.h);
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _profileAppBar(context),
      body: SafeArea(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthUnauthenticated) {
              context.router.replaceAll([
                const SignInRoute()
              ]); // Or navigate to another page if needed
            }
          },
          builder: (
            context,
            state,
          ) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ProfileUserInfo(
                  imageUrl:
                      'https://icones.pro/wp-content/uploads/2021/02/icone-utilisateur.png',
                  title: 'Mansurul Hoque',
                  emailAddress: 'mansurul952@gmail.com',
                ).paddingSymmetric(vertical: 24.h),
                _optionsSection(),
              ],
            );
          },
        ),
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
