import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import '../../../config/routes/app_router.dart';
import 'favourite_screen_provider.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  void initState() {
    context.read<FavouriteProvider>().favouriteProductData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final favouriteProductData =
        context.watch<FavouriteProvider>().favouriteProductData;
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
            context.tr(Localization.favourite),
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(8),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            for (var id = 2; id < favouriteProductData.length; id++)
              InkWell(
                onTap: ()=> context.router.push(const ShoppingRoute()),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Card(
                          child: Container(
                            width: 156.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.all(10.0),
                                  width: 120.0,
                                  height: 110.0,
                                  child: FurnitureCachedNetworkImage(
                                    imageUrl:
                                        favouriteProductData[id].productImg,
                                    width: 110.w,
                                    height: 120.h,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      width: 50.0,
                                      height: 50.0,
                                      alignment: Alignment.center,
                                      child: FurnitureIconButton.whiteMode(
                                        icon: FurnitureAssets.icons.hearthIcon
                                            .svg(
                                          color: Colors.black,
                                        ),
                                        onTap: () {},
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${favouriteProductData[id].productName}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: switzer16MediumTextStyle,
                          ),
                          Text(
                            "\$ ${favouriteProductData[id].productPrice}",
                            // overflow: TextOverflow.ellipsis,
                            style: switzer16MediumTextStyle.copyWith(
                                color: FurnitureColors.priceColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
