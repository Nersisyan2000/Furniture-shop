import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';
import 'package:injectable/injectable.dart';

part 'shopping_state.dart';

@LazySingleton()
class ShoppingCubit extends Cubit<ShoppingState> {
  ShoppingCubit() : super(ShoppingInitialState());

  void fetchShoppingData() async {
    emit(ShoppingLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));
      if (productData.isEmpty) {
        emit(ShoppingEmptyState());
      } else {
        emit(ShoppingLoadedState(productData));
      }
    } catch (e) {
      emit(ShoppingFailureState(e.toString()));
    }
  }
}
