import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FurnitureReviewsRaiting extends StatelessWidget {
  const FurnitureReviewsRaiting({super.key, this.raiting, this.reviewCount});

  final double? raiting;
  final int? reviewCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (raiting != null)
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
        if (reviewCount != null)
          const Text('reviewsCount')
              .tr(namedArgs: {'reviewCount': '$reviewCount'}),
      ],
    );
  }
}
