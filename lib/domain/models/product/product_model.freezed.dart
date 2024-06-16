// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String? get productName => throw _privateConstructorUsedError;
  int? get productSeenCount => throw _privateConstructorUsedError;
  dynamic get productImg => throw _privateConstructorUsedError;
  int? get productLiked => throw _privateConstructorUsedError;
  double? get productPrice => throw _privateConstructorUsedError;
  String? get productDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String? productName,
      int? productSeenCount,
      dynamic productImg,
      int? productLiked,
      double? productPrice,
      String? productDescription});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? productSeenCount = freezed,
    Object? productImg = freezed,
    Object? productLiked = freezed,
    Object? productPrice = freezed,
    Object? productDescription = freezed,
  }) {
    return _then(_value.copyWith(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSeenCount: freezed == productSeenCount
          ? _value.productSeenCount
          : productSeenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productImg: freezed == productImg
          ? _value.productImg
          : productImg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productLiked: freezed == productLiked
          ? _value.productLiked
          : productLiked // ignore: cast_nullable_to_non_nullable
              as int?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productName,
      int? productSeenCount,
      dynamic productImg,
      int? productLiked,
      double? productPrice,
      String? productDescription});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? productSeenCount = freezed,
    Object? productImg = freezed,
    Object? productLiked = freezed,
    Object? productPrice = freezed,
    Object? productDescription = freezed,
  }) {
    return _then(_$ProductModelImpl(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSeenCount: freezed == productSeenCount
          ? _value.productSeenCount
          : productSeenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productImg: freezed == productImg
          ? _value.productImg
          : productImg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productLiked: freezed == productLiked
          ? _value.productLiked
          : productLiked // ignore: cast_nullable_to_non_nullable
              as int?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {this.productName,
      this.productSeenCount,
      this.productImg,
      this.productLiked,
      this.productPrice,
      this.productDescription});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String? productName;
  @override
  final int? productSeenCount;
  @override
  final dynamic productImg;
  @override
  final int? productLiked;
  @override
  final double? productPrice;
  @override
  final String? productDescription;

  @override
  String toString() {
    return 'ProductModel(productName: $productName, productSeenCount: $productSeenCount, productImg: $productImg, productLiked: $productLiked, productPrice: $productPrice, productDescription: $productDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productSeenCount, productSeenCount) ||
                other.productSeenCount == productSeenCount) &&
            const DeepCollectionEquality()
                .equals(other.productImg, productImg) &&
            (identical(other.productLiked, productLiked) ||
                other.productLiked == productLiked) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productName,
      productSeenCount,
      const DeepCollectionEquality().hash(productImg),
      productLiked,
      productPrice,
      productDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {final String? productName,
      final int? productSeenCount,
      final dynamic productImg,
      final int? productLiked,
      final double? productPrice,
      final String? productDescription}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String? get productName;
  @override
  int? get productSeenCount;
  @override
  dynamic get productImg;
  @override
  int? get productLiked;
  @override
  double? get productPrice;
  @override
  String? get productDescription;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
