import 'dart:async';

import 'package:chigisoft_test/core/abstractions/injection_module.dart';
import 'package:chigisoft_test/core/abstractions/router_module.dart';
import 'package:chigisoft_test/core/model/build_config.dart';
import 'package:chigisoft_test/my_app.dart';
import 'package:chigisoft_test/resolver/app_resolver.dart';
import 'package:flutter/material.dart';

import 'app_injection_component.dart';
import 'app_set_up.dart';

abstract class AppStart {
  final BuildConfig buildConfig;

  AppStart(this.buildConfig);

  Future<void> startApp() async {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    final routerModule = <RouterModule>[];
    final injectionModule = <InjectionModule>[];

    if (AppResolver().routerModule != null) {
      routerModule.add(AppResolver().routerModule!);
    }
    if (AppResolver().injectionModule != null) {
      injectionModule.add(AppResolver().injectionModule!);
    }

    await AppSetUp().init();

    final injector = await AppInjectionComponent.instance
        .registerModules(modules: injectionModule, config: buildConfig);

    await AppSetUp().initStorage(injector.get());

    await runZonedGuarded<Future<void>>(() async {
      runApp(
        MyApp(
          routerModule: routerModule,
          buildConfig: buildConfig,
          instance: injector,
          navigatorKey: navigatorKey,
        ),
      );
    }, (onError, stackTrace) {});
  }
}
