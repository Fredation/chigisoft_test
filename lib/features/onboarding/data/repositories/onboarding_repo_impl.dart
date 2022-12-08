import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/features/onboarding/data/datasources/onboarding_ds.dart';
import 'package:chigisoft_test/features/onboarding/domain/entities/user.dart';
import 'package:chigisoft_test/features/onboarding/domain/repositories/onboarding_repo.dart';
import 'package:dartz/dartz.dart';

class OnboardingRepoImpl extends OnboardingRepo {
  final OnboardingDS remoteDataSource;
  OnboardingRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, User>> login(data) async {
    try {
      final response = await remoteDataSource.login(data);
      return Right(response);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
