part of 'favourite_cubit.dart';

abstract class FavouriteState extends Equatable {
  @override
  List<Object?> get props => [];
}

class FavouriteInitialState extends FavouriteState {}

class FavouriteLoadingState extends FavouriteState {}

class FavouriteLoadedState extends FavouriteState {
  final List<ProductModel> favouriteData;

  FavouriteLoadedState(this.favouriteData);

  @override
  List<List<ProductModel>> get props => [favouriteData];
}

class FavouriteEmptyState extends FavouriteState {}

class FavouriteFailureState extends FavouriteState {
  final String message;

  FavouriteFailureState(this.message);

  @override
  List<String> get props => [message];
}
