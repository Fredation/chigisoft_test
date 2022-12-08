import 'package:chigisoft_test/core/abstractions/router_module.dart';
import 'package:chigisoft_test/core/data_utils/route_args_to_type.dart';
import 'package:chigisoft_test/features/dashboard/data/models/product_model.dart';
import 'package:chigisoft_test/features/dashboard/presentation/business_detail.dart';
import 'package:chigisoft_test/features/dashboard/presentation/businesses.dart';
import 'package:chigisoft_test/features/dashboard/presentation/home_page.dart';
import 'package:chigisoft_test/features/onboarding/presentation/login_page.dart';
import 'package:flutter/material.dart';

class AppRouteModule implements RouterModule {
  @override
  Map<String, MaterialPageRoute> getRoutes(RouteSettings settings) {
    return <String, MaterialPageRoute>{
      AppRoutes.loginPage: MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      AppRoutes.homePage: MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
      AppRoutes.businessDetailPage: MaterialPageRoute(
        builder: (context) => BusinessDetailPage(
          product: routeArgsToType<Product?>(settings.arguments),
        ),
      ),
      AppRoutes.businessPages: MaterialPageRoute(
        builder: (context) => AllBusinessesPage(),
      ),
    };
  }
}

class AppRoutes {
  static const String homePage = '/home';
  static const String loginPage = '/';
  static const String businessDetailPage = '/businessDetail';
  static const String businessPages = '/allBusinesses';
}
