class ShoppingProductModel {
  ShoppingProductModel({
    required this.id,
    required this.productImg,
    required this.productName,
    required this.companyName,
    required this.productPrice,
    required this.count,
  });

  final String id;
  final String productImg;
  final String productName;
  final String companyName;
  final double? productPrice;
  final int count;
}
