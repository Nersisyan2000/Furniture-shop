import 'package:flutter/material.dart';

import '../../theme/furniture_text_styles.dart';

class FurnitureFollowCount extends StatefulWidget {
  const FurnitureFollowCount({
    super.key,
    required this.icon,
    required this.text,
  });

  final Icon icon;
  final String text;

  @override
  State<FurnitureFollowCount> createState() => _FurnitureFollowCountState();
}

class _FurnitureFollowCountState extends State<FurnitureFollowCount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon as IconData?),
        Text(
          widget.text,
          style: switzer13w4TextStyle,
        )
      ],
    );
  }
}
