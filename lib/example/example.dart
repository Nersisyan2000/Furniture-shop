import 'package:flutter/material.dart';
import 'package:furniture_shop/example/buttons.dart';
import 'package:furniture_shop/example/other_elements.dart';
import 'package:furniture_shop/example/text_fields.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        title: const Text('Furniture Shop Ui Kit'),
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
    );
  }
}
