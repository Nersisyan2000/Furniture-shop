import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/domain/enums/profile_values.dart';
import 'package:furniture_shop/presentation/screens/auth/sign_up/sign_up_cubit/sign_up_cubit.dart';
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
            onTap: () => context.read<SignUpCubit>().logout(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _profileAppBar(context),
      body: SafeArea(
        child: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {
            if (state is SignUpLoggedOut) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text(
                    'Logged out successfully',
                    textAlign: TextAlign.center,
                  ),
                  backgroundColor: Colors.green[400],
                ),
              );
              context.router
                  .popUntilRoot(); // Or navigate to another page if needed
            } else if (state is SignUpFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
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

  Column _optionsSection() {
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
}
