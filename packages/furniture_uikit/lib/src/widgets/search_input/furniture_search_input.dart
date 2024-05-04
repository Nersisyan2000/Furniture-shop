import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_input_decorations.dart';

class FurnitureSearchInput extends StatelessWidget {
  const FurnitureSearchInput({super.key, required this.searchHintText});

  final String searchHintText;

  ///
  @override
  Widget build(BuildContext context) {
    /// TODO: - remove SizedBox
    return SizedBox(
      /// TODO: remove list tile, leading and trailing widgets should be on textfield in places prefix and suffix icons or widgets
    child: ListTile(
        tileColor: FurnitureColors.whiteColor,
      /// TODO: textfield all outside style should be implemented via input decoration
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
