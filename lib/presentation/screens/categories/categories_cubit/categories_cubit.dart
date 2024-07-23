import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/local/category_data/category_data.dart';
import 'package:furniture_shop/domain/models/category/furniture_category_model.dart';
import 'package:injectable/injectable.dart';

part 'categories_state.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitialState());

  Future<void> fetchCategories() async {
    emit(CategoriesLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));
      if (categoryData.isEmpty) {
        emit(CategoriesEmptyState());
      } else {
        emit(CategoriesLoadedState(categoryData));
      }
    } catch (e) {
      emit(CategoriesFailureState(e.toString()));
    }
  }
}
