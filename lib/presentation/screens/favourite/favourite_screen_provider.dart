import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<ProductModel> _favouriteProductData = productData;

  UnmodifiableListView<ProductModel> get favouriteProductData =>
      UnmodifiableListView(_favouriteProductData);
}
