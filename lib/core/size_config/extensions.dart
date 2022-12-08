import 'config.dart';

// Extensions to easily reach the size configuration class
extension SizeExtension on num {
  double get height => SizeConfig.height(toDouble());

  double get width => SizeConfig.width(toDouble());

  num get text => SizeConfig.textSize(toDouble());
}
