import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/example/bottom_tab_bar.dart';
import 'package:furniture_shop/example/buttons.dart';
import 'package:furniture_shop/example/other_elements.dart';
import 'package:furniture_shop/example/text_fields.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      extendBody: true,
      // resizeToAvoidBottomInset: false,
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: FloatingActionButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: FurnitureAssets.icons.eyeScanner.svg(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        title: Text(context.tr(Localization.furnitureUikitTitle)),
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: Text('Buttons'),
              children: <Widget>[
                UikitButtons(),
              ],
            ),
            ExpansionTile(
              title: Text('Text Fields'),
              children: <Widget>[
                TextFields(),
              ],
            ),
            ExpansionTile(
              title: Text('Other elements'),
              children: <Widget>[
                OtherElements(),
              ],
            ),
          ],
        ),
      )),
      bottomNavigationBar: const BottomTabBarExample(),
    );
  }
}
