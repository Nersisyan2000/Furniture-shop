import 'package:bloc/bloc.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/most_interested/most_interested_cubit/most_interested_state.dart';

class MostInterestedCubit extends Cubit<MostInterestedState> {
  MostInterestedCubit() : super(MostInterestedInitialState());

  void fetchMostInterestedData() async {
    emit(MostInterestedLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));
      if (productData.isEmpty) {
        emit(MostInterestedEmptyState());
      } else {
        emit(
          MostInterestedLoadedState(productData
              .where((value) => value.productSeenCount! > 300)
              .toList()),
        );
      }
    } catch (e) {
      emit(MostInterestedFailureState(e.toString()));
    }
  }
}
