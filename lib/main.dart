import 'package:flutter/material.dart';
import 'package:furniture_shop/elements.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

import 'furniture_text_field_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const TextFieldExample(),
    );
  }
}
