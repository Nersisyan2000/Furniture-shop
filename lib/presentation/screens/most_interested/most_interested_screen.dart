import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MostInterestedScreen extends StatelessWidget {
  const MostInterestedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Most interested screen!'),
        ),
      ),
    );
  }
}
