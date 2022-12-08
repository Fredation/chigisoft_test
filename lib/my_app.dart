import 'package:chigisoft_test/core/abstractions/router_module.dart';
import 'package:chigisoft_test/core/model/build_config.dart';
import 'package:chigisoft_test/cubit_states.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  final List<RouterModule> routerModule;
  final BuildConfig buildConfig;
  final GetIt instance;
  final GlobalKey<NavigatorState> navigatorKey;

  const MyApp(
      {Key? key,
      required this.routerModule,
      required this.buildConfig,
      required this.instance,
      required this.navigatorKey})
      : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MultiBlocProvider(
        providers: getProviders(widget.instance),
        child: OverlaySupport.global(
          child: MaterialApp(
            title: widget.buildConfig.appName,
            navigatorKey: widget.navigatorKey,
            // debugShowMaterialGrid: true,
            onGenerateRoute: (settings) => generateRoute(settings),
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            initialRoute: '/',
          ),
        ),
      ),
    );
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    late MaterialPageRoute<dynamic> route;
    for (var element in widget.routerModule) {
      element.getRoutes(settings).forEach((key, page) {
        if (key == settings.name) {
          route = page;
        }
      });
    }
    return route;
  }
}
