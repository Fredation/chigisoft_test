import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/core/usecases/usecase.dart';
import 'package:chigisoft_test/features/dashboard/data/models/product_model.dart';
import 'package:chigisoft_test/features/dashboard/domain/usecases/get_products_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardCubitState> {
  final GetProductsUsecase getProductsUsecase;

  DashboardCubit({
    required this.getProductsUsecase,
  }) : super(const DashboardCubitState());

  List<Product>? _products;
  List<Product>? get products => _products;

  List<Product>? myProducts;

  Future<void> getProducts() async {
    emit(state.copyWith(isLoading: true));

    final response = await getProductsUsecase.call(NoParams());

    response.fold((l) {
      emit(state.copyWith(isLoading: false, error: l, data: null));
    }, (r) {
      _products = r.products;
      myProducts = r.products.sublist(1, 7);
      emit(state.copyWith(isLoading: false, data: r, error: null));
    });
  }
}

@freezed
abstract class DashboardCubitState with _$DashboardCubitState {
  const factory DashboardCubitState({
    @Default(false) bool isLoading,
    Failure? error,
    dynamic data,
  }) = _DashboardCubitState;
}
