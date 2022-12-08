import 'package:chigisoft_test/features/dashboard/presentation/states/dashboard_cubit.dart';
import 'package:chigisoft_test/features/onboarding/presentation/states/onboarding_cubit.dart';
import 'package:get_it/get_it.dart';

import 'cubit_states.dart';

export 'package:flutter_bloc/src/bloc_provider.dart';

getProviders(GetIt instance) {
  // return [];
  return <BlocProviderSingleChildWidget>[
    BlocProvider<OnboardingCubit>(
      create: (context) => instance<OnboardingCubit>(),
    ),
    BlocProvider<DashboardCubit>(
      create: (context) => instance<DashboardCubit>(),
    ),
  ];
}
