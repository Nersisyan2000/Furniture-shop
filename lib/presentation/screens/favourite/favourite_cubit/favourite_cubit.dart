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

  void toggleFavourite(String id) async {
    if (state is FavouriteLoadedState) {
      try {
        // var data = productData.where((element) => element.id == id).first;
        // data = data.copyWith(isFavourite: !(data.isFavourite ?? false));

        final filteredData =
            (state as FavouriteLoadedState).favouriteData.map((e) {
          if (e.id == id) {
            return e.copyWith(isFavourite: !(e.isFavourite ?? false));
          }
          return e;
        }).toList();
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
}
