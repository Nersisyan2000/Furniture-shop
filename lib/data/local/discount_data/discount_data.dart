import 'package:furniture_shop/domain/models/discount/discount_model.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

List<DiscountModel> discountData = [
  DiscountModel(
      id: '1',
      discount: 24,
      discountInfo: 'For a cozy yellow set!',
      discountImg: FurnitureAssets.images.discountImg.keyName),
  DiscountModel(
      id: '2',
      discount: 15,
      discountInfo: 'For a cozy green set!',
      discountImg: FurnitureAssets.images.discountImg.keyName),
  DiscountModel(
      id: '3',
      discount: 10,
      discountInfo: 'For a cozy purple set!',
      discountImg: FurnitureAssets.images.discountImg.keyName),
];
