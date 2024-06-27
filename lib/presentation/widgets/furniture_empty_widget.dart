import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureEmptyWidget extends StatelessWidget {
  const FurnitureEmptyWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FurnitureCachedNetworkImage(
            imageUrl:
                'https://cdn.iconscout.com/icon/premium/png-256-thumb/empty-folder-1519007-1284948.png',
          ),
          Text(
            context.tr(Localization.noDataAvailable),
          ),
        ],
      ),
    );
  }
}
