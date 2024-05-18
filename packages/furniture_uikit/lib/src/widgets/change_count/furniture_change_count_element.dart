import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class FurnitureChangeCountElement extends StatefulWidget {
  const FurnitureChangeCountElement({
    super.key,
    required this.count,
  });

  final int count;

  @override
  State<FurnitureChangeCountElement> createState() =>
      _FurnitureChangeCountElementState();
}

class _FurnitureChangeCountElementState
    extends State<FurnitureChangeCountElement> {
  late int localCount;

  @override
  void initState() {
    localCount = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FurnitureIconButton.whiteMode(
          onTap: () {
            if (localCount > 0) {
              setState(() {
                localCount--;
              });
            }
          },
          icon: FurnitureAssets.icons.minusIcon.svg(),
          mode: true,
          width: 22.0,
          height: 22.0,
        ),
        10.horizontalSpace,
        Text(
          '$localCount',
          style: switzer14RegularTextStyle,
        ),
        10.horizontalSpace,
        FurnitureIconButton(
          onTap: () {
            setState(() {
              localCount++;
            });
          },
          icon: FurnitureAssets.icons.plusIcon.svg(),
          mode: true,
          width: 22.0,
          height: 22.0,
        ),
      ],
    );
  }
}
