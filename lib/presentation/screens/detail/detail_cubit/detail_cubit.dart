import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniture_shop/data/local/detail_item_data/detail_item_data.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit()
      : super(
          DetailInitial(),
        );

  void fetchDetailItem() async {
    emit(
      DetailLoading(),
    );
    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(
        DetailLoaded(
          detailItem,
        ),
      );
    } catch (e) {
      emit(
        DetailFailure(
          e.toString(),
        ),
      );
    }
  }
}
