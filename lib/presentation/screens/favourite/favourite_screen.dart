import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'favourite_screen_provider.dart';

@RoutePage()
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> model = [1, 2, 3, 4];

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
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            // for(var i in productData)
            for (var id = 2; id < favouriteProductData.length; id++)
              InkWell(
                onTap: () {},
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // AssetImage(favouriteProductData[id].productImg),
                            //  FurnitureCachedNetworkImage(imageUrl: FurnitureAssets.images.armchairImg),
                            FurnitureCachedNetworkImage(
                              imageUrl:'https://i.pinimg.com/originals/4d/76/4c/4d764cb0c947632623f9026210f4f2f6.png',
                              width: 110.w,
                              height: 120.h,
                            ),
                            Text(
                              '${favouriteProductData[id].productName}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: switzer16SemiboldTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "${favouriteProductData[id].productName}",
                        style: switzer14MediumTextStyle,
                      ),
                      Text(
                        "${favouriteProductData[id].productPrice}",
                        style: switzer14MediumTextStyle,
                      ),
                    ],
                  ),
                ),

                // Column(
                //   // crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Text(
                //       "${favouriteProductData[id].productName}",
                //       style: switzer14MediumTextStyle,
                //     ),
                //   ],
                // ),
              ),
          ],
        ),
      ),
    );
  }
}
