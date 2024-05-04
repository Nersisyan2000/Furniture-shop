import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class UikitButtons extends StatelessWidget {
  const UikitButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FurnitureIconButton(
              onTap: () {},
              icon: FurnitureAssets.icons.directionRight3.svg(),
            ),
            FurnitureIconButton.whiteMode(
              onTap: () {},
              icon: FurnitureAssets.icons.arrowBack.svg(),
            ),
          ],
        ),
        20.verticalSpace,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FurnitureElevatedButton(
                  onTap: () {}, title: context.tr(Localization.getStarted)),
              20.verticalSpace,
              FurnitureElevatedButton.whiteMode(
                  onTap: () {}, title: context.tr(Localization.backHome)),
              20.verticalSpace,
              FurnitureElevatedIconButton.whiteMode(
                onTap: () {},
                title: context.tr(Localization.signInWithGoogle),
                icon: FurnitureAssets.icons.googleIcon.svg(),
              ),
              20.verticalSpace,
              FurnitureElevatedIconButton(
                onTap: () {},
                title: context.tr(Localization.addToCard),
                icon: FurnitureAssets.icons.frame.svg(),
              ),
              20.verticalSpace,
              FurnitureElevatedIconButton.settingMode(
                onTap: () {},
                title: context.tr(Localization.notifications),
                icon: FurnitureAssets.icons.notification.svg(),
              ),
              20.verticalSpace,
              FurnitureTextButton(
                title: context.tr(Localization.logOut), // Log Out
                onTap: () {},
                color: Colors.red,
              ),
            ],
          ),
        )
      ],
    );
  }
}
