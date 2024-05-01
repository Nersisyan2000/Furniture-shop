import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        title: const Text('Furniture Shop Ui Kit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FurnitureIconButton(
                    onTap: () {},
                    icon: FurnitureAssets.icons.directionRight3.svg()),
                FurnitureIconButton.whiteMode(
                    onTap: () {}, icon: FurnitureAssets.icons.arrowBack.svg()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FurnitureElevatedButton(onTap: () {}, title: 'Get Started'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FurnitureElevatedButton.whiteMode(
                      onTap: () {}, title: 'Back Home'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FurnitureElevatedIconButton.whiteMode(
                    onTap: () {},
                    title: 'Sign in with google',
                    icon: FurnitureAssets.icons.googleIcon.svg(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FurnitureElevatedIconButton(
                    onTap: () {},
                    title: 'Add To Card',
                    icon: FurnitureAssets.icons.frame.svg(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  FurnitureElevatedIconButton.settingMode(
                    onTap: () {},
                    title: 'Notifications',
                    icon: FurnitureAssets.icons.notification.svg(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FurnitureTextButton(
                    title: 'Log Out',
                    onTap: () {},
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
