// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      productName: json['productName'] as String?,
      productSeenCount: (json['productSeenCount'] as num?)?.toInt(),
      productImg: json['productImg'],
      productLiked: (json['productLiked'] as num?)?.toInt(),
      productPrice: (json['productPrice'] as num?)?.toDouble(),
      productDescription: json['productDescription'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productSeenCount': instance.productSeenCount,
      'productImg': instance.productImg,
      'productLiked': instance.productLiked,
      'productPrice': instance.productPrice,
      'productDescription': instance.productDescription,
    };
