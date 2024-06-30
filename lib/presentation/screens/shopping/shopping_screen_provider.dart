import 'dart:collection';

import 'package:flutter/material.dart';


import '../../../data/local/shopping_product_data/shopping_product_data.dart';
import '../../../domain/models/shopping_product/shopping_product_model.dart';

class ShoppingProvider extends ChangeNotifier {
  final List<ShoppingProductModel> _shoppingProductsData = shoppingProductData;

  UnmodifiableListView<ShoppingProductModel> get shoppingProductsData =>
      UnmodifiableListView(_shoppingProductsData);
}