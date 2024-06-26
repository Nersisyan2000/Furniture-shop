import 'package:furniture_shop/domain/models/discount/discount_model.dart';

abstract class DiscountState {}

class DiscountInitial extends DiscountState {}

class DiscountLoading extends DiscountState {}

class DiscountLoaded extends DiscountState {
  final List<DiscountModel> data;

  DiscountLoaded(this.data);
}

class DiscountFailure extends DiscountState {
  final String message;

  DiscountFailure(this.message);
}
