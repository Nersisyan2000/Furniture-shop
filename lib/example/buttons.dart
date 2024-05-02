import 'package:flutter/material.dart';
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
              FurnitureElevatedButton(onTap: () {}, title: 'Get Started'),
              20.verticalSpace,
              FurnitureElevatedButton.whiteMode(
                  onTap: () {}, title: 'Back Home'),
              20.verticalSpace,
              FurnitureElevatedIconButton.whiteMode(
                onTap: () {},
                title: 'Sign in with google',
                icon: FurnitureAssets.icons.googleIcon.svg(),
              ),
              20.verticalSpace,
              FurnitureElevatedIconButton(
                onTap: () {},
                title: 'Add To Card',
                icon: FurnitureAssets.icons.frame.svg(),
              ),
              20.verticalSpace,
              FurnitureElevatedIconButton.settingMode(
                onTap: () {},
                title: 'Notifications',
                icon: FurnitureAssets.icons.notification.svg(),
              ),
              20.verticalSpace,
              FurnitureTextButton(
                title: 'Log Out',
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
