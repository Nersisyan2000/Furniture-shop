// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      productName: json['productName'] as String?,
      companyName: json['companyName'] as String?,
      productSeenCount: (json['productSeenCount'] as num?)?.toInt(),
      productImg: json['productImg'] as String?,
      productLiked: (json['productLiked'] as num?)?.toInt(),
      productPrice: (json['productPrice'] as num?)?.toDouble(),
      productDescription: json['productDescription'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'companyName': instance.companyName,
      'productSeenCount': instance.productSeenCount,
      'productImg': instance.productImg,
      'productLiked': instance.productLiked,
      'productPrice': instance.productPrice,
      'productDescription': instance.productDescription,
    };
