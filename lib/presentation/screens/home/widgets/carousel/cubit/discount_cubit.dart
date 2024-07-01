// ignore_for_file: unused_field
import 'package:bloc/bloc.dart';
import 'package:furniture_shop/data/local/discount_data/discount_data.dart';
// import 'package:furniture_shop/data/services/discount_service.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/carousel/cubit/discount_state.dart';

class DiscountCubit extends Cubit<DiscountState> {
  // final GetDiscountsService _service;

  DiscountCubit() : super(DiscountInitial());

  void fetchDiscountData() async {
    emit(DiscountLoading());
    try {
      // final data = await _service.fetchDiscountData();
      await Future.delayed(const Duration(seconds: 2));
      if (discountData.isEmpty) {
        emit(DiscountEmpty());
      } else {
        emit(DiscountLoaded(discountData));
      }
    } catch (e) {
      emit(DiscountFailure(e.toString()));
    }
  }
}
