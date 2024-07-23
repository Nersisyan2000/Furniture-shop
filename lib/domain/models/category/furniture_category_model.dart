import 'package:freezed_annotation/freezed_annotation.dart';

part 'furniture_category_model.freezed.dart';
part 'furniture_category_model.g.dart';

@freezed
class FurnitureCategoryModel with _$FurnitureCategoryModel {
  const factory FurnitureCategoryModel({
    String? id,
    String? name,
    int? availableQuantity,
    String? pictureUrl,
  }) = _FurnitureCategoryModel;

  factory FurnitureCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$FurnitureCategoryModelFromJson(json);
}
