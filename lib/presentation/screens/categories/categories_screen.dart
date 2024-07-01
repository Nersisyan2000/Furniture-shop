import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Categories!'),
        ),
      ),
    );
  }
}
