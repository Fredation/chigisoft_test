import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/features/dashboard/data/datasources/dashboard_ds.dart';
import 'package:chigisoft_test/features/dashboard/data/models/product_model.dart';
import 'package:chigisoft_test/features/dashboard/domain/repositories/dashboard_repo.dart';
import 'package:dartz/dartz.dart';

class DashboardRepoImpl extends DashboardRepo {
  final DashboardDS remoteDataSource;
  DashboardRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, ProductModel>> getProducts() async {
    try {
      final response = await remoteDataSource.getAllProducts();
      return Right(response);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
