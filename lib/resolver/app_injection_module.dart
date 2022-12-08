import 'dart:async';

import 'package:chigisoft_test/core/abstractions/injection_module.dart';
import 'package:chigisoft_test/core/model/build_config.dart';
import 'package:chigisoft_test/core/network/api.dart';
import 'package:chigisoft_test/core/storage/storage.dart';
import 'package:chigisoft_test/features/dashboard/data/datasources/dashboard_ds.dart';
import 'package:chigisoft_test/features/dashboard/data/repositories/dashboard_repo_impl.dart';
import 'package:chigisoft_test/features/dashboard/domain/repositories/dashboard_repo.dart';
import 'package:chigisoft_test/features/dashboard/domain/usecases/get_products_usecase.dart';
import 'package:chigisoft_test/features/dashboard/presentation/states/dashboard_cubit.dart';
import 'package:chigisoft_test/features/onboarding/data/datasources/onboarding_ds.dart';
import 'package:chigisoft_test/features/onboarding/data/repositories/onboarding_repo_impl.dart';
import 'package:chigisoft_test/features/onboarding/domain/repositories/onboarding_repo.dart';
import 'package:chigisoft_test/features/onboarding/domain/usecases/login_usecase.dart';
import 'package:chigisoft_test/features/onboarding/presentation/states/onboarding_cubit.dart';
import 'package:get_it/get_it.dart';

class AppInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies(
      {required GetIt injector, required BuildConfig buildConfig}) {
    injector.registerLazySingleton<Storage>(() => StorageImpl());

    injector.registerLazySingleton(() => Api(buildConfig: buildConfig));

    // Features
    injector.registerFactory(
      () => OnboardingCubit(
        loginUsecase: injector.get(),
      ),
    );

    injector.registerFactory(
      () => DashboardCubit(
        getProductsUsecase: injector.get(),
      ),
    );

    // UseCases
    injector.registerLazySingleton(() => LoginUsecase(injector()));
    injector.registerLazySingleton(() => GetProductsUsecase(injector()));

    // Repository
    injector.registerLazySingleton<OnboardingRepo>(
      () => OnboardingRepoImpl(remoteDataSource: injector()),
    );
    injector.registerLazySingleton<DashboardRepo>(
      () => DashboardRepoImpl(remoteDataSource: injector()),
    );

    // Data sources
    injector.registerLazySingleton<OnboardingDS>(
      () => OnboardingDSImpl(api: injector(), storage: injector()),
    );
    injector.registerLazySingleton<DashboardDS>(
      () => DashboardDSImpl(api: injector(), storage: injector()),
    );

    // injector.registerFactory(() => null);
  }
}
