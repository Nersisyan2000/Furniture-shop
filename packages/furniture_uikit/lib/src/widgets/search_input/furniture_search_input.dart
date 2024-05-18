import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
// import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_input_decorations.dart';

class FurnitureSearchInput extends StatelessWidget {
  const FurnitureSearchInput({
    super.key,
    required this.searchHintText,
    this.onTapOutSide,
  });

  final String searchHintText;
  final Function(PointerDownEvent)? onTapOutSide;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: onTapOutSide,
      decoration: searchInputDecoration.copyWith(
        hintText: searchHintText,
        prefixIconConstraints: const BoxConstraints(maxHeight: 24),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: FurnitureAssets.icons.searchIcon.svg(),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: FurnitureAssets.icons.filterIcon.svg(),
        ),
        suffixIconConstraints: const BoxConstraints(maxHeight: 24),
      ),
    );
    // return ListTile(
    //   tileColor: FurnitureColors.whiteColor,
    //
    //   /// TODO: textfield all outside style should be implemented via input decoration - done
    //   shape: radius12,
    //   leading: FurnitureAssets.icons.searchIcon.svg(),
    //   title: TextField(
    //     onTapOutside: onTapOutSide,
    //     decoration: searchInputDecoration.copyWith(
    //       hintText: searchHintText,
    //       // prefix: FurnitureAssets.icons.searchIcon.svg(),
    //     ),
    //   ),
    //   trailing: FurnitureAssets.icons.filterIcon.svg(),
    // );
  }
}
