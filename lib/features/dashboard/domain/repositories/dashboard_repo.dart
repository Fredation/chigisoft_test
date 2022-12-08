import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/features/dashboard/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class DashboardRepo {
  Future<Either<Failure, ProductModel>> getProducts();
}
