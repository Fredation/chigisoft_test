import 'package:chigisoft_test/core/storage/storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AppSetUp {
  // Storage storage;

  // AppSetUp();
  Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  Future initStorage(Storage storage) async {
    await storage.initStorage();
  }
}
