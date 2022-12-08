import 'package:chigisoft_test/core/model/build_config.dart';
import 'package:flutter/foundation.dart';

import 'app_start.dart';

void main() {
  if (kReleaseMode) {
    ProductionApp().startApp();
  } else {
    StagingApp().startApp();
  }
}

class ProductionApp extends AppStart {
  ProductionApp()
      : super(ProductionBuildConfig(
          baseUrl: "https://dummyjson.com/",
          appName: "Chigisoft Test",
        ));
}

class ProductionBuildConfig extends BuildConfig {
  ProductionBuildConfig({required String baseUrl, required String appName})
      : super(
          baseUrl: baseUrl,
          appName: appName,
        );
}

class StagingApp extends AppStart {
  StagingApp()
      : super(StagingBuildConfig(
          baseUrl: "https://dummyjson.com/",
          appName: "Chigisoft Test Staging",
        ));
}

class StagingBuildConfig extends BuildConfig {
  StagingBuildConfig({required String baseUrl, required String appName})
      : super(
          baseUrl: baseUrl,
          appName: appName,
        );
}
