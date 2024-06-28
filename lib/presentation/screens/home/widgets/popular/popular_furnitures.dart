import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/widgets/furniture_packed_card.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class PopularFurnitures extends StatelessWidget {
  const PopularFurnitures({super.key});

  Widget _headerSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.tr(
            Localization.popular,
          ),
          style: switzer16SemiboldTextStyle,
        ),
        FurnitureTextButton(
          title: context.tr(Localization.viewAll),
          color: FurnitureColors.priceColor,
          onTap: () => context.router.push(
            const PopularRoute(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _headerSection(context),
        SizedBox(
          height: 114.h,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const FurniturePackedCard(
                imageUrl:
                    'https://i.pinimg.com/originals/4d/76/4c/4d764cb0c947632623f9026210f4f2f6.png',
                title: 'Swoon Lounge',
                subTitle: 'Regal Do Lobo',
                price: 136.79,
              ).paddingOnly(
                right: 8.w,
              );
            },
          ),
        ),
      ],
    );
  }
}
