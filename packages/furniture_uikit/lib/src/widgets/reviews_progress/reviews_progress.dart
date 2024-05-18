import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class ReviewsProgress extends StatelessWidget {
  const ReviewsProgress({super.key, required this.percentValue});

  final double percentValue;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: paddingV8,
          child: Row(
            children: [
              Text(
                'stars',
                style: switzer12RegularTextStyle,
              ).tr(namedArgs: {'starNumber': '${5 - index}'}),
              LinearPercentIndicator(
                width: 113.0,
                lineHeight: 11.0,
                barRadius: radiusCircular4,
                percent: percentValue,
                backgroundColor: FurnitureColors.buttonShapeColor,
                progressColor: FurnitureColors.primaryColor,
              ),
              Text(
                '${(percentValue * 100).toInt()}%',
                style: switzer12RegularTextStyle,
              ),
            ],
          ),
        );
      },
      shrinkWrap: true,
    );
  }
}
