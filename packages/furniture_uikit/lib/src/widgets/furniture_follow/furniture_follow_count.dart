import 'package:flutter/material.dart';

import '../../theme/furniture_text_styles.dart';

class FurnitureFollowCount extends StatefulWidget {
  const FurnitureFollowCount({
    super.key,
    required this.icon,
    required this.count,
    required this.text,
  });

  final Widget icon;
  final int count;
  final String text;

  @override
  State<FurnitureFollowCount> createState() => _FurnitureFollowCountState();
}

class _FurnitureFollowCountState extends State<FurnitureFollowCount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.icon,
        Text(
          '${widget.count} ${widget.text}',
          style: switzer13w4TextStyle,
        )
      ],
    );
  }
}
