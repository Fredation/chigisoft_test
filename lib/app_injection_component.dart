import 'package:chigisoft_test/core/abstractions/injection_module.dart';
import 'package:get_it/get_it.dart';

import 'core/model/build_config.dart';


class AppInjectionComponent {
  static AppInjectionComponent instance = AppInjectionComponent._();
  AppInjectionComponent._();

  Future<GetIt> registerModules({
    required List<InjectionModule> modules,
    required BuildConfig config,
  }) async {
    final I = GetIt.I;
    for (final mod in modules) {
      await mod.registerDependencies(injector: I, buildConfig: config);
    }
    return I;
  }
}
