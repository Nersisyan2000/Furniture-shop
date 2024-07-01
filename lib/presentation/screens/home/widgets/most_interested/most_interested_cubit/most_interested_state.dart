import 'package:equatable/equatable.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';

abstract class MostInterestedState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MostInterestedInitialState extends MostInterestedState {}

class MostInterestedLoadingState extends MostInterestedState {}

class MostInterestedLoadedState extends MostInterestedState {
  final List<ProductModel> mostInterestedData;

  MostInterestedLoadedState(this.mostInterestedData);

  @override
  List<List<ProductModel>> get props => [mostInterestedData];
}

class MostInterestedEmptyState extends MostInterestedState {}

class MostInterestedFailureState extends MostInterestedState {
  final String message;

  MostInterestedFailureState(this.message);

  @override
  List<String> get props => [message];
}
