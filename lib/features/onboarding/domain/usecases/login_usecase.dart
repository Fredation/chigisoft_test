import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/core/usecases/usecase.dart';
import 'package:chigisoft_test/features/onboarding/domain/entities/user.dart';
import 'package:chigisoft_test/features/onboarding/domain/repositories/onboarding_repo.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase extends UseCase<User, LoginParams> {
  final OnboardingRepo repository;

  LoginUsecase(this.repository);

  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return await repository.login({
      'username': params.username,
      'password': params.password,
    });
  }
}

class LoginParams {
  final String username;
  final String password;

  LoginParams({
    required this.username,
    required this.password,
  });
}
