import 'package:equatable/equatable.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';

abstract class PopularState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PopularInitialState extends PopularState {}

class PopularLoadingState extends PopularState {}

class PopularLoadedState extends PopularState {
  final List<ProductModel> popularData;

  PopularLoadedState(this.popularData);

  @override
  List<List<ProductModel>> get props => [popularData];
}

class PopularEmptyState extends PopularState {}

class PopularFailureState extends PopularState {
  final String message;

  PopularFailureState(this.message);

  @override
  List<String> get props => [message];
}
