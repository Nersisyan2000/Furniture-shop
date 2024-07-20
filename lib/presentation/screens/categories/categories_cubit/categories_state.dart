part of 'categories_cubit.dart';

abstract class CategoriesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CategoriesInitialState extends CategoriesState {}

class CategoriesLoadingState extends CategoriesState {}

class CategoriesLoadedState extends CategoriesState {
  final List<FurnitureCategoryModel> categoriesData;

  CategoriesLoadedState(this.categoriesData);

  @override
  List<List<FurnitureCategoryModel>> get props => [categoriesData];
}

class CategoriesEmptyState extends CategoriesState {}

class CategoriesFailureState extends CategoriesState {
  final String message;

  CategoriesFailureState(this.message);

  @override
  List<String> get props => [message];
}
