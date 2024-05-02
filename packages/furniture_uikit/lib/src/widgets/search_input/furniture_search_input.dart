import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_input_decorations.dart';

class FurnitureSearchInput extends StatelessWidget {
  const FurnitureSearchInput({super.key, required this.searchHintText});

  final String searchHintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        tileColor: FurnitureColors.whiteColor,
        shape: radius12,
        leading: FurnitureAssets.icons.searchIcon.svg(),
        title: TextField(
          decoration: searchInputDecoration.copyWith(hintText: searchHintText),
        ),
        trailing: FurnitureAssets.icons.filterIcon.svg(),
      ),
    );
  }
}
