import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:furniture_shop/data/local/discount_data/discount_data.dart';
import 'package:furniture_shop/domain/models/discount/discount_model.dart';

class HomeProvider extends ChangeNotifier {
  final List<DiscountModel> _discountData = discountData;

  UnmodifiableListView<DiscountModel> get discountsData =>
      UnmodifiableListView(_discountData);
}
