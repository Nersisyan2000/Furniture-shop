import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureSearchButton extends StatelessWidget {
  const FurnitureSearchButton(
      {super.key, required this.searchButtonHint, this.onNavigateSearch});

  final String searchButtonHint;
  final VoidCallback? onNavigateSearch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FurnitureAssets.icons.searchIcon.svg(),
      title: Text(
        searchButtonHint,
        style: switzer14RegularTextStyle.copyWith(
          color: FurnitureColors.subTextColor,
        ),
      ),
      onTap: onNavigateSearch,
      tileColor: FurnitureColors.whiteColor,
      shape: searchTileShape,
    );
  }
}
