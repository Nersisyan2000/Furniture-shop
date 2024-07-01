import 'package:bloc/bloc.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/popular/popular_cubit/popular_state.dart';

class PopularCubit extends Cubit<PopularState> {
  PopularCubit() : super(PopularInitialState());

  void fetchPopularData() async {
    emit(PopularLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));
      if (productData.isEmpty) {
        emit(PopularEmptyState());
      } else {
        emit(
          PopularLoadedState(
              productData.where((value) => value.productLiked! > 300).toList()),
        );
      }
    } catch (e) {
      emit(PopularFailureState(e.toString()));
    }
  }
}
