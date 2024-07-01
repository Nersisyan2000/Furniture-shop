import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/presentation/screens/home/home_screen_provider.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:provider/provider.dart';

class ProductsTemplates extends StatelessWidget {
  const ProductsTemplates({super.key});

  @override
  Widget build(BuildContext context) {
    final productTemplatesData =
        context.watch<HomeProvider>().productsTemplatesData;
    return SizedBox(
      height: 32.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: productTemplatesData.length,
        itemBuilder: (context, index) {
          return FurnitureChipElement(
            title: productTemplatesData[index].productName,
            prefixIcon: productTemplatesData[index].productPrefixIcon,
          ).paddingOnly(right: 12.w);
        },
      ),
    ).paddingSymmetric(vertical: 24.h);
  }
}
