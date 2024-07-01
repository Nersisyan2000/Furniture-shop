part of 'detail_cubit.dart';

abstract class DetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DetailInitial extends DetailState {}

class DetailLoading extends DetailState {}

class DetailLoaded extends DetailState {
  final ProductModel detailItem;

  DetailLoaded(this.detailItem);

  @override
  List<ProductModel> get props => [detailItem];
}

class DetailFailure extends DetailState {
  final String message;

  DetailFailure(this.message);

  @override
  List<String> get props => [message];
}
