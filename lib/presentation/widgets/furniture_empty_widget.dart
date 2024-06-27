import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureEmptyWidget extends StatelessWidget {
  const FurnitureEmptyWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const FurnitureCachedNetworkImage(
          imageUrl:
              'https://cdn.iconscout.com/icon/premium/png-256-thumb/empty-folder-1519007-1284948.png',
        ),
        Text(
          message,
        ),
      ],
    );
  }
}
