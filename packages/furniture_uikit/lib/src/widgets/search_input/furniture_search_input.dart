import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
// import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_input_decorations.dart';

import '../../theme/furniture_dimensions.dart';

class FurnitureSearchInput extends StatelessWidget {
  const FurnitureSearchInput({
    super.key,
    required this.searchHintText,
    this.onTapOutSide,
    this.onNavigateSearch,
    this.onNavigateFilter,
  });

  final String searchHintText;
  final Function(PointerDownEvent)? onTapOutSide;
  final VoidCallback? onNavigateFilter;
  final VoidCallback? onNavigateSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: onTapOutSide,
      decoration: searchInputDecoration.copyWith(
        hintText: searchHintText,
        prefixIconConstraints: boxConstraintsH24,
        prefixIcon: InkWell(
          onTap: onNavigateSearch,
          child: Padding(
            padding: paddingH16,
            child: FurnitureAssets.icons.searchIcon.svg(),
          ),
        ),
        suffixIcon: InkWell(
          onTap: onNavigateFilter,
          child: Padding(
            padding: paddingH16,
            child: FurnitureAssets.icons.filterIcon.svg(),
          ),
        ),
        suffixIconConstraints: boxConstraintsH24,
      ),
    );
  }
}
