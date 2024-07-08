import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';
import 'package:injectable/injectable.dart';

part 'favourite_state.dart';

@LazySingleton()
class FavouriteCubit extends Cubit<FavouriteState> {
  // final GetFavouritesService _service;

  FavouriteCubit() : super(FavouriteInitialState());

  void fetchFavouriteData() async {
    emit(FavouriteLoadingState());
    try {
      // final data = await _service.fetchFavouriteData();
      final filteredData =
          productData.where((value) => value.isFavourite == true).toList();
      await Future.delayed(const Duration(seconds: 2));
      if (filteredData.isEmpty) {
        emit(FavouriteEmptyState());
      } else {
        emit(FavouriteLoadedState(filteredData));
      }
    } catch (e) {
      emit(FavouriteFailureState(
        e.toString(),
      ));
    }
  }

  void toggleFavourite(int index) async {
    try {
      productData[index] = productData[index]
          .copyWith(isFavourite: !(productData[index].isFavourite ?? false));
      final filteredData =
          productData.where((value) => value.isFavourite == true).toList();
      if (filteredData.isEmpty) {
        emit(FavouriteEmptyState());
      } else {
        emit(
          FavouriteLoadedState(filteredData),
        ); // List<ProductModel>.from(products)
      }
    } catch (e) {
      emit(FavouriteFailureState(
          "An error occurred while toggling favourite status."));
    }
  }
}
