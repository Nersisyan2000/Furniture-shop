import 'package:equatable/equatable.dart';
import 'package:furniture_shop/domain/models/discount/discount_model.dart';

abstract class DiscountState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DiscountInitial extends DiscountState {}

class DiscountLoading extends DiscountState {}

class DiscountLoaded extends DiscountState {
  final List<DiscountModel> data;

  DiscountLoaded(this.data);

  @override
  List<List<DiscountModel>> get props => [data];
}

class DiscountEmpty extends DiscountState {}

class DiscountFailure extends DiscountState {
  final String message;

  DiscountFailure(this.message);

  @override
  List<String> get props => [message];
}
