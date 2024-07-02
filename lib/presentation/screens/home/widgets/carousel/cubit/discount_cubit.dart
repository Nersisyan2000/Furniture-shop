// ignore_for_file: unused_field
import 'package:bloc/bloc.dart';
import 'package:furniture_shop/data/local/discount_data/discount_data.dart';
// import 'package:furniture_shop/data/services/discount_service.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/carousel/cubit/discount_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class DiscountCubit extends Cubit<DiscountState> {
  // final GetDiscountsService _service;

  DiscountCubit() : super(DiscountInitialState());

  void fetchDiscountData() async {
    emit(DiscountLoadingState());
    try {
      // final data = await _service.fetchDiscountData();
      await Future.delayed(const Duration(seconds: 2));
      if (discountData.isEmpty) {
        emit(DiscountEmptyState());
      } else {
        emit(DiscountLoadedState(discountData));
      }
    } catch (e) {
      emit(DiscountFailureState(e.toString()));
    }
  }
}
