import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

class FurnitureChipElement extends StatelessWidget {
  const FurnitureChipElement({
    super.key,
    required this.title,
    this.backgroundColor,
    this.color,
    this.suffixIcon,
    this.prefixIcon,
  });

  final String title;
  final Color? backgroundColor;
  final Color? color;
  final IconData? suffixIcon;
  final SvgGenImage? prefixIcon;

  Widget _chipSuffixIcon(IconData? icon) {
    if (icon != null) {
      return Icon(
        icon,
        size: 16.0,
      );
    }
    return const SizedBox.shrink();
  }

  Widget _prefixIcon(SvgGenImage? icon) {
    if (icon != null) {
      return icon.svg(color: Colors.black);
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: radius10Circular,
        color: Colors.white,
      ),
      child: Padding(
        padding: paddingH12V8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            _prefixIcon(prefixIcon),
            Padding(
              padding: paddingH8,
              child: Text(title),
            ),
            _chipSuffixIcon(suffixIcon),
          ],
        ),
      ),
    );
  }
}
