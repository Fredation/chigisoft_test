import 'package:flutter/material.dart';

class SizeConfig {
  static late BuildContext appContext;
  static late MediaQueryData _mediaQueryData;
  static late double? screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    appContext = context;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }

  static double height(double height) {
    double screenHeight = _mediaQueryData.size.height / (896 / height);
    return screenHeight;
  }

  static double width(double width) {
    double screenWidth = _mediaQueryData.size.width / (414 / width);
    return screenWidth;
  }

  static double textSize(double textSize) {
    double screenWidth = _mediaQueryData.size.width / (414 / textSize);
    return screenWidth;
  }
}
