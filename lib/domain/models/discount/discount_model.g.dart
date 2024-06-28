// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      id: json['id'] as String,
      discount: (json['discount'] as num).toInt(),
      discountInfo: json['discountInfo'] as String,
      discountImg: json['discountImg'] as String,
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'discountInfo': instance.discountInfo,
      'discountImg': instance.discountImg,
    };
