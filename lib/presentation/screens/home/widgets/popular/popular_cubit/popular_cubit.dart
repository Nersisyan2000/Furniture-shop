import 'package:bloc/bloc.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/popular/popular_cubit/popular_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class PopularCubit extends Cubit<PopularState> {
  PopularCubit() : super(PopularInitialState());

  void fetchPopularData() async {
    emit(PopularLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));
      final filteredData =
          productData.where((value) => value.productLiked! > 200).toList();
      if (filteredData.isEmpty) {
        emit(PopularEmptyState());
      } else {
        emit(
          PopularLoadedState(filteredData),
        );
      }
    } catch (e) {
      emit(PopularFailureState(e.toString()));
    }
  }
}
