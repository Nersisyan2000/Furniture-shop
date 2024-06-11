import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:furniture_shop/data/local/discount_data/discount_data.dart';
import 'package:furniture_shop/data/local/products_data/products_data.dart';
import 'package:furniture_shop/domain/models/discount/discount_model.dart';
import 'package:furniture_shop/domain/models/products/product_model.dart';

class HomeProvider extends ChangeNotifier {
  final List<DiscountModel> _discountData = discountData;
  final List<ProductModel> _productsData = productsData;

  UnmodifiableListView<DiscountModel> get discountsData =>
      UnmodifiableListView(_discountData);

  UnmodifiableListView<ProductModel> get productData =>
      UnmodifiableListView(_productsData);
}
