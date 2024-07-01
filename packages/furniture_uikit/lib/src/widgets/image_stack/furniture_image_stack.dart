import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureImageStack extends StatelessWidget {
  const FurnitureImageStack({super.key, required this.imageList});

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return ImageStack(
      imageList: imageList,
      totalCount: imageList.length,
      imageRadius: 35,
      imageCount: 2,
      imageBorderWidth: 2,
      imageBorderColor: FurnitureColors.whiteColor,
      backgroundColor: FurnitureColors.primaryColor,
      extraCountTextStyle: switzer11RegularTextStyle.copyWith(
        color: FurnitureColors.whiteColor,
      ),
    );
  }
}
