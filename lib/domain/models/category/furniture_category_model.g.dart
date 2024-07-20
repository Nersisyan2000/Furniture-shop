// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furniture_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FurnitureCategoryModelImpl _$$FurnitureCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FurnitureCategoryModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      availableQuantity: (json['availableQuantity'] as num?)?.toInt(),
      pictureUrl: json['pictureUrl'] as String?,
    );

Map<String, dynamic> _$$FurnitureCategoryModelImplToJson(
        _$FurnitureCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'availableQuantity': instance.availableQuantity,
      'pictureUrl': instance.pictureUrl,
    };
