part of 'shopping_cubit.dart';

abstract class ShoppingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ShoppingInitialState extends ShoppingState {}

class ShoppingLoadingState extends ShoppingState {}

class ShoppingLoadedState extends ShoppingState {
  final List<ProductModel> shoppingData;

  ShoppingLoadedState(this.shoppingData);

  @override
  List<List<ProductModel>> get props => [shoppingData];
}

class ShoppingEmptyState extends ShoppingState {}

class ShoppingFailureState extends ShoppingState {
  final String message;

  ShoppingFailureState(this.message);

  @override
  List<String> get props => [message];
}
