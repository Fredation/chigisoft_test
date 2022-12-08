import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/features/onboarding/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class OnboardingRepo {
  Future<Either<Failure, User>> login(data);
}
