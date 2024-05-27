import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';

class ReviewsProgress extends StatelessWidget {
  const ReviewsProgress({super.key, required this.percentValue});

  final List<int> percentValue;

  @override
  Widget build(BuildContext context) {
    final summery = percentValue.reduce((value, element) => value+element);

    return ListView.builder(
      itemCount: percentValue.length,
      itemBuilder: (context, index) {

        final percent = (percentValue[index] * 100)/summery;

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
                percent: percent/100,
                backgroundColor: FurnitureColors.buttonShapeColor,
                progressColor: FurnitureColors.primaryColor,
              ),
              Text(
                '${percent.round()}%',
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
