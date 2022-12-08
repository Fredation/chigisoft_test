import 'package:chigisoft_test/core/error/failure.dart';
import 'package:chigisoft_test/features/onboarding/domain/entities/user.dart';
import 'package:chigisoft_test/features/onboarding/domain/usecases/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingCubitState> {
  final LoginUsecase loginUsecase;

  OnboardingCubit({
    required this.loginUsecase,
  }) : super(const OnboardingCubitState());

  User? loggedUser;

  Future<void> login({
    required String username,
    required String password,
  }) async {
    emit(state.copyWith(isLoading: true));

    final login = await loginUsecase
        .call(LoginParams(username: username, password: password));

    login.fold((l) {
      emit(state.copyWith(isLoading: false, error: l, data: null));
    }, (r) {
      loggedUser = r;
      emit(state.copyWith(isLoading: false, user: r, error: null));
    });
  }
}

@freezed
abstract class OnboardingCubitState with _$OnboardingCubitState {
  const factory OnboardingCubitState({
    @Default(false) bool isLoading,
    Failure? error,
    User? user,
    dynamic data,
  }) = _OnboardingCubitState;
}
