import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/presentation/widgets/furniture_flat_card.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: FurnitureAppBar(
          leading: FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.arrowBack.svg(),
            onTap: () => context.router.maybePop(),
          ),
          title: Text(
            context.tr(Localization.shopping),
            style: switzer20MediumTextStyle,
          ),
          actions: [
            FurnitureIconButton.whiteMode(
              icon: FurnitureAssets.icons.trash.svg(),
              onTap: () {},
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const FurnitureFlatCard(
                  imageUrl:
                      'https://static.vecteezy.com/system/resources/previews/011/794/197/non_2x/brown-leather-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png',
                  title: 'Minimalist Chair',
                  subTitle: 'Regal Do Lobo',
                  price: 279.95,
                ).paddingSymmetric(vertical: 8.h);
              },
            ).paddingSymmetric(horizontal: 20.w),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    24.r,
                  ), // Add radius to the top left corner
                  topRight: Radius.circular(
                    24.r,
                  ), // Add radius to the top right corner
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Order Summary',
                        style: switzer16MediumTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal',
                            style: switzer16RegularTextStyle.copyWith(
                              color: FurnitureColors.subTextColor,
                            ),
                          ),
                          Text(
                            '\$926.99',
                            style: switzer16MediumTextStyle.copyWith(
                              color: FurnitureColors.priceColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ).paddingAll(
                    24.0,
                  ),
                ),
              ),
            ).expanded(),
          ],
        ),
      ),
    );
  }
}
