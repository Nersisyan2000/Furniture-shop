import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    String? productName,
    String? companyName,
    int? productSeenCount,
    String? productImg,
    int? productLiked,
    double? productPrice,
    String? productDescription,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
