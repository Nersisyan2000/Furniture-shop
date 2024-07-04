import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class AmountWidget extends StatefulWidget {
  const AmountWidget(
      {super.key, required this.prince, required this.princeName});

  final String princeName;
  final double prince;

  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}

class _AmountWidgetState extends State<AmountWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.princeName,
          style: switzer16RegularTextStyle,
        ),
        Text(
          "\$${widget.prince}",
          style: switzer16RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor),
        ),
      ],
    );
  }
}
