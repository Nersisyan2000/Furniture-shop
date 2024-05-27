import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class FurnitureChangeCountElement extends StatefulWidget {
  const FurnitureChangeCountElement({
    super.key,
    required this.count,
    required this.minCount,
    required this.maxCount,
    required this.onChange,
  });

  final int count;
  final int minCount;
  final int maxCount;
  final ValueChanged<int>? onChange;

  @override
  State<FurnitureChangeCountElement> createState() =>
      _FurnitureChangeCountElementState();
}

class _FurnitureChangeCountElementState
    extends State<FurnitureChangeCountElement> {
  late int localCount;

  // widget.onChanged?.call(localCount);

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
          // desable: localCount == widget.minCount ? true : false,
          onTap: localCount != widget.minCount ? () {
            if (localCount > widget.minCount) {
              setState(() {
                localCount--;
              });
            }
            widget.onChange?.call(localCount);
          } : null,
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
            if (localCount < widget.maxCount) {
              setState(() {
                localCount++;
              });
              widget.onChange?.call(localCount);
            }
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
