import 'package:equatable/equatable.dart';
import 'package:furniture_shop/domain/models/discount/discount_model.dart';

abstract class DiscountState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DiscountInitialState extends DiscountState {}

class DiscountLoadingState extends DiscountState {}

class DiscountLoadedState extends DiscountState {
  final List<DiscountModel> data;

  DiscountLoadedState(this.data);

  @override
  List<List<DiscountModel>> get props => [data];
}

class DiscountEmptyState extends DiscountState {}

class DiscountFailureState extends DiscountState {
  final String message;

  DiscountFailureState(this.message);

  @override
  List<String> get props => [message];
}
