import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniture_shop/data/local/procucts/products_data.dart';
import 'package:furniture_shop/domain/models/product/product_model.dart';
import 'package:injectable/injectable.dart';

part 'detail_state.dart';

@injectable
class DetailCubit extends Cubit<DetailState> {
  DetailCubit()
      : super(
          DetailInitial(),
        );

  void fetchDetailItem(String id) async {
    emit(
      DetailLoading(),
    );
    try {
      await Future.delayed(const Duration(seconds: 2));
      final filteredDataById =
          productData.where((product) => product.id == id).toList();
      emit(
        DetailLoaded(
          filteredDataById[0],
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
