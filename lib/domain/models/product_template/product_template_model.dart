import 'package:furniture_uikit/furniture_uikit.dart';

class ProductTemplatesModel {
  ProductTemplatesModel({
    required this.productPrefixIcon,
    required this.productName,
    this.suffixIcon,
  });

  final SvgGenImage productPrefixIcon;
  final String productName;
  final SvgGenImage? suffixIcon;
}
