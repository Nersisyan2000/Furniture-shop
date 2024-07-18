import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/screens/profile/widgets/profile_user_info.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _profileAppBar(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ProfileUserInfo(
              imageUrl:
                  'https://icones.pro/wp-content/uploads/2021/02/icone-utilisateur.png',
              title: 'Mansurul Hoque',
              emailAddress: 'mansurul952@gmail.com',
            ).paddingSymmetric(vertical: 24.h),
          ],
        ),
      ),
    );
  }
}
