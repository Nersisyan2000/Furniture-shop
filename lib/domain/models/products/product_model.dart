import 'package:furniture_uikit/furniture_uikit.dart';

class ProductModel {
  ProductModel({
    required this.productPrefixIcon,
    required this.productName,
    this.suffixIcon,
  });

  final SvgGenImage productPrefixIcon;
  final String productName;
  final SvgGenImage? suffixIcon;
}
