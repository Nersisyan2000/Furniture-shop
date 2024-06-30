import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/screens/shopping/shopping_screen_provider.dart';
import 'package:furniture_shop/presentation/screens/shopping/widgets/order_summary.dart';
import 'package:furniture_shop/presentation/screens/shopping/widgets/product_card.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shoppingProductsData =
        context.watch<ShoppingProvider>().shoppingProductsData;
    return Scaffold(
      appBar: AppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () {},
        ),
        backgroundColor: FurnitureColors.whiteBackground,
        actions: [
          FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.hearthIcon.svg(
              color: Colors.black,
            ),
            onTap: () {},
          )
        ],
        title: Center(
          child: Text(
            context.tr(Localization.shopping),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  for (var shoppingData in shoppingProductsData)
                    ShoppingProductCard(
                      imageUrl: shoppingData.productImg,
                      title: shoppingData.productName,
                      subTitle: shoppingData.companyName,
                      price: shoppingData.productPrice,
                      count: shoppingData.count,
                    ).paddingSymmetric(vertical: 8.0),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const OrderSummary(),
                  FurnitureElevatedButton(
                    onTap: () {},
                    title: context.tr(Localization.checkOut),
                  ).paddingAll(10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
