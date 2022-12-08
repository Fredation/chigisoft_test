import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/core/usecases/usecase.dart';
import 'package:chigisoft_test/features/dashboard/data/models/product_model.dart';
import 'package:chigisoft_test/features/dashboard/domain/repositories/dashboard_repo.dart';
import 'package:dartz/dartz.dart';

class GetProductsUsecase extends UseCase<ProductModel, NoParams> {
  final DashboardRepo repo;

  GetProductsUsecase(this.repo);

  @override
  Future<Either<Failure, ProductModel>> call(NoParams params) async {
    return await repo.getProducts();
  }
}
