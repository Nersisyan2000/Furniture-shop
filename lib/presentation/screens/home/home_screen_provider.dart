import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:furniture_shop/data/local/discount_data/discount_data.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/data/local/product_templates_data/product_templates_data.dart';
import 'package:furniture_shop/domain/models/discount/discount_model.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';
import 'package:furniture_shop/domain/models/product_template/product_template_model.dart';

class HomeProvider extends ChangeNotifier {
  final List<DiscountModel> _discountData = discountData;
  final List<ProductTemplatesModel> _productTemplatesData =
      productTemplatesData;
  final List<ProductModel> _productsData = productData;

  UnmodifiableListView<DiscountModel> get discountsData =>
      UnmodifiableListView(_discountData);

  UnmodifiableListView<ProductTemplatesModel> get productsTemplatesData =>
      UnmodifiableListView(_productTemplatesData);

  UnmodifiableListView<ProductModel> get productsData =>
      UnmodifiableListView(_productsData);
}
