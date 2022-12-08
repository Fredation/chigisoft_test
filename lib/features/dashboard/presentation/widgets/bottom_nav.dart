import 'package:flutter/material.dart';

class BottomNavigationContainer extends StatelessWidget {
  const BottomNavigationContainer({
    Key? key,
    required this.navColor,
    required this.navChild,
  }) : super(key: key);
  final Color navColor;
  final Widget navChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: navColor,
      child: navChild,
    );
  }
}
