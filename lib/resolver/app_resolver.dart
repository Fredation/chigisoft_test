
import 'package:chigisoft_test/core/abstractions/feature_resolver.dart';
import 'package:chigisoft_test/core/abstractions/injection_module.dart';
import 'package:chigisoft_test/core/abstractions/router_module.dart';
import 'package:chigisoft_test/router/app_router.dart';

import 'app_injection_module.dart';

class AppResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => AppInjectionModule();

  @override
  RouterModule? get routerModule => AppRouteModule();
}
