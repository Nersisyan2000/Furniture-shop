import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class FurnitureChangeCountElement extends StatelessWidget {
  const FurnitureChangeCountElement({super.key, this.count});

  final int? count;

  @override
  Widget build(BuildContext context) {
    /// TODO: - Create VoidCallBack type properties for methods
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FurnitureIconButton.whiteMode(
          onTap: () {}, /// - this
          icon: FurnitureAssets.icons.minusIcon.svg(),
          mode: true,
          width: 22.0,
          height: 22.0,
        ),
        10.horizontalSpace,
        Text(
          '${count ?? 0}',
          style: switzer14RegularTextStyle,
        ),
        10.horizontalSpace,
        FurnitureIconButton(
          onTap: () {}, /// - this
          icon: FurnitureAssets.icons.plusIcon.svg(),
          mode: true,
          width: 22.0,
          height: 22.0,
        ),
      ],
    );
  }
}
