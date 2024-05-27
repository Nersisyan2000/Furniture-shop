import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';
import 'package:furniture_uikit/src/theme/furniture_text_styles.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsRaiting extends StatelessWidget {
  const ReviewsRaiting(
      {super.key, required this.raiting, required this.reviewCount});

  final double raiting;
  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$raiting',
          style: switzer32MediumTextStyle,
        ),
        Padding(
          padding: paddingV8,
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: paddingH4,
            unratedColor: FurnitureColors.unratedColor,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: FurnitureColors.amber,
            ),
            itemSize: 20.0,
            onRatingUpdate: (rating) {
              debugPrint('$rating');
            },
          ),
        ),
        const Text('reviewsCount')
            .tr(namedArgs: {'reviewCount': '$reviewCount'}),
      ],
    );
  }
}
